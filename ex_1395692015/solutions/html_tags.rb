def html_tags(string)
  string.scan(/<(\w+)/).flatten.uniq
end