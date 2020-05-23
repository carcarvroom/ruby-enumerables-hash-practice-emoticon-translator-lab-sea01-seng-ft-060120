require 'yaml'

def load_library(file)
  emoticon_file = YAML.load_file(file)
  organized_emoticon_file = {}
    emoticon_file.each do |emotion, emoticons_in_array|
      organized_emoticon_file[emotion] = [:english, :japanese].zip(emoticons_in_array).to_h
    end
  organized_emoticon_file
end

def get_japanese_emoticon(file, english_emoticon)
  library = load_library(file)
  library.key(english_emoticon)
end

def get_english_meaning(file, japanese_emoticon)
  library = load_library(file)
  if library.key(japanese_emoticon) 
end
