search_terms=( "find" "conclude" "agree" "disagree" "reject" )

for i in "${search_terms[@]}"
do
  grep -R $i order.txt --no-filename --context --color=auto > output.txt
done
