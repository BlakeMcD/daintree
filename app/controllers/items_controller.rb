class ItemsController < ApplicationController

    def index

        # @items = Item.all
        @stores = Store.all #for the stores filter
        
        pst = params[:store]
        pc = params[:category]
        psi = params[:size]
        pg = params[:gender]

        #The mega-if statement...god forgive me
        if !pst.blank? && !pc.blank? && !psi.blank? && !pg.blank?
            @items = Item.store_is_selected(pst).sub_category_is_selected(pc).size_is_selected(psi).gender_is_selected(pg)
        elsif !pst.blank? && !pc.blank? && !psi.blank?
            @items = Item.store_is_selected(pst).sub_category_is_selected(pc).size_is_selected(psi)
        elsif !pst.blank? && !psi.blank? && !pg.blank?
            @items = Item.store_is_selected(pst).size_is_selected(psi).gender_is_selected(pg)
        elsif !pst.blank? && !pc.blank? && !pg.blank?
            @items = Item.store_is_selected(pst).sub_category_is_selected(pc).gender_is_selected(pg)
        elsif !pc.blank? && !psi.blank? && !pg.blank?
            @items = Item.sub_category_is_selected(pc).size_is_selected(psi).gender_is_selected(pg)
        elsif !pst.blank? && !pc.blank?
            @items = Item.store_is_selected(pst).sub_category_is_selected(pc)
        elsif !pst.blank? && !psi.blank?
            @items = Item.store_is_selected(pst).size_is_selected(psi)
        elsif !pst.blank? && !pg.blank?
            @items = Item.store_is_selected(pst).gender_is_selected(pg)
        elsif !pc.blank? && !psi.blank? 
            @items = Item.sub_category_is_selected(pc).size_is_selected(psi)
        elsif !pc.blank? && !pg.blank?
            @items = Item.sub_category_is_selected(pc).gender_is_selected(pg)
        elsif !psi.blank? && !pg.blank?
            @items = Item.size_is_selected(psi).gender_is_selected(pg)
        elsif !pst.blank?
            @items = Item.store_is_selected(pst)
        elsif !pc.blank?
            @items = Item.sub_category_is_selected(pc)
        elsif !psi.blank?
            @items = Item.size_is_selected(psi)
        elsif !pg.blank?
            @items = Item.size_is_selected(pg)
        else
            @items = Item.all
        end
    end

    def add_to_cart
        @item = Item.find(params[:id])  #get the item from the path

        #retrieve the cart, or if one doesn't exist, create one
        cart = session[:cart] ||= []
        cart << @item.id

        #Save the cart in the session
        session[:cart] = cart

    end
end
