require 'json'

puts "what is the path of your exercises directory?:"
target_directory = gets.chomp
id = Time.now.to_i
puts "enter the title: "
title = gets.chomp
puts "enter the language: "
language = gets.chomp
puts "enter the author(s) (i.e. firstname_lastname) separated by spaces: "
authors = gets.chomp.split(" ")
puts "enter tags (separated by spaces): "
tags = gets.chomp.split(" ")

if Dir[target_directory] == []
  Dir.mkdir(target_directory)
end

target_path = "#{target_directory}#{target_directory[-1] != '/' ? '/' : ''}"

exercise_directory = "./#{target_path}/ex_#{id}"

# make EX directory 
Dir.mkdir(exercise_directory)



new_meta_file_path = [ 
    exercise_directory,
    "/meta.json"
    ].join("")

f = File.open(new_meta_file_path, "w")

meta_hash = {
  id: id,
  title: title,
  language: language,
  authors: authors,
  tags: tags
}

f.puts JSON.pretty_generate(meta_hash)

f.close

