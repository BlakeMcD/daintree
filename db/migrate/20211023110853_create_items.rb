class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :category
      t.string :sub_category
      t.integer :stock
      t.string :description
      t.string :size
      t.string :gender

      t.timestamps
    end
  end
end
