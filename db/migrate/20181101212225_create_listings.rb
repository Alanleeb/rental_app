class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :category
      t.string :subcategory
      t.string :title
      t.integer :price
      t.string :listingType
      t.string :city
      t.string :state
      t.integer :zip
      t.text :description
      t.string :sellerType
      t.string :sellerName
      t.string :sellerPhone
      t.string :sellerEmail
      t.string :Photos
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
