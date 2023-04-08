-- Question 1 --
-- find the last element of a list

myLast :: [a] -> a -- this is a type signature, it tells the compiler what the function does, this function takes a list of any type and returns an element of that type
myLast [] = error "Empty list" -- this is a pattern match, it tells the compiler what to do when the function is called with an empty list
myLast [x] = x -- this is a pattern match, it tells the compiler what to do when the function is called with a list of length 1
myLast (x:xs) = myLast xs -- this matches any list of length greater than 1, and calls the function recursively on the tail of the list

-- Question 2 --
-- Find the last but one element of a list
myButLast :: [a] -> a -- myButLast [1,2,3,4] = 3
myButLast [] = error "Empty list" -- myButLast [1] = error
myButLast [x] = error "List too short" -- myButLast [1,2] = 1
myButLast [x,y] = x -- myButLast [1,2,3] = 2
myButLast (x:xs) = myButLast xs
