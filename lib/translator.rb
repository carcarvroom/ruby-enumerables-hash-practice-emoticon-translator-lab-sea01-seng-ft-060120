require 'yaml'
require 'pry'

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
  if library.key(japanese_emoticon) == NIL
    puts "none"
  else 
    emotion = library.key(japanese_emoticon)
    english_meaning = library[emotion][:english]
  end
  puts english_meaning
end

def get_english_meaning(file, japanese_emoticon)
  library = load_library(file)
  if library.value?(japanese_emoticon) == FALSE
    puts "Sorry, that emoticon was not found"
  else
    library.each do |emotion|
      english_meaning = emotion.key(japanese_emoticon) 
      puts english_meaning
    end
  end
  binding.pry
end