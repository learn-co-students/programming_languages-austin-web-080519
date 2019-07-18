require "pry"
def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language|
    language.each do |name, typehash|
      if new_hash.key?(name)
        new_hash[name][:style] << style
      else 
        stylearray = []
        datahash = typehash
        stylearray << style
        datahash[:style] = stylearray
        new_hash[name] = datahash
      end
    end
  end
  new_hash
end
