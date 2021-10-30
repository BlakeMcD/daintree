class Item < ApplicationRecord
    belongs_to :store, optional:true
    belongs_to :user, optional:true

    def self.by_store(store_id)
        where(store: store_id, sub_category: "jeans") 
    end

    def self.jeans
        where(sub_category: "jeans")
    end

    def self.shirt
        where(sub_category: "shirt")
    end

    def self.jacket
        where(sub_category: "jacket")
    end
end
