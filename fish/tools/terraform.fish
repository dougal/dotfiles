set -gx TF_PLUGIN_CACHE_DIR "$HOME/.terraform.d/plugin-cache"

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

#Makes use of the `tf` function to be Terraform and OpenTofu agnostic.
abbr -a tff tf fmt
abbr -a tfi tf init
abbr -a tfp tf plan

abbr -a tfa tf apply
abbr -a tfat 'tf apply --target=$(tf state list | fzf)'
abbr -a tfay tf apply -auto-approve

abbr -a tfd tf destroy
abbr -a tfdt 'tf destroy --target=$(tf state list | fzf)'
