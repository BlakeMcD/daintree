class Item < ApplicationRecord
    belongs_to :store, optional:true
    belongs_to :user, optional:true

    def self.by_store(store_id)
        where(store: store_id)
    end
end
