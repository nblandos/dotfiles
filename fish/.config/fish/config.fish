# Environment variables
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx EDITOR nvim
set -gx VISUAL nvim

# Determine OS type
switch (uname)
    case Darwin
        set -gx OSTYPE macOS
    case '*'
        set -gx OSTYPE Linux
end

# Add paths based on OS
if test "$OSTYPE" = macOS
    fish_add_path /opt/homebrew/bin
else
    fish_add_path ~/.local/bin
end

fish_add_path /usr/local/bin
fish_add_path ~/.local/share/bob/nvim-bin

# Aliases
alias vim="nvim"
alias vi="nvim"
alias cat="bat"
alias python="python3"
alias ls="eza --icons --git"
alias lsa="eza --icons --git --all"
alias l="eza -alg --color=always --group-directories-first --git"
alias ll="eza -aliSgh --color=always --group-directories-first --icons --header --long --git"
alias lt="eza -@alT --color=always --git"
alias llt="eza --oneline --tree --icons --git-ignore"
alias lr="eza -alg --sort=modified --color=always --group-directories-first --git"
alias c="clear"
alias u="topgrade"

# Abbreviations
abbr lzg lazygit
abbr lzd lazydocker
abbr dc docker-compose
abbr dcb "docker compose build"
abbr dcd "docker compose down"
abbr dcl "docker compose logs"
abbr dclf "docker compose logs -f"
abbr dcp "docker compose pull"
abbr dcr "docker compose run --rm"
abbr dcu "docker compose up"
abbr dcub "docker compose up --build"
abbr dcud "docker compose up -d"
abbr dcudb "docker compose up -d --build"

# Configure fish theme and prompt
set -g default_user na
set -g theme_display_hostname
set -g fish_prompt_pwd_dir_length 0
set -g theme_display_git_default_branch yes
set -g theme_display_virtualenv yes
set -g theme_display_date yes
set -g theme_date_format "+%a %H:%M"
set -g theme_newline_cursor yes
set -g theme_newline_prompt '> '

# Key bindings
bind \t forward-char
bind \cf complete

# Interactive shell specific configurations
if status is-interactive; and test "$TERM_PROGRAM" != vscode
    fastfetch
end

# Yazi wrapper
function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

# Initialise zoxide
zoxide init fish | source
