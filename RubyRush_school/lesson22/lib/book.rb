class Book < Product


  attr_accessor :title, :author, :genre, :qnt, :price

  def initialize(params)
    super

    @title = params[:title]
    @genre = params[:genre]
    @author = params[:author]
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
      genre: reader[1].strip,
      author: reader[2].strip,
      price: reader[3].strip,
      qnt: reader[4].strip)

  end

  def to_s
    puts @title + ', ' + @genre + ', ' + @author + ', ' + @price.to_s + ' рублей (осталось: ' + @qnt.to_s + ').'
  end


end