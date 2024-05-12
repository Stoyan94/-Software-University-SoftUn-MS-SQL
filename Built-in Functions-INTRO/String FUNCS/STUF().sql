SELECT STUFF('Stoqn', 5, 0, 'Maniac')

-- STUFF is a function used to replace a specified length of characters in a string with another string at a specified starting point. 
	-- Here's an explanation of each parameter:
 
-- 'Stoqn': This is the original string from which characters will be replaced.

-- 5: This is the starting position in the original string where characters will be replaced. In this case, it starts at the 5th character.

-- 0: This is the number of characters to delete from the original string. Since it's set to 0, it means no characters will be deleted.

-- 'Maniac': This is the string that will be inserted into the original string starting from the specified position.

-- So, the result of this code would be the original string 'Stoqn' with 'Maniac' inserted starting from the 5th position, 
	-- and no characters deleted. Therefore, the result would be 'StoqManiacn'.