$ gsed 's/[^a-zA-Z]\+/\n/g' < wiki.txt > practice.txt
$ grep '^[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]' practice.txt > consonants.txt
$ gsed 's/[aeiouAEIUO].*//' consonants.txt > test.txt
$ sort -d test.txt | uniq -c > output1.txt
$ sort -nr < output1.txt > output1-2.txt
$ head output1-2.txt
# Here is my file

