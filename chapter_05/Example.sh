# Examples type

type type
type ls
type cp

# Examples which

which ls
which cd

# Examples help

help cd

# Understanding the cd notation

cd [-L|[-P [-e]] [-@]] [dir]

# When square brackets appear in the description of the command, they indicate optional items
# A vertical bar character indicates mutually exclusive items.
# From the example abobe:
# This notation says that the command cd may be followeb optionally by either -L or -P and further, if the -P option is specified the -e option may also be included, followed by the optional argument dir.

# Examples --help

mkdir --help

# Examples man

man ls
man 5 passwd

# Example apropos

apropos partition

# Example whatis

whatis ls

# Example info

info coreutils

# Example alias

alias foo='cd /usr; ls; cd -'





