require_relative 'assignment1/string_composer'
# a = 'd4a6'
a = 'ddddaaaaaa'
puts StringComposer.new(a).decomposed


require_relative 'assignment3/product'
require_relative "assignment3/utils.rb"
require_relative "assignment4/array.rb"

include Helper
include NumericArray


products = []
vals = Helper.read_csv('assignment3/products.csv')
vals.each do |line|
  products.append(Product.new(line['id'],line[' product'],line[' price ($)']))
end
Helper.write_csv(products.sort_by(&:price),'sort_product.csv',['id',' product',' price ($)'],"\t")


puts products.select { |item| item.price >= 150}.sort_by(&:name)

items = [25.804, -80, -0.739, -92.52, -76.8, -41, 84.27, 71.9, -57, 88.8, nil, -92.3, 'hi', -56.39,-16.35, -32.65, -63, 91.8, 8.6, -67, 52, -37.0, 88.5, -56, -20, 15, -92, 6, 93, -66, 89, -40, -96.48, -91, -65.93, 70.55, -84.9, -8.02, 57.9, 71.8]

# 1) make sure the array has only numbers
items = NumericArray.array_validation(items)
NumericArray.print_array(items)
puts "Max Number #{items.max()}"
puts "Min Number #{items.min()}"
puts "Avg #{items.sum(0.0) / items.size}"

puts items.sort.reverse
puts NumericArray.convert_float(items)