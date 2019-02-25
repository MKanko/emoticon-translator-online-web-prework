require "yaml"
require 'pry'

def load_library(file_path)
  library = YAML.load_file(file_path)
  new_hash = {}
  new_array = ["get_emoticon", "get_meaning"]
  new_hash << new_array
binding.pry 
  new_hash["get_emoticon"] = {}
  new_hash["get_meaning"] = {}
 
  
  
  
  
#  new_hash = Hash.new []  
#  keys = ["get_emoticon", "get_meaning"]
#  keys.each do |key|
#    new_hash[key.length] += [key]  
  
#  new_array = ["get_emoticon", "get_meaning"]

#  new_hash << ["get_emoticon", "get_meaning"]
#binding.pry  
#  end  
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end