# Create a new branch from bare words.
# Keeps periods, replaces all other non-alpha characters with a single hyphen.
function gnb
  set branchname (echo $argv | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9\.]+/-/g')
  git switch -c $branchname
end

