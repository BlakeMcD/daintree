class StoresController < ApplicationController
    # before_action :require_login, :except => [:index, :show]


    def index
        @stores = Store.all
    end

    def show
        @store = Store.find(params[:id])
    end

    def new
        @store = Store.new
    end

    def create
        @store = Store.new(store_params)
        @store.save
        redirect_to stores_path
    end

    def edit
        @store = Store.find(params[:id])
    end

    def update
        @store = Store.find(params[:id])
        @store.update(store_params)
        redirect_to stores_path
    end

    # def require_login
    #     return_head(:forbidden) unless session.include? :store_name
    # end

    private

    def store_params
        params.require(:store).permit(:name, :description)
    end


end
