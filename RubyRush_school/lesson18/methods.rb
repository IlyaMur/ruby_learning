require 'net/http'

def reg_exp

  arr_reg = ['мыс', 'кыш', 'шум', 'ком', 'гум']
  pattern = arr_reg.sample
  letter = pattern.split('').sample

  return pattern.gsub(letter, '.')
end

def word_exists?(word)
 url = "https://ru.wiktionary.org/wiki/#{word}"
  wiktionary_page = Net::HTTP.get(URI.parse(URI.encode(url))).force_encoding('UTF-8')
  if wiktionary_page =~ /текст на данной странице отсутствует/
    return false
  else
    return true
  end
end