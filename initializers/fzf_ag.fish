set -Ux FZF_DEFAULT_COMMAND 'ag --nocolor -g ""'
set -Ux FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"
set -Ux FZF_ALT_C_COMMAND "$FZF_DEFAULT_COMMAND"
set -Ux FZF_DEFAULT_OPTS '
--color fg:242,bg:236,hl:65,fg+:15,bg+:239,hl+:108
--color info:108,prompt:109,spinner:108,pointer:168,marker:168
'

