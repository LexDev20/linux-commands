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


### Wildcards

```
*                       # Matches any character
?                       # Matches a single character
[characters]            # Matches any character that is a member of the set "characters"
[!characters]           # Matches any character that is not a member of the set "characters"
[[:class:]]             # Matches any character that is a member of the specified class
```

### Classes

```
[:alnum:]               # Matches any alphanumeric character
[:alpha:]               # Matches any alphabetic character
[:digit:]               # Matches any numeral
[:lower:]               # Matches any lowercase letter
[:upper:]               # Matches any uppercase letter
```

### Examples

```
*                       # All files
g*                      # Any file beginning with g
b*.txt                  # Any file beginning with b followed by any characters and ending with .txt
Data???                 # Any file beginning with Data followed by exactly 3 characters
[abc]*                  # Any file beginnint with a, b or c
BACKUP.[0-9][0-9][0-9]  # Any file beginning with BACKUP. followed by exactly 3 numerals
[[:upper:]]*            # Any file beginning with an uppercase letter
[![:digit:]]*           # Any file not beginning with a numeral
*[[:lower:]123]         # Any file endign with a lowercase or the numerals 1, 2 or 3
```


# Create directories

### Command

```
# The the periods (...) in a command's argument means that the argument can be repeated
mkdir directory...
```

### Example

```
# Create a single directory
mkdir dir1

# Create multple directories
mkdir dir1 dir2 dir3
```


# Copy files an directories

### Command

```
# First way, used to copy one file
cp item1 item2

# Second way, used to copy one or more files into a directory
cp item... directory
```


### Options

```
-a / --archive          # Copy the files and directories and all their attributes, including ownershipt and permissions
                        # By default it will take the attributes of the user performing the copy
-i / --interactive      # It will prompt the user for a confirmation before overwriting a file. By default it will overwrite files.
-r / --recursive        # Recursively copy directories and their contents
-u / --update           # Only will copy files that either don't exist or are newer that the existing corresponding files in the destination directory
-v / --verbose          # Display informative messages as the copy is performed
```


### Example

```
cp a.txt c.txt          # Creates a copy of the file a.txt with the name c.txt
cp a.txt b.txt /dir1    # Copy the files a.txt and b.txt to the directory dir1
cp dir1/* dir2          # Copies all the files in dir1 into dir2
cp -r dir1/* dir2       # Copies the content of dir1 into dir2
                        # If dir2 does not exist, it is created and will contain the same contents as dir1
                        # If dir2 does exist, it will copy dir1 itself (and is contents) into dir2
```


# Move/Rename files an directories

### Command
```
# First way, used to move/rename one file
mv item1 item2

# Second way, used to move/rename one or more files into a directory
mv item... directory
```

### Options

```
-i / --interactive      # It will prompt the user for a confirmation before overwriting a file. By default it will overwrite files.
-u / --update           # Only will move files that either don't exist or are newer that the existing corresponding files in the destination directory
-v / --verbose          # Display informative messages as the move is performed
```

### Example
```
mv file1 file2          # Move file1 to file2
                        # If file2 exists, it is overwritten with the content of file1
                        # If file2 does not exist, it is created
                        # In both cases after the operation, file1 it is deleted
mv file1 file2 dir1     # Moves file1 and file2 into dir1
mv dir1 dir2            # If dir2 does not exist, create dir2, move the content of dir1 into dir2 and delete dir1
                        # If dir2 does exist, move dir1 itsetlf (and its contents) into dir2
```


# Remove files and directories

### Command

```
rm item...
```

### Options

```
-i / --interactive      # It will prompt the user for a confirmation before deleting an existing file. By default it will delete files
-r / --recursive        # It is mandatory to delete a directory. Recursively delete directories, if the specified directory has subdirectories it will delete them too
-f / --force            # Ignore nonexisting files and continue with the deletion of files and directories, for directories it will need the -r option. This overrides the -i option
-v / --verbose          # Display informative messages as the deletion is performed
```

### Examples

```
rm file1                # Delete file1 silently
rm -r file1 dir1        # Delete file1 and dir1 and its contents
rm -rf file1 dir1       # Same as previous but if either file1 or dir1 does not exist, rm will continue silently
```


# Symbolic links / Hard links

### Hard links

To have a better picture of how hard links works we can think that files are made up of two parts:
- Data part containing the file's content
- Name part that holds the file's name, which is a hard link itself

When we create hard links, we are creating more "name parts" and all the "name parts" refer to the same "data part".
The system assigns a chain of disk blocks called inode to that file, then this is associated with the name part.
Each hard link refers to a specific inode containing the file's contents.
To know if two hard links refer to the same file we can use le "--inode" argument when executing an "ls" command.

Additional considerations:

- Hard links only reference files, does not work with directories.
- Hard links cannot span physical devices.
- Delete a hard link will not delete the file if there are more hard links, the file will be deleted only when all the hard links are deleted.

### Create a hard link

```
ln file link
```

### Symbolic links

Symbolic links are a special type of file that contains a text pointer to the target file or directory.

The creation is very similar to creating hard links but of just giving it a name we need to provide a description of where the target file is relative to the symbolic link. You can also use absolute paths to create symbolic link.

Additional considerations:

- Symbolic links can reference files and directories.
- Symbolic links can span physical devices.
- Most of the operation are carried out on the link's target, not the link itself. With the exception of "rm", deleting the link will delete only the link, not the file.

### Create symbolic link

```
ln -s item link
```



































