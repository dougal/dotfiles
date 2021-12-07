# Create a new branch from bare words.
function gnb
  set branchname (echo $argv | sed -E 's/[^a-zA-Z0-9 ]//g' | sed -E 's/ +/-/g' | tr '[:upper:]' '[:lower:]')
  git switch -c $branchname
end

