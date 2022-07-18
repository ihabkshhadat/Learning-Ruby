class Product
  attr_reader :id, :price, :name
  def initialize(id,name,price)
    @id = id
    @name = name
    @price = price.to_f
  end
  
  def to_s
    return "#{@id} #{@name} #{@price}"
  end

end

