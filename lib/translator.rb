require "yaml"
require 'pry'

def load_library(file_path)
  library = YAML.load_file(file_path)
  emo_data = {}
  emo_data["get_meaning"] = {}
  emo_data["get_emoticon"] = {}
  library.each do |meaning_key, emo_value|
    emo_data["get_meaning"][emo_value[1]] = meaning_key 
    emo_data["get_emoticon"][emo_value[0]] = emo_value[1]
      
#      emo_data["get_meaning"] = {emo_value[1] => meaning_key}
#      emo_data["get_emoticon"] = {emo_value[0] => emo_value[1]}
  end
  emo_data 
end

# New hash needs to look like => {get_meaning: {japanese_emoticon => meaning}, 
# get_emoticon: {english_emoticon => japanese_emoticon}}

# Big take away from the method above - lines 13-14 were my first
# attempt and they sucessfully populate the new hash with the 
# required key value pairs on the first iteration. But because
# of how the code is written - assigning (=) the populated value
# hash to emo_data["get_meaning"], That assignment will be over written
# on the next iteration and evry time through after that.
# The code on lines 10-11 is revised to allow for the key values 
# to be added to the hash on each iteration. The difference is very
# important and must understand the difference in syntax and logic! 

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

def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  library["get_emoticon"].each do |eemo_key, jemo_value|
    if emoticon == eemo_key
      jemo_value
#binding.pry
    elsif emoticon != eemo_key
      puts "Sorry, that emoticon was not found"
  
    end
  end
end

def get_english_meaning
  # code goes here
end

















