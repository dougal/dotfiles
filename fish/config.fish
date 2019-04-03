set -l config_path $HOME/.config/fish

# Load abbreviations.
set -l abbr_path $config_path/abbreviations
source $abbr_path/bundler.fish
source $abbr_path/ffmpeg.fish
source $abbr_path/gem.fish
source $abbr_path/git.fish
source $abbr_path/homebrew.fish
source $abbr_path/rails.fish
source $abbr_path/sublime.fish

# Load initializers.
set -l init_path $config_path/initializers
source $init_path/go.fish
source $init_path/homebrew.fish
source $init_path/rbenv.fish
source $init_path/scripts.fish

# Load functions.
set -l func_path $config_path/functions
source $func_path/go.fish
source $func_path/marks.fish
source $func_path/ssh-agent.fish
source $func_path/ruby.fish

# Do not give a greeting
set fish_greeting

# Editor
set -Ux EDITOR 'vim'
set -g fish_user_paths "/usr/local/opt/qt@5.5/bin" $fish_user_paths
