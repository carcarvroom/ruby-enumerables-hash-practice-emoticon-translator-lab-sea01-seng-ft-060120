require 'yaml'

def load_library
  emoticon_file = YAML.load_file('emoticons.yml')
  organized_emoticon_file = {}
    emoticon_file.each do |emoticons_in_array|
      emoticons_in_array.zip('english', 'japanese').to_h
        
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