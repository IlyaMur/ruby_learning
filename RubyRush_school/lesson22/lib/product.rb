class Product

  def self.from_file(file_path)
     raise NotImplementedError
  end

  attr_reader :price, :amount

  def initialize(params)
    @price = params[:price]
    @qnt = params[:qnt]
  end

  def to_s

  end

  def update(params)
    @price = params[:price] if params[:price]
    @qnt = params[:qnt] if params[:qnt]
  end

end