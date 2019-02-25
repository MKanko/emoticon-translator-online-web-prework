require "yaml"
require 'pry'

def load_library(file_path)
  library = YAML.load_file(file_path)
  
  new_hash = {}
#  new_array = ["get_emoticon", "get_meaning"]

  new_hash << ["get_emoticon", "get_meaning"]
binding.pry  
  
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end