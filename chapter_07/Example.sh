# Example echo

echo this is a test

# Expansion

echo *

# Pathname expansion

echo D*
echo *s
echo [[:upper:]]*
echo /usr/*/share

# Arithmetic expression

echo $((2 + 2))
echo $(($((5**2)) * 3))
echo $(((5**2) * 3))
echo Five divided by two equals $((5/2))
echo with $((5%2)) left over.

# Brace expansion

echo Front-{A,B,C}-Back
echo Number_{1..5}
echo {01..15}
echo {0001..15}
echo {Z..A}
echo a{A{1,2},B{3,4}}b

mkdir Photos
cd Photos
mkdir {2024..2025}-{01..12}

# Parameter expansion

echo $USER
printenv | less

# Command Substitution

echo $(ls)
ls -l $(which cp)
file $(ls -d /usr/bin/* | grep zip)
ls -l `which cp`                        # Used in older shell programs

# Double quotes

ls -l "two words.txt"
echo "$USER $((2+2)) $(cal)"
echo this is a       test
echo "this is a       test"
echo $(cal)
echo "$(cal)"

# Single quotes

echo 'this is a       test $USER'
echo text ~/*.txt {a,b} $(echo foo) $((2 + 2)) $USER
echo "text ~/*.txt {a,b} $(echo foo) $((2 + 2)) $USER"
echo 'text ~/*.txt {a,b} $(echo foo) $((2 + 2)) $USER'

# Escaping characters

echo "The balance for the user $USER is: \$5.00"
cat bad\!\ file\&name.txt

# Backslash escape sequences

sleep 10; echo -e "Time's up\a"
sleep 10; echo -e "Time's up" $'\a'