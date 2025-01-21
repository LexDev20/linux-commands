# Example stdout redirection

ls -l /usr/bin > ls-output.txt
ls -l ls-output.txt
less ls-output.txt
ls -l /bin/usr > ls-output.txt
ls -l ls-output.txt

ls -l /usr/bin >> ls-output.txt
ls -l /usr/bin >> ls-output.txt
ls -l /usr/bin >> ls-output.txt
ls -l ls-output.txt

# Example stderr redirection

ls -l /bin/usr 2> ls-error.txt
ls -l /bin/usr 2>> ls-error.txt

### Example redirect both stdout and stderr to file

ls -l /bin/usr > ls-output.txt 2>&1
ls -l /bin/usr &> ls-output.txt
ls -l /bin/usr &>> ls-output.txt

# Example suppressing stderr output

ls -l /bin/usr 2> /dev/null

# Example cat

cat ls-output.txt
cat movie.mpeg.0* > movie.mpeg          # We can use it to join files that were split in parts
cat                                     # Will keep listning to what we type in, to close the listening with Ctrl+D
cat > lazy_dog.txt                      # Will take input from stdin
cat < lazy_dog.txt                      # Change the source of the stdin from keyboard to the file specified

# Example pipelines

ls -l /usr/bin | less
ls /bin /usr/bin | sort | less

# Example uniq

ls /bin /usr/bin | sort | uniq | less

# Example wc

wc ls-output.txt
ls /bin /usr/bin | sort | uniq | wc -l

# Example grep

ls /bin /usr/bin | sort | uniq | grep zip

# Example head/tail

head -n 5 ls-output.txt
tail -n 5 ls-output.txt
ls /usr/bin | tail -n 5
tail -f /var/log/syslog                 # -f option will make tail continuing to monitor the file, new lines will appear in display automatically until pressing Ctrl+C

# Example tee

ls /usr/bin | tee ls.txt | grep zip