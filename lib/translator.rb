require 'yaml'

def load_library(file)
  emoticon_file = YAML.load_file(file)
  organized_emoticon_file = {}
    emoticon_file.each do |emotion, emoticons_in_array|
      emotion => {}
      ['english', 'japanese'].zip(emoticons_in_array).to_h
        
      end
    end
  organized_emoticon_file
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end