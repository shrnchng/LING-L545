import sys

# input file source
infile = sys.stdin.readline()

while infile != '':
    if infile.strip() == '':
        infile = sys.stdin.readline()
        continue

    linebreak = infile.strip().replace('. ', '.\n').strip()
    if linebreak != '':
        sys.stdout.write(linebreak.strip())
    infile = sys.stdin.readline()
