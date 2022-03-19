if status is-interactive
    # Commands to run in interactive sessions can go here
end

## enviroment valiables
set -x LAN aterm-3b84c3-g 

## powerline(must be last)
set fish_function_path $fish_function_path "/usr/share/powerline/bindings/fish"
powerline-setup

## aliases
alias fconf='nvim $HOME/.config/fish/config.fish'
alias chnw='timeout 0.2 ping -c1 www.google.com; or systemctl restart NetworkManager'
