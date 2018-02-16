def consolidate_cart(cart)
  newcart = {}
  foodlist = []
  cart.each do |foods|
    foods.each do |food, details|
      foodlist<< food
      newcart[food] = details
      details[:count] = foodlist.count(food)
      
    end 
  end 
  newcart
end 

  
    
    

end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
