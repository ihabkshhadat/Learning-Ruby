require 'csv'
require_relative 'product'
module Helper
  def read_csv(path)
    vals = CSV.parse(File.read(path), headers: true)
    return vals
  end

  def write_csv(data, name, headers, col_sep = "\t")
    CSV.open(name,'wb', col_sep: col_sep) do |file|
      file << headers
      data.each do |product|
        file << product.to_json.values
      end
    end
  end
end