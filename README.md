# Grepping the Open Internet Order

This is a quick and dirty script for searching through the FCC's most recent [Open Internet Order](http://www.fcc.gov/document/fcc-releases-open-internet-order) for key words and phrases.

I ran this and stored the results in `output.txt`. You can run the script on your own by cloning this repo and typing the following in the terminal (works on Mac and Linux, no idea about Windows):

```
./search.sh
```

This will overwrite whatever is currently in `output.txt`.

If you want to customize the search terms, just add or remove words (in double quotes) in `search_terms`. For example, to search for "Section 706":

```
search_terms=( "find" "conclude" "agree" "disagree" "reject" "Section 706")
```

## What is [grep](https://en.wikipedia.org/wiki/Grep)

> grep is a command-line utility for searching plain-text data . . .
