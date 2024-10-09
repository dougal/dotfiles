# Create a new branch from bare words.
# Keeps periods, replaces all other non-alpha characters with a single hyphen.
function gnb
  set branchname (echo $argv | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9\.]+/-/g')
  git switch -c $branchname
end

# Create a new commit from bare words.
function gcm
  git commit -m "$argv"
end

# Add all tracked files and create a new commit from bare words.
function gcam
  git commit -a -m "$argv"
end
