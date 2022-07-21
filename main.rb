require_relative 'assignment1/string_composer'
require_relative 'assignment3/product'
require_relative "assignment3/utils.rb"
require_relative "assignment4/array.rb"


include Helper
include NumericArray


def test_assignment_1
  value = 'dddddddddddddddddddddddddddddddddddddddddddaaaaaa' 
  puts StringComposer.new(value).composed
end

def test_assignment_2
  value = 'd43a6' 
  puts StringComposer.new(value).decomposed
end

def test_assignment_3
  products = []
  vals = Helper.read_csv('assignment3/products.csv')
  vals.each do |line|
    products.append(Product.new(line['id'],line[' product'],line[' price ($)']))
  end
  Helper.write_csv(products.sort_by(&:price),'sort_product.csv',['id',' product',' price ($)'],"\t")
  puts products.select { |item| item.price >= 150}.sort_by(&:name)
end

def test_assignment_4
  items = [25.804, -80, -0.739, -92.52, -76.8, -41, 84.27, 71.9, -57, 88.8, nil, -92.3, 'hi', -56.39,-16.35, -32.65, -63, 91.8, 8.6, -67, 52, -37.0, 88.5, -56, -20, 15, -92, 6, 93, -66, 89, -40, -96.48, -91, -65.93, 70.55, -84.9, -8.02, 57.9, 71.8]
  items = NumericArray.array_validation(items)
  NumericArray.print_array(items)
  puts "Max Number #{items.max}"
  puts "Min Number #{items.min}"
  puts "Avg #{items.sum / items.size}"
  puts items.sort.reverse
  puts NumericArray.convert_float(items)
end
def test_assignment_4_p2

  str = "hello my name is heba , i have 25 years, graduate With good GPA 90 , and I am Working on a New task"
  str = str.gsub(/\d+/,'').downcase
  tokens = str.split(' ')
  puts str.gsub!(/(,\s?)([a-z])/i){$1+$2.capitalize}
  lt_two_char = tokens.reject{|word| word.length>2}
  puts lt_two_char
end

test_assignment_4_p2