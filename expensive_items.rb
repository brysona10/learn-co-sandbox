def expensive_cart
  cart_item_prices = [12.43, 19.99, 3.49, 75.00]
  expensive_items = []

  cart_item_prices.each do |price|
   if price > 15.00
      expensive_items<< price
    end 
  end
  expensive_items
end
 expensive_cart



def add_sales_tax
  cart_prices_with_tax = []
  cart_item_prices = [12.43, 19.99, 3.49, 75.00]
  
  
  cart_item_prices.each do |price|
    price_with_tax = price + price*0.07
    cart_prices_with_tax << price_with_tax.round(2)
  end
  cart_prices_with_tax
end
  x=add_sales_tax 
  puts x 
  
def total_price
  add_sales_tax = [13.30, 21.39, 3.73, 80.25]
  sum = 0
  add_sales_tax.each do |price|
    sum = sum + price
  end
  sum
end
  puts total_price



  