# RemoveBlankEntriesFromArray.ps1
# By pkspsne

# Create an array with 5 elements, two of which are empty strings
$items = @("Something","Something else","Also something","","")

# In PowerShell, an empty string will return false when used in an
# If statement. 
#
# Example: $x = ""; If ($x) { # This will not execute }
#
# A non-empty string, meaning one that contains text, will return true
#
# Example: $x = "Something"; If ($x) { # This WILL execute }
#
# We can use this to remove empty strings from an array by going over
# (iterating over) the array element by element and reassigning only strings
# that return true back to the original variable.

$items = $items | ForEach-Object { If ($_) { $_ } }
