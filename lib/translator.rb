require 'yaml'
require 'pry'

def load_library(file)
  data = YAML.load_file(file)
  result = {}
    data.each_pair do |key, value|
      result[key] = {:english => value[0], :japanese => value[1]}
    end
   #binding.pry
  return result
end

def get_english_meaning(file, japanese_emoticon)
  result = load_library(file)
  result.each_pair do |mood, language|
    if result[mood][:japanese] == japanese_emoticon
      return mood
    else 
      return "Sorry, that emoticon was not found"
    end
  end
  #binding.pry
end