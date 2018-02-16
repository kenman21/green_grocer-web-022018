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
      if food == coupon[:item] #if i have a coupon for one of my foods
        if couponfoods.include?(food) && newcart[food][:count] > coupon[:num] #condition for multiple of the same coupon
          newcart["#{food} W/COUPON"][:count] += 1 
          newcart[food][:count] = newcart[food][:count] - coupon[:num]
        elsif newcart[food][:count] > coupon[:num] #otherwise just apply coupon, add coupon food to my list of coupon foods
          couponfoods << food
          newcart["#{food} W/COUPON"] = {:price => coupon[:cost], :clearance => cart[food][:clearance], :count => coupon[:num]/coupon[:num]}
          newcart[food][:count] = newcart[food][:count] - coupon[:num]
        end 
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
