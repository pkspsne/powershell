# CheckOS.ps1
# By pkspsne on 2023-07-10
#
# Simple script that checks the operating system that you're running
# and prints a result based upon what it detects.

If ($IsWindows) { 
    echo "You're running Windows"
}
ElseIf ($IsMacOS) {
    echo "You're running macOS"
}
ElseIf ($IsLinux) {
    echo "You're running Linux"
}
Else {
    echo "Not sure what you're running... DOS?"
}
