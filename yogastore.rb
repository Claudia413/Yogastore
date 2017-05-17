def print_divider
  puts "*" * 40
  puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
end

@shopping_cart = []

@products = [
  { reference_number: 1231, name: "Super Lite Mat", price: 10 },
  { reference_number: 1232, name: "Power Mat", price: 20 },
  { reference_number: 1233, name: "Block", price: 30 },
  { reference_number: 1234, name: "Meditation cushion", price: 30 },
  { reference_number: 1235, name: "The best T-shirt", price: 200 },
  { reference_number: 1236, name: "The cutest yoga pants", price: 300 },
  { reference_number: 1237, name: "Bring Yoga To Life", price: 30 },
  { reference_number: 1238, name: "Light On Yoga", price: 10 }
]

#Messages for customer

def welcome_message
  puts "Hello, Welcome to the Yogastore."
end

def items_on_sale
  puts "These are our items for sale today"
  @products.each do |product|
    puts "Reference nr.: #{product[:reference_number]}"
    puts "Product: #{product[:name]}"
    puts "Price: #{product[:price]} EUR"
    print_divider
  end
end

def select_product
  puts "Select any item to purchase by its reference_number:"
    selected_product = gets.chomp.to_i
end

def shop_or_checkout
  puts "Thank you, would you like to continue shopping(1) or proceed to check out(2)?('1' or '2')"
  shop_answer = gets.chomp
end

def add_product_to_cart(reference_number)
product = look_up_product(reference_number)
  if product != nil
    @shopping_cart << product
    puts "Awesome. '#{product[:name]}' has been added to the cart!"
  else
    puts "That is not a valid reference_number. Please try again."
    print_divider
  end
end

def look_up_product(reference_number)
  @products.each do |product|
    if product[:reference_number] == reference_number.to_i
      return product
    end
  end
end

def print_cart
  puts "These are the items in your shopping cart"
  @shopping_cart.each do |product|
    total_price = 0
    puts "Reference nr.: #{product[:reference_number]}"
    puts "Product: #{product[:name]}"
    puts "Price: #{product[:price]} EUR"
    print_divider
    total_price += product[:price]
    puts "Total amount in Euros: #{total_price}"
  end
end

#actual shop experience
welcome_message
print_progress_bar
loop do
  items_on_sale
  print_progress_bar
  reference_number = select_product
  add_product_to_cart(reference_number)
  print_cart
  # shop_or_checkout
  break
  # break unless shop_or_checkout
end
