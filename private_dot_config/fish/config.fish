if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -g default_user na
set -g theme_display_hostname
set -g fish_prompt_pwd_dir_length 0
set -g theme_display_git_default_branch yes
set -g theme_display_virtualenv yes
set -g theme_display_date yes
set -g theme_date_format "+%a %H:%M"
set -g theme_newline_cursor yes
set -g theme_newline_prompt '> '
bind \cf complete
bind \t forward-char
eval (direnv hook fish)
fastfetch
set PATH $PATH /home/nblandos/.local/bin

