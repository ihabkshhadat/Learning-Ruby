# require_relative 'assignment1/string_composer'
# a = 'd4a6'
# a = 'ddddaaaaaa'
# puts StringComposer.new(a).decomposed


require_relative 'assignment3/product'
require_relative "assignment3/utils.rb"

include Helper
products = []
vals = Helper.read_csv('assignment3/products.csv')
vals.each do |line|
  products.append(Product.new(line['id'],line[' product'],line[' price ($)']))
end
Helper.write_csv(products.sort_by(&:price),'sort_product.csv',['id',' product',' price ($)'],"\t")


puts products.select { |item| item.price >= 150}.sort_by(&:name)