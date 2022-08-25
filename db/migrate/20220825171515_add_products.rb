class AddProducts < ActiveRecord::Migration[7.0]
  def change
    Product.create :title => 'Hawaiian', :description => 'This is Hawaiian pizza', :price => 350, :size => 30, :is_spicy => false, :is_baset_offer => false, :path_to_image => '/images/123.jpg'

    Product.create :title => 'Pepperoni', :description => 'Nice Pepperoni pizza', :price => 450, :size => 30, :is_spicy => false, :is_baset_offer => false, :path_to_image => '/images/p_O.jpg'

    Product.create :title => 'Vegetarian', :description => 'Amazing Vegetarian pizza', :price => 400, :size => 30, :is_spicy => false, :is_baset_offer => false, :path_to_image => '/images/picca_pepperoni_s_mocarelloi-745008.jpg'
  end
end
