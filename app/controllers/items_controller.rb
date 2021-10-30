class ItemsController < ApplicationController

    def index
        # @items = Item.all
        @stores = Store.all #for the stores filter
        
        pst = params[:store]
        pc = params[:category]
        psi = params[:size]
        pg = params[:gender]

        #The mega-if statement...god forgive me
        if !pst.empty? && !pc.empty? && !psi.empty? && !pg.empty?
            @items = Item.store_is_selected(pst).sub_category_is_selected(pc).size_is_selected(psi).gender_is_selected(pg)
        elsif !pst.empty? && !pc.empty? && !psi.empty?
            @items = Item.store_is_selected(pst).sub_category_is_selected(pc).size_is_selected(psi)
        elsif !pst.empty? && !psi.empty? && !pg.empty?
            @items = Item.store_is_selected(pst).size_is_selected(psi).gender_is_selected(pg)
        elsif !pst.empty? && !pc.empty? && !pg.empty?
            @items = Item.store_is_selected(pst).sub_category_is_selected(pc).gender_is_selected(pg)
        elsif !pc.empty? && !psi.empty? && !pg.empty?
            @items = Item.sub_category_is_selected(pc).size_is_selected(psi).gender_is_selected(pg)
        elsif !pst.empty? && !pc.empty?
            @items = Item.store_is_selected(pst).sub_category_is_selected(pc)
        elsif !pst.empty? && !psi.empty?
            @items = Item.store_is_selected(pst).size_is_selected(psi)
        elsif !pst.empty? && !pg.empty?
            @items = Item.store_is_selected(pst).gender_is_selected(pg)
        elsif !pc.empty? && !psi.empty? 
            @items = Item.sub_category_is_selected(pc).size_is_selected(psi)
        elsif !pc.empty? && !pg.empty?
            @items = Item.sub_category_is_selected(pc).gender_is_selected(pg)
        elsif !psi.empty? && !pg.empty?
            @items = Item.size_is_selected(psi).gender_is_selected(pg)
        elsif !pst.empty?
            @items = Item.store_is_selected(pst)
        elsif !pc.empty?
            @items = Item.sub_category_is_selected(pc)
        elsif !psi.empty?
            @items = Item.size_is_selected(psi)
        elsif !pg.empty?
            @items = Item.size_is_selected(pg)
        else
            @items = Item.all
        end

        # if !params[:store].nil?
        #     @@all_items = Item.store_is_selected(ps)
        # end

        # if !params[:category].blank?
        #     @@all_items = Item.sub_category_is_selected(params[:category])
        # end

        # if !params[:size].blank?
        #     @@all_items = Item.size_is_selected(params[:size])
        # end

        # if !params[:gender].blank?
        #     @@all_items = Item.gender_is_selected(params[:gender])
        # end







        # #filter the list based on user input
        # if !params[:store].blank?
        #     # @items = Item.by_store(params[:store])
        #     @items = Item.store_is_selected(params[:store])
        # elsif !params[:category].blank?

        #     @items = Item.sub_category_is_selected(params[:category])
        #     # if params[:category] == "Jeans"
        #     #     @items = Item.jeans
        #     # elsif params[:category] == "Jackets"
        #     #     @items = Item.jacket
        #     # else params[:category] == "Shirts"
        #     #     @items = Item.shirt
        #     # end
        # elsif !params[:size].blank?
        #     @items = Item.size_is_selected(params[:size])
        # elsif !params[:gender].blank?
        #     @items = Item.gender_is_selected(params[:gender])
        # else
        #     @items = Item.all
        # end


    end
end
