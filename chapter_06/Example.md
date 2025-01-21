# Redirection

### Redirecting standard output (stdout)

For this, we need to use the redirection operator > followed by the file name.
The >> operator is used to append the output to the end of the file.

### Example

```
# This will rewrite the file's content everytime, with an error it will truncate the file
ls -l /usr/bin > ls-output.txt

# This will append the result to the end of the file instead of rewriting it
ls -l /usr/bin >> ls-output.txt
```

### Redirecting standard error (stderr)

To redirect standard error, we must refer to its file descriptor.
The shell internally reference all the streams as file descriptions, being the stdin, stdout and stderr the files descriptors 0, 1 and 2, respectively.

### Example

```
ls -l /bin/usr 2> ls-error.txt
ls -l /bin/usr 2>> ls-error.txt
```

### Redirect stdout and stderr to the same file

```
# Traditional way
ls -l /bin/usr > ls-output.txt 2>&1

# Most recent bash versions also supports the following
ls -l /bin/usr &> ls-output.txt
```

### Disposing unwanted output

If we want to ignore the output we can send it to a special file called /dev/null. This file is a system device often referred as "bit bucket", which |ceppt input and does nothing with it.
The following command will suppress error messages from the ls command.

```
ls -l /bin/usr 2> /dev/null
```

### Redirecting standard input (stdin)

### cat

Reads from one or more files and copies then to stdout.
It can also read from stdin if no argument is provided.

### Command

```
cat filename
```

### Pipelines

Using the pipe | operator, the standard output of one command can be pipped into the stdin of another.
While redirection operators works with files, pipeline operator connect the output of one command with the input of another command.

### Example

```
command1 | command2
ls -l /usr/bin | less
```

### Uniq

Usually used in conjunction with sort, accepts a sorted list of data from either stdin or a single filename argument, removes any duplicates from the list.

### Example

```
ls /bin /usr/bin | sort | uniq | less
```

### wc

The wc (word count) command is used to display the number of lines, words and bytes contained in files.

### Command

```
wc stdin
```

### grep

### Command

```
grep pattern filename
```

### head/tail

head prints the first 10 lines from an output and tail prints the last 10 lines.
The default number of lines is 10 but can be changed with tne -n option.

### Command

```
head stdin
tail stdin
```

### tee

The tee program reads stdin and copies it to both stdout and to one or more files.
This is useful for capturing a pipeline's contents at an intermediate stage of processing before the execution of the next command.

### Example

```
ls /usr/bin | tee ls.txt | grep zip
```