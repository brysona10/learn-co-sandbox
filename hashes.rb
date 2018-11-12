items =  {}

items["dazzling coat"] = 15.00
items["sparkling shoes"] = 90.0
items["Seltzer water"]= 30.30
#puts items

items ["dazzling coat"] = 45.00
items ["wacky socks"] = 20.00
#puts items.values

items.each do |item, price|
  puts "Your #{item} cost $#{price}."
end
  
