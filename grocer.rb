def consolidate_cart(cart)
  newcart = {}
  foodlist = []
  cart.each do |foods|
    foods.each do |food, details|
      foodlist << food
      newcart[food] = details
      details[:count] = foodlist.count(food)
    end 
  end 
  newcart
end 

def apply_coupons(cart, coupons)
  newcart = cart.dup
  cart.each do |food, info|
    if food == coupons[:item] 
      newcart["#{food} W/COUPON"] = {:price => coupons[:cost], :clearance => 'true', :count => cart[food][:count]/coupons[:num]}
      newcart[food][:count] = newcart[food][:count]%2
    end 
  end
  newcart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
