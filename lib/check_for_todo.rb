
# As a user
# So that I can keep track of my tasks
# I want to check if a text includes the string #TODO.

# is_there_todo = contains_todo?(text)
# contains_todo?(text): to be a string such as "I need to go food shopping #TODO"
# is_there_todo: to be a boolean - true or false

# This method returns a boolean only and has no side effects

def contains_todo?(text)
    fail "All tasks need to be in a string format" unless text.is_a?(String)
    if text.include?("#TODO")
        return true
    else return false
    end
end