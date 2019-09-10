$ gsed 's/[^a-zA-Z]\+/\n/g' < wiki.txt > practice.txt
$ gsed 's/.*[aeiouAEIUO]//' practice.txt > test.txt
$ sort -d test.txt | uniq -c > output2.txt
$ sort -nr < output2.txt > output3.txt 
$ head output3.txt

# Here is my file

