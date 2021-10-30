class ItemsController < ApplicationController

    def index
        # @items = Item.all
        @stores = Store.all #for the stores filter
        
        #filter the list based on user input
        if !params[:store].blank?
            @items = Item.by_store(params[:store])
        elsif !params[:category].blank?
            if params[:category] == "Jeans"
                @items = Item.jeans
            elsif params[:category] == "Jackets"
                @items = Item.jacket
            else params[:category] == "Shirts"
                @items = Item.shirt
            end
        else
            @items = Item.all
        end


    end
end
