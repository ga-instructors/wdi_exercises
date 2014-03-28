#siMTAra

###Learning Objective: 
...create dynamic templates by embeding ruby code in HTML with the use of ERB templating

###Overview:
Display subway information using Sinatra and tables

###Spec:
###siMTAra (It's Sinatra + MTA.  Get it?)
- Copy siMTAra folder into your personal folder
- There should be two pages:
  - a get request to '/' should:
    - Display a table containing: 
      - The subway line's name
      - The number of stations on that line
    - The background of each table row should be appropriately colored to match the line's color
    - Each line should include a link to '/stations/:line'
  - a get request to 'stations/:line'
    - Display all of the stations of that specific line in an unordered list