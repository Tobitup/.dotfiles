if status is-interactive
    # Commands to run in interactive sessions can go here
end
set fish_greeting ""

# Activate Starship
eval "$(starship init fish)"

# Set SSH_AUTH_SOCK for GNOME Keyring
set -x SSH_AUTH_SOCK /run/user/1000/keyring/ssh

