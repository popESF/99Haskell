-- Question 1 --
-- find the last element of a list

myLast :: [a] -> a              -- This is the function declaration, it says that myLast takes a list of any type and returns an element of that type
myLast [] = error "Empty list"  -- This is the base case, it says that if the list is empty, throw an error
myLast [x] = x                  -- This is the recursive case, it says that if the list has only one element, return that element
myLast (x:xs) = myLast xs       -- This is the recursive case, it says that if the list has more than one element, call myLast on the tail of the list

myLast = foldr1 (curry snd)     -- This is the same as the above, but using foldr1 and a lambda function, this is a monoid
myLast = head . reverse         -- This is a one-liner that does the same thing as the above function

-- Question 2 --
-- Find the last but one element of a list
myButLast :: [a] -> a                     -- Function declaration
myButLast [] = error "Empty list"         -- Base case
myButLast [x] = error "List too short"    -- Base case
myButLast [x,y] = x                       -- Recursive case, if the list has two elements, return the first
myButLast (x:xs) = myButLast xs           -- This is the recursive case, it says that if the list has more than one element, call myButLast on the tail of the list
