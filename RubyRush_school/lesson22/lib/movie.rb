class Movie < Product

  attr_accessor :title, :director, :year, :qnt, :price

  def initialize(params)
    super

    @title = params[:title]
    @year = params[:year]
    @director = params[:director]
  end


  def self.from_file(file_path)

    if File.exists?(file_path)
      file = File.new(file_path, 'r:UTF-8')
      reader = file.readlines
      file.close
    else
      abort 'НЕ ВИЖУ ФАЙЛА BOOK'
    end

    self.new(
      title: reader[0].strip,
      director: reader[1].strip,
      year: reader[2].strip,
      price: reader[3].strip,
      qnt: reader[4].strip)

  end

  def to_s
    puts @title + ', ' + @year.to_s + ', ' + @director + ', ' + @price.to_s + ' рублей (осталось: ' + @qnt.to_s + ').'
  end

  def update(params)
    super

    @title = params[:title] if params[:title]
    @year = params[:year] if params[:year]
    @director = params[:director] if params[:director]
  end

end
