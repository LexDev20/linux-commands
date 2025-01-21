# List files and folders

### Command
```
ls
```
### Arguments
```
-a / --all              # List all files, even the hidden ones
-A / --almost-all       # List all files but the .. and .
-d / --directory        # Used to list the directory itself, not its content
-h / --human-readable   # Togetith with l will display the file sizes in a human readable way
-l                      # Display results with long format
-r / --reverse          # Reverse the current order
-S                      # Sort by file size
-t                      # Sort by modificatiton time
-i / --inode            # Prints the index number of each file
```

### Examples

``` 
ls ~ /usr               # List multiple paths
ls -l                   # List with long format
ls -lt                  # Previous result + sorted by modification date
ls -lt --reverse        # Previous result + reverse order in sorting
```

### Fields of long listing format

```
-rw-rw-r-- 1 lex lex 10647 Apr 27  2024 images.jpeg
drwxr-xr-x 2 lex lex 4096 Apr 17  2024 Desktop

drwxr-xr-x      # Access rights to the file.
                # The first character could be "d" for a directory, "-" for a regular file and "l" for only symbolic links
                # The next 3 characters are the access rights for the file's owner
                # The next 3 characters are the access rights for the members of the file's group
                # The next 3 characters are the access rights for eveyone else
                # r = read permission
                # w = write permission
                # x = executable permission
                # - = permission not set
2               # Number of hard links
lex             # Name of the file's owner
lex             # Name of the group that owns the file
4096            # File size in bytes
Apr 17  2024    # Date and time of file's last modification
Desktop         # Name of the file
```

## File type of a file

```
# See the filetype of a file and its details
file images.jpeg
```


# Less

### View text files content

```
less chapter_03.txt
```

### Less's commands

```
PAGE UP or b            # Scroll back one page
PAGE DOWN or space      # Scroll forward one page
Up arrow                # Scroll up one line
Down arrow              # Scroll down one line
G                       # Move to the end of the file
1G or g                 # Move to the beginning of a text file
/characters             # Search forward to the next occurrence of "characters"
n                       # Search fot the next occurrence of the previous search
h                       # Show the help screen
q                       # Quit less
```
