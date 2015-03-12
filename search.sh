search_terms=( "find" "conclude" "agree" "disagree" "reject" )

IFS=""
for term in ${search_terms[*]}
do
    grep -R "${term}" order.txt --no-filename --context --color=auto > output.txt
done
