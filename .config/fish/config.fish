fish_add_path /home/vadim/.local/bin
fish_add_path /home/vadim/.cargo/bin
fish_add_path /home/vadim/.config/composer/vendor/bin/

if status is-interactive
    starship init fish | source
end

# pnpm
set -gx PNPM_HOME "/home/vadim/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

alias update="sudo apt-get update && sudo apt-get upgrade && sudo apt-get autoremove && sudo apt-get autoclean"
