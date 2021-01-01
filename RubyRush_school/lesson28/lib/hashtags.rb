class Hashtags

  def self.hashtags (string)

    string.scan(/#[[:word:]-]+/)

  end

end
