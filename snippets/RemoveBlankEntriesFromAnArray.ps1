# RemoveBlankEntriesFromArray.ps1
# By pkspsne on 2023-07-06

# Create an array with 5 elements, two of which are empty strings.
$items = @("Something","Something else","Also something","","")

# If we print the $items array, we see it contains 5 elements.
$items

# OUTPUT:
# Something
# Something else
# Also something
# <blank line for empty string>
# <blank line for empty string>

# We can confirm the number of elements in the array by running:
$items.Count

# OUTPUT:
# 5

# In PowerShell, an empty string will return false when used as the
# condition in an If statement:
#
# Example: $x = ""
#          If ($x) { # This will not execute }
#
# A non-empty string, meaning one that contains text, will return true:
#
# Example: $x = "Something"
#          If ($x) { # This WILL execute }
#
# We can use this to remove empty strings from an array by going over
# (iterating over) the array element by element and reassigning only strings
# that return true back to the original variable:

$items = $items | ForEach-Object { If ($_) { $_ } }

# Now if we print the $items array, it will only consist of the original
# items which were not blank:

$items 

# OUTPUT:
# Something
# Something else
# Also something

# We see the array has been recreated with only 3 elements now by running:
$items.Count

# OUTPUT:
# 3
