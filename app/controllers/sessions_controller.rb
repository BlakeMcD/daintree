class SessionsController < ApplicationController

    # User Session
    def new
    end

    def create 
        # raise params.inspect
        session[:username] = params[:username]
        redirect_to "/"
    end

    def destroy
        session.delete :username
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