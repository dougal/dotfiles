# 1. Make a new branch
# 2. Commit currently staged files
# 3. Make a new PR from the branch
#
# Take an string argument which is used as the commit title and sanitised to be
# the branch name.
function prnc
  if test -z "$argv"
    echo "A commit message must be provided as argument. Exiting."
    return
  end
  
  gnb "$argv"
  git commit -m "$argv"
  gh pr create -f -w -a @me
end
