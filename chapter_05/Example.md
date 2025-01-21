# Working with commands

## Displaying command's type

Show which kind of commandd is being used, a command can be:
- Executable progam: Programas that can be compiled binaries such as programs written in C and C++, or programs written in scripting languages such as the shell, Perl, Python, Ruby, ans so on
- Built into the shell itself: Bash supports a number of commands internally called sheld builtins, for example, the cp command
- Shell function: Miniature shell scripts incorporated into the environment
- Alias: Commands built from other commands

### Command

```
type command
```

## Display an executable's location

Sometimes there is more than one version of an executable program installed on a system.
To determine the exact location of a given executable, we can use the which command.

Note: If you are using ZSH, the which command behaves different, git it a try to the following command:

```
zsh -c 'type which'
bash -c 'type which'
```

Which (the one in bash) works only with executable programs, for builtins or aliases will not show anything.

### Command

```
which command
```

## Getting a command's documentation

## help

It is a build-in help facility available for each of the shell buildins.

### Command

```
help command
```

## --help

Many executable programs support a --help option that displays a description of the command's supported syntax and option.

### Command

```
mkdir --help
```

## man

Most executable programs intended for command line use provide a formal piece of documentation called a manual or man page. A special paging program called man is used to view them.

### Command

```
man program
man section search_term
```

## apropos

Show the list of possible man pages matching based on a search term.

### Command

```
apropos search_term
```

## whatis

Displays the name and a one-line description of a mand page matching with the specified keyword.

### Command

```
whatis search_term
```

## info

An alternative to man pages. Info manuals are displayed with a readedr program named "info".

### Command

```
info program
```

## alias

### Command

```
# Creates the alias on the shell session
alias name='command1; command2; comand3...'

# Remove the alias
unalias name
```


