class ProductCollection

  PRODUCT_TYPES = {
    movie: {dir: 'movies', class: Movie},
    book: {dir: 'books', class: Book}
    }

  def initialize(products = [])
      @products = products
  end

  def self.from_dir(dir_path)

    products = []

    PRODUCT_TYPES.each do |type, hash|

      product_dir = hash[:dir]
      product_class = hash[:class]

      Dir[dir_path + '/' + product_dir + '/*.txt'].each do |path|
        products << product_class.from_file(path)
      end
    end
    self.new(products)
  end

  def to_a
     @products
  end

   def sort!(params)
    case params[:by]
    when :title
      @products.sort_by! { |product| product.to_s }
    when :price
      @products.sort_by! { |product| product.price }
    when :amount
      @products.sort_by! { |product| product.amount }
    end
    @products.reverse! if params[:order] == :asc
    self
  end
end




abort 'Не вижу витрины' unless File.exist?(file_name)

file = File.new(file_name)

doc = REXML::Document.new(file)

doc.elements.each('shelf/books/book') do |item|
  Book.new(
  qnt: item.attributes['qnt'],
  price: item.attributes['price'],
  title: item.text.strip,
  genre: item.attributes['genre'],
  author: item.attributes['author'])
end

doc.elements.each('shelf/movies/movie') do |item|
  Movie.new(
  qnt: item.attributes['qnt'],
  price: item.attributes['price'],
  title: item.text.strip,
  year: item.attributes['year'],
  director: item.attributes['director'])
end


ObjectSpace.each_object(Book) {|i| puts i}
ObjectSpace.each_object(Movie) {|i| puts i}

