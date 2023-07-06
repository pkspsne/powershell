# ShowPath.ps1
# By pkspsne on 2023-07-06
#
# The Windows PATH environment variable can be printed in
# a readable format by querying the $env PSDrive (which 
# is provided automatically by PowerShell):

$env:path.Split(";") | sort Name
