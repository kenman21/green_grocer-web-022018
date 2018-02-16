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
  couponfoods = []
  cart.each do |food, info|
    coupons.each do |coupon|
      if food == coupon[:item] 
          newcart["#{food} W/COUPON"] = {:price => coupon[:cost], :clearance => cart[food][:clearance], :count => coupon[:num]/coupon[:num]}
          newcart[food][:count] = newcart[food][:count] - coupon[:num]
        
      end
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
