class SessionsController < ApplicationController

    # User Session
    def new
    end

    def create 
        # raise params.inspect
        session[:admin_name] = params[:admin_name]
    end

    def destroy
        session.delete :admin_name
        redirect_to items_path  #gotta fix this. 
      end


    #STORE SESSIONS
    # def new
    #     redirect_to '/store/login'
    # end

    # def create
    #     if !params[:name] || params[:name].empty?
    #         redirect_to '/store/login'
    #     else
    #         session[:name] = params[:name]
    #         redirect_to '/stores'
    #     end
    # end
end