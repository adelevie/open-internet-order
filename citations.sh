command_exists () {
  type "$1" &> /dev/null ;
}

find_citations () {
  cat order.txt | cite | node -pe "JSON.parse(require('fs').readFileSync('/dev/stdin').toString()).citations.map(function(citation){return citation.match;})"
}

if command_exists cite
then
  find_citations > citations.txt
else
  if command_exists npm
  then
    echo run the following and then re-run this script:
    echo npm install -g citation
  else
    echo You need to install node.js.
    echo See for more information: https://nodejs.org/
  fi
fi
