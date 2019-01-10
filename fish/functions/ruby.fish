# Carries out a syntax check on all Ruby files below the current directory.
function rbc
  find . -name "*.rb" | xargs ruby -w -c
end
