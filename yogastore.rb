def print_divider
  puts "*" * 40
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

def shop_or_checkout
  puts "Thank you, would you like to continue shopping(1) or proceed to check out(2)?('1' or '2')"
  shop_answer = gets.chomp
end

#actual shop experience
welcome_message
items_on_sale
