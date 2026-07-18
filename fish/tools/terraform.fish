set -gx TF_PLUGIN_CACHE_DIR "$HOME/.terraform.d/plugin-cache"

#Makes use of the `tf` function to be Terraform and OpenTofu agnostic.
abbr -a tf tofu
abbr -a tff tofu fmt
abbr -a tfi tofu init
abbr -a tfp tofu plan

abbr -a tfa tofu apply
abbr -a tfat 'tofu apply --target=$(tofu state list | fzf)'
abbr -a tfay tofu apply -auto-approve

abbr -a tfd tofu destroy
abbr -a tfdt 'tofu destroy --target=$(tofu state list | fzf)'
