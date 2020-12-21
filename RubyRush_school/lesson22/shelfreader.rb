require 'rexml/document'

class ShelfReader

    def initialize(products = [])
      @products = products
    end

  def self.create_obj_list(xml_path)

    products = []

    abort 'Не вижу витрины' unless File.exist?(xml_path)

    file = File.new(xml_path)

    doc = REXML::Document.new(file)

    doc.elements.each('shelf/books/book') do |item|
      products << Book.new(
      qnt: item.attributes['qnt'],
      price: item.attributes['price'],
      title: item.text.strip,
      genre: item.attributes['genre'],
      author: item.attributes['author'])

    end

    doc.elements.each('shelf/movies/movie') do |item|
      products << Movie.new(
      qnt: item.attributes['qnt'],
      price: item.attributes['price'],
      title: item.text.strip,
      year: item.attributes['year'],
      director: item.attributes['director'])
    end
    self.new(products)
  end

    def show
      @products
    end
  end

