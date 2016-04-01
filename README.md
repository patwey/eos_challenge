#Rails Challenge

"As a user, I want to be able to see the sum of the squares of the Fibonacci numbers of the lengths of all User names for users that have a lowercase 'd' in their names so that I can see a large number."

Steps:
  1 - User clicks button.
  2 - Request is sent out asynchronously.
  3 - Check the database and find all Users with a lowercase 'd' in their name.
  4a - Grab the length of their name ("ABCdefg" would be 7). Ensure that there are no repeats (if two users have the same length, it should only be found once).
  4b - Find the Fibonacci number with that length as 'n' in the function.
  4c - Square it and then add that result to a grand total to be returned.
  5 - Write the grand total result into the database as a Result (it has a Sum attribute).
  6 - Populate the result's sum via Ajax into a new div (no hard page refreshes).
