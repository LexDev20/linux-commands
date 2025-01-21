# Examples ls

ls                      # list files and subfolders
ls ~ /usr               # multiple path
ls -l                   # list with long format
ls -lt                  # Previous result + sorted by modification date
ls -lt --reverse        # Previous result + reverse order in sorting

# Example file

file images.jpeg        # see the filetype of a file and its details

# Example less

less chapter_03.txt     # view text files content

# Examples

*                       All files
g*                      Any file beginning with g
b*.txt                  Any file beginning with b followed by any characters and ending with .txt
Data???                 Any file beginning with Data followed by exactly 3 characters
[abc]*                  Any file beginnint with a, b or c
BACKUP.[0-9][0-9][0-9]  Any file beginning with BACKUP. followed by exactly 3 numerals
[[:upper:]]*            Any file beginning with an uppercase letter
[![:digit:]]*           Any file not beginning with a numeral
*[[:lower:]123]         Any file endign with a lowercase or the numerals 1, 2 or 3

# Examples mkdir

mkdir dir1              # Create a single directory
mkdir dir1 dir2 dir3    # Create multple directories

# Examples cp

cp a.txt c.txt          # Creates a copy of the file a.txt with the name c.txt
cp a.txt b.txt /dir1    # Copy the files a.txt and b.txt to the directory dir1
cp dir1/* dir2          # Copies all the files in dir1 into dir2
cp -r dir1/* dir2       # Copies the content of dir1 into dir2
                        # If dir2 does not exist, it is created and will contain the same contents as dir1
                        # If dir2 does exist, it will copy dir1 itself (and is contents) into dir2

# Examples mv

mv file1 file2          # Move file1 to file2
                        # If file2 exists, it is overwritten with the content of file1
                        # If file2 does not exist, it is created
                        # In both cases after the operation, file1 it is deleted
mv file1 file2 dir1     # Moves file1 and file2 into dir1
mv dir1 dir2            # If dir2 does not exist, create dir2, move the content of dir1 into dir2 and delete dir1
                        # If dir2 does exist, move dir1 itsetlf (and its contents) into dir2

# Examples rm

rm file1                # Delete file1 silently
rm -r file1 dir1        # Delete file1 and dir1 and its contents
rm -rf file1 dir1       # Same as previous but if either file1 or dir1 does not exist, rm will continue silently

# Create a hard link
ln file link

# Create symbolic link
ln -s item link


# Playground

cd ~
mkdir playground
mkdir dir1 dir2
ls -l

cp -v /etc/passwd .
cp -i /etc/passwd .

mv passwd fun
mv fun dir1
mv dir1/fun dir2
mv dir2/fun .

mv fun dir1
mv dir1 dir2
ls -l dir2
ls -l dir2/dir1
mv dir2/dir1 .
mv dir1/fun .

ln fun fun-hard
ln fun dir1/fun-hard
ln fun dir2/fun-hard
ls -l
ls -li

ln -s fun fun-sym
ln -s ../fun dir1/fun-sym
ln -s ../fun dir2/fun-sym
ls -l
ls -l dir1
ln -s /home/lex/playground/fun dir1/fun-sym
ln -s dir1 dir1-sym

rm fun-hard
ls -l
rm -i fun
ls -l
less fun-sym
rm fun-sym dir1-sym
ls -l

cd
rm -r playground
