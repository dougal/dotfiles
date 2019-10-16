# Original bash version at:
#   http://jeroenjanssens.com/2013/08/16/quickly-navigate-your-filesystem-from-the-command-line.html
#
# Fish version:
#   https://news.ycombinator.com/item?id=6231396
#
# Changed cut to awk to deal with changing near and far date formatting.
#

set MARKPATH $HOME/.marks

# Jumps to the named mark.
# Takes mark name as an argument.
function jump
  set mark $MARKPATH/$argv

  if test -e $mark
  # Jumps to the symlinked mark directory,
  # then jumps to the non-symlinked location.
    cd $MARKPATH/$argv; and cd (pwd -P)
  else
    echo "No such mark: $argv"
  end
end

# Creates a mark for the current working directory.
# Takes a mark name as an argument.
function mark
  mkdir -p $MARKPATH; and ln -s (pwd) $MARKPATH/$argv
end

# Deletes the named mark.
# Takes a mark name as an argument.
function unmark
  rm -i $MARKPATH/$argv
end

# Displays all current marks.
function marks
  ls -l $MARKPATH | awk '{print $9, $10, $11}'
end

abbr -a j jump
