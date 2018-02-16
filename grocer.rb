def consolidate_cart(cart)
  foods = []
  newcart = cart.copy
  cart.each do |food, details|
    details[:count] += 1 
    
    

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
