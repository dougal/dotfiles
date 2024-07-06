# Runs whichever of terraform or opentofu is installed
function tf

	# Is terraform installed?
  if test -n "$(which terraform)"
		terraform $argv
	else if test -n "$(which tofu)"
		tofu $argv
  else
    echo "No terraform or opentofu installed"
  end
end
