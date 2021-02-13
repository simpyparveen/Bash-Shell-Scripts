#Write a bash script to calculate the frequency of each word in a text file words.txt. Example: 
# Assume that words.txt has the following content: the day is sunny the the\n the sunny is is
#Your script should output the following, sorted by descending frequency:
          # the 4
          # is 3
          # sunny 2
          # day 1


# ANSWER: Read from the file words.txt and output the word frequency list to stdout.
# tr 'a' 'b' is same as tr -s ' ' '\n'  whenever it sees the letter a it replaces it with b
# Using uniq -c option : It tells the number of times a line was repeated.
# sort : SORT command sorts the contents of a text file, line by line.
# sort -r: SORT command sorts the contents of a text file, line by line in desc order

cat words.txt | tr -s ' ' '\n' | sort | uniq -c | sort -r | awk '{print $2, $1}'



