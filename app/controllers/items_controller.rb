class ItemsController < ApplicationController

    def index
        # @items = Item.all
        @stores = Store.all #for the stores filter
        
        #filter the list based on user input
        if !params[:store].blank?
            @items = Item.by_store(params[:store])
        else
            @items = Item.all
        end


    end
end
