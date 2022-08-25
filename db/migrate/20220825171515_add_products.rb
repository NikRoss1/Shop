class AddProducts < ActiveRecord::Migration[7.0]
  def change
    Product.create ({
      :title => 'Hawaiian', 
      :description => 'This is Hawaiian pizza', 
      :price => 350, 
      :size => 30, 
      :is_spicy => false, 
      :is_baset_offer => false, 
      :path_to_image => '/images/1.jpg'
    })

    Product.create ({
      :title => 'Pepperoni', 
      :description => 'Nice Pepperoni pizza', 
      :price => 450, 
      :size => 30, 
      :is_spicy => false, 
      :is_baset_offer => false, 
      :path_to_image => '/images/2.jpg'
    })

    Product.create ({
    :title => 'Vegetarian', 
    :description => 'Amazing Vegetarian pizza', 
    :price => 400, 
    :size => 30, 
    :is_spicy => false, 
    :is_baset_offer => false, 
    :path_to_image => '/images/3.jpg'
  })
    
  end
end
