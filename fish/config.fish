set -l config_path $HOME/.config/fish

# Load abbreviations.
set -l abbr_path $config_path/abbreviations
source $abbr_path/bundler.fish
source $abbr_path/ffmpeg.fish
source $abbr_path/gem.fish
source $abbr_path/gh.fish
source $abbr_path/git.fish
source $abbr_path/hivemind.fish
source $abbr_path/homebrew.fish
source $abbr_path/ls.fish
source $abbr_path/rails.fish
source $abbr_path/rubocop.fish
source $abbr_path/terraform.fish
source $abbr_path/tmux.fish
source $abbr_path/tree.fish
source $abbr_path/vim.fish
source $abbr_path/yarn.fish

# Load initializers.
set -l init_path $config_path/initializers
# Homebrew needs to go first.
source $init_path/homebrew.fish
source $init_path/fzf_ag.fish
source $init_path/go.fish
source $init_path/nodenv.fish
source $init_path/pyenv.fish
source $init_path/rbenv.fish
source $init_path/scripts.fish

# Load functions.
set -l func_path $config_path/functions
source $func_path/git.fish
source $func_path/go.fish
source $func_path/marks.fish
source $func_path/awsprofile.fish
source $func_path/ssh-agent.fish
source $func_path/history.fish
source $func_path/ruby.fish
source $func_path/terraform.fish

# Client-specific config.
set -l clients_path $config_path/clients
# source $clients_path/*

# Do not give a greeting
set fish_greeting

# Editor
set -Ux EDITOR 'vim'

# Colours
set --global fish_color_autosuggestion brblack
set --global fish_color_cancel -r
set --global fish_color_command blue
set --global fish_color_comment red
set --global fish_color_cwd green
set --global fish_color_cwd_root red
set --global fish_color_end green
set --global fish_color_error brred
set --global fish_color_escape brcyan
set --global fish_color_history_current --bold
set --global fish_color_host normal
set --global fish_color_host_remote yellow
set --global fish_color_normal normal
set --global fish_color_operator brcyan
set --global fish_color_param cyan
set --global fish_color_quote yellow
set --global fish_color_redirection cyan --bold
set --global fish_color_search_match white --background=brblack
set --global fish_color_selection white --bold --background=brblack
set --global fish_color_status red
set --global fish_color_user brgreen
set --global fish_color_valid_path --underline
set --global fish_pager_color_completion normal
set --global fish_pager_color_description yellow -i
set --global fish_pager_color_prefix normal --bold --underline
set --global fish_pager_color_progress brwhite --background=cyan
set --global fish_pager_color_selected_background -r
