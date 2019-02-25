require "yaml"
require 'pry'

def load_library(file_path)
  library = YAML.load_file(file_path)
  emo_data = {}
    
#binding.pry  
  library.each do |meaning_key, emo_value|
    emo_value.each do |emo|
      
      emo_data[:get_meaning] = {emo_value[1] => meaning_key} 
      emo_data[:get_emoticon] = {emo_value[0] => emo_value[1]}

#binding.pry
    end
  end
  emo_data 
end

# New hash needs to look like => {get_meaning: {japanese_emoticon => meaning}, get_emoticon: {english_emoticon => japanese_emoticon}}


#  new_hash = Hash.new
#  new_hash << ['get_emoticon' => {}, 'get_meaning' => {}]
#binding.pry 

  
# ['get_emoticon' => {}, 'get_meaning' => {}]
  
#  new_hash = Hash.new []  
#  keys = ["get_emoticon", "get_meaning"]
#  keys.each do |key|
#    new_hash[key.length] += [key]  
  
#  new_array = ["get_emoticon", "get_meaning"]

#  new_hash << ["get_emoticon", "get_meaning"]
#binding.pry  
#  end  


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end