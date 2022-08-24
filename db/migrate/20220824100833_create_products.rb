class CreateProducts < ActiveRecord::Migration[7.0]
  def change

    create_table :products do |t|
    t.string :title
    t.text :description
    t.docimal :price
    t.docimal :size
    t.boolean :is_spicy
    t.boolean :is_veg
    t.string :path_to_image
    
    t.timestamps    
    end
  end
end