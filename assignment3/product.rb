class Product
  attr_reader :id, :price, :name
  def initialize(id,name,price)
    @id = id
    @name = name
    @price = price.to_f
  end
  
  def to_s
    "#{@id} #{@name} #{@price}"
  end

  def to_json
    {'id'=>@id, 'name'=>@name, 'price'=> @price}
  end

end

