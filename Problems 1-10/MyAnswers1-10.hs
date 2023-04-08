
-- Question 1 --
-- find the last element of a list
myLast :: [a] -> a              -- This is the function declaration, it says that myLast takes a list of any type and returns an element of that type
myLast [] = error "Empty list"  -- This is the base case, it says that if the list is empty, throw an error
myLast [x] = x                  -- This is the recursive case, it says that if the list has only one element, return that element
myLast (x:xs) = myLast xs       -- This is the recursive case, it says that if the list has more than one element, call myLast on the tail of the list

myLast = foldr1 (curry snd)     -- This is the same as the above, but using foldr1 and a lambda function, this is a monoid
myLast = head . reverse         -- This is a one-liner that does the same thing as the above function

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Question 2 --
-- Find the last but one element of a list
myButLast :: [a] -> a                     -- Function declaration
myButLast [] = error "Empty list"         -- Base case
myButLast [x] = error "List too short"    -- Base case
myButLast [x,y] = x                       -- Recursive case, if the list has two elements, return the first
myButLast (x:xs) = myButLast xs           -- This is the recursive case, it says that if the list has more than one element, call myButLast on the tail of the list

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Question 3 --
-- Find the K'th element of a list. The first element in the list is number 1.
elementAt :: [a] -> Int -> a              -- Function declaration
elementAt [] _ = error "Empty list"       -- Base case
elementAt (x:xs) 1 = x                   -- Recursive case, if the index is 1, return the first element
elementAt (x:xs) n = elementAt xs (n-1)  -- Recursive case, if the index is greater than 1, call elementAt on the tail of the list with the index decremented by 1

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Question 4 --
-- Find the number of elements of a list.
myLength :: [a] -> Int                    -- Function declaration, takes a list of any type and returns an Int
myLength [] = 0                           -- Base case, if the list is empty, return 0
myLength (x:xs) = 1 + myLength xs         -- Recursive case, if the list has more than one element, call myLength on the tail of the list and add 1 to the result

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Question 5 --
-- Reverse a list.
myReverse :: [a] -> [a]                   -- Function declaration
myReverse [] = []                         -- Base case
myReverse (x:xs) = myReverse xs ++ [x]    -- Recursive case, if the list has more than one element, call myReverse on the tail of the list and append the head to the result

myReverse = foldl (flip (:)) []           -- This is the same as the above, but using foldl and a lambda function

myReverse :: [a] -> [a]                   -- Function declaration
myReverse = reverse                       -- This is a one-liner that does the same thing as the above function

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------