# Seeing the world as the shell sees it

## echo

It is a builtin that prints its text arguments on stdoud.

## Command

```
echo this is a test
```

## Expansions

When the ENTER key is pressed, the shell automatically expands any qualifying characters before the command is carried out, so the echo command never saw the * but the expanded result.

```
echo *
```

## Pathname expansion

The mechanism by which wilcards work is called pathname expansions.

```
echo D*
echo *s
echo [[:upper:]]*
echo /usr/*/share
```

## Tilde expansion

When used at the beginning of a word, it expands into the name of the home directory of the named used or, if no user is named, the home directory of the current user.

```
echo ~
```

## Arithmetic expansion

The shell allows airthmetic to be perfomed by expansion. It only supports operations with integers.

```
echo ((expression))
echo $((2 + 2))
```

## Brace expansion

Allows to create multiple text strings from a pattern containing braces.

```
echo Front-{A,B,C}-Back
echo Number_{1..5}
```

## Parameter expansion

It refers to the variables.

```
echo $USER
```

## Command substitution

Allows us to use the output of a command as an expansion.

```
echo $(ls)
```

# Quoting

## Double quotes

Using double quotes we can suppress the word splitting, pathname expansion, tilde expansion and brace expansion. However, parameter expansion, arithmetic expansion and command substitution are still carried out.

By default word splitting looks for the presence of spaces, tabs and newlines and treats them as delimiters between words. This means that unquoted spaces , tabs and newlines are not considered part of the text.

As an example, the following command line contains a command followed by 4 arguments.

```
echo this is a       test
```

We can avoid the word splitting by using the double quotes.

```
ls -l "two words.txt"
echo "this is a       test"
```

## Single quotes

Single quotes will suppress all the expansions.

```
echo 'this is a       test $USER'
```

## Escaping characters

This is used when we want to quote only a single character. To do this, we have to precede the character with a backslash, which in this context is called "escape character". This is often done inside the double quotes.

```
echo "The balance for the user $USER is: \$5.00"
```

It is common to also escape characters to work with files that have special characters in the name.

```
cat bad\!\ file\&name.txt
```

## Backslash escape sequences

The backslash character in addition to be the escape character is used as part of a notation to represent certain special characters called "control codes". Some of these codes are:

```
\a      Bell (an alert that causes the computer to beep)
\b      Backspace
\n      Newline; on Unix-like systems, this produces a line feed
\r      Carriage return
\t      Tab
```