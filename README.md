# Sum of Fibonacci Squares

This is my solution to a challenge proposed as part of an interview with Equal Opportunity Schools

# The Challenge

"As a user, I want to be able to see the sum of the squares of the Fibonacci numbers of the lengths of all User names for users that have a 'd' (or 'D') in their names so that I can see a large number."

###Steps:
* User clicks button.
* Request is sent out asynchronously.
* Check the database and find all Users with a case insensitive 'd' in their name.
* Grab the length of their name ("ABCdefg hIj" would be 11). Ensure that there are no repeats (if two users have the same length, it should only be found once).
* Find the Fibonacci number with that length as 'n' in the function.
* Square it and then add that result to a grand total to be returned.
* Write the grand total result into the database as a Result (it has a Sum attribute).
* Populate the result's sum via Ajax into a new div (no hard page refreshes).

##### The expected display answer to the algorithm should be 38580247878
