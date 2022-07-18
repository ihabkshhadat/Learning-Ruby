require 'csv'
require_relative 'product'
module Helper
  def read_csv(path)
    vals = CSV.parse(File.read(path), headers: true)
    return vals
  end

  def write_csv(data,name,headers,delimited="\t")
    File.open(name,'w'){ |file| file.write("#{headers.join(delimited)}\n")
      data.each do |product|
      file.write("#{product.id}#{delimited}#{product.name}#{delimited}#{product.price}\n")
    end
    }
  end
end