class SessionsController < ApplicationController

    def new
        redirect_to '/store/login'
    end

    def create
        if !params[:name] || params[:name].empty?
            redirect_to '/store/login'
        else
            session[:name] = params[:name]
            redirect_to '/stores'
        end
    end
end