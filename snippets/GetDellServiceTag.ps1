# GetDellServiceTag.ps1
# By pkspsne on 2023-07-06
#
# Dell service tags are located in the SerialNumber property
# of the Win32_SystemEnclosure CIM class.
#
# To get the Dell service tag of your device, enter the
# following into Windows PowerShell or PowerShell 7:

Get-CimInstance Win32_SystemEnclosure | Select-Object SerialNumber
