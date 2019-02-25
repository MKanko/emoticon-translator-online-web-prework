require "yaml"
require 'pry'

def load_library(file_path)
  library = YAML.load_file(file_path)
  emo_data = {}
  emo_data["get_meaning"] = {}
  emo_data["get_emoticon"] = {}
    
#binding.pry  
  library.each do |meaning_key, emo_value|
#  binding.pry
    
      
      emo_data["get_meaning"][emo_value[1]] = meaning_key 
      emo_data["get_emoticon"][emo_value[0]] = emo_value[1]
      
      emo_data["get_meaning"] = {emo_value[1] => meaning_key}
#binding.pry
    
  end
#  binding.pry
  emo_data 
end

# New hash needs to look like => {get_meaning: {japanese_emoticon => meaning}, get_emoticon: {english_emoticon => japanese_emoticon}}

#load_library
# accepts one argument, the file path
# return value
#   returns a hash
#   has two keys, 'get_meaning' and 'get_emoticon' (FAILED - 1)
#   the keys 'get_meaning' and 'get_emoticon' point to inner hashes (FAILED - 2)
#   the keys inside the 'get_meaning' hash are the Japanese emoticons (FAILED -3)
#   the emoticon keys inside the 'get_meaning' hash point to their meanings (FAILED - 4)
#   the keys inside the 'get_emoticon' hash are the English emoticons (FAILED -5)
#   the emoticon keys inside the 'get_emoticon' hash point to their Japanese equivalents (FAILED - 6)


#{"angel"=>["O:)", "☜(⌒▽⌒)☞"],
#"angry"=>[">:(", "ヽ(ｏ`皿′ｏ)ﾉ"],
#"bored"=>[":O", "(ΘεΘ;)"],
#"confused"=>["%)", "(゜.゜)"],
#"embarrased"=>[":$", "(#^.^#)"],
#"fish"=>["><>", ">゜))))彡"],
#"glasses"=>["8D", "(^0_0^)"],
#"grinning"=>["=D", "(￣ー￣)"],
#"happy"=>[":)", "(＾ｖ＾)"],
#"kiss"=>[":*", "(*^3^)/~☆"],
#"sad"=>[":'(", "(Ｔ▽Ｔ)"],
#"surprised"=>[":o", "o_O"],
#"wink"=>[";)", "(^_-)"]}


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