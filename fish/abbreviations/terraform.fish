#Makes use of the `tf` function to be Terraform and OpenTofu agnostic.
abbr -a tff tf fmt
abbr -a tfi tf init
abbr -a tfp tf plan

abbr -a tfa tf apply
abbr -a tfat 'tf apply --target=$(tf state list | fzf)'
abbr -a tfay tf apply -auto-approve

abbr -a tfd tf destroy
abbr -a tfdt 'tf destroy --target=$(tf state list | fzf)'

