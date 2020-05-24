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
  if library.key(english_emoticon) == NIL
    puts "none"
  else 
    emotion = library.key(english_emoticon)
    japanese_emoticon = library[emotion][:english]
  end
  puts japanese_emoticon
end

def get_english_meaning(file, japanese_emoticon)
  library = load_library(file)
  library.each do |emotion, language_key|
    if language_key.value?(japanese_emoticon)
      return emotion
    end
  end
  return "Sorry, that emoticon was not found"
end
