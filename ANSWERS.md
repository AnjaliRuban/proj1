# Q0: Why are these two errors being thrown?
  Migration Error: This error comes because some data structures that have been created haven't been added to the schema.rb file
  Uninitialized Constant: Pokemon has not been imported or created so it's trying to run a function on something it doesn't have exist
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
  The random pokemon are created from the seed file that you guys gave us. They are all listed on the seed file.
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
  It creates a button that leads to the capture method that I made.
# Question 3: What would you name your own Pokemon?
  Robert
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
  It was a path that lead to a certain method in a controller and provided a trainer id.
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
