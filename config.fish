## enviroment valiables
set -x PATH /home/rinanapop/.nodebrew/current/bin:/home/rinanapop/.nodebrew/current/bin /home/rinanapop/.nodebrew/current/bin:/usr/local/sbin /home/rinanapop/.nodebrew/current/bin:/home/rinanapop/.nodebrew/current/bin /home/rinanapop/.nodebrew/current/bin:/usr/local/bin /home/rinanapop/.nodebrew/current/bin:/home/rinanapop/.nodebrew/current/bin /home/rinanapop/.nodebrew/current/bin:/usr/sbin /home/rinanapop/.nodebrew/current/bin:/home/rinanapop/.nodebrew/current/bin /home/rinanapop/.nodebrew/current/bin:/usr/bin /home/rinanapop/.nodebrew/current/bin:/home/rinanapop/.nodebrew/current/bin /home/rinanapop/.nodebrew/current/bin:/sbin /home/rinanapop/.nodebrew/current/bin:/home/rinanapop/.nodebrew/current/bin /home/rinanapop/.nodebrew/current/bin:/bin /home/rinanapop/.nodebrew/current/bin:/home/rinanapop/.nodebrew/current/bin /home/rinanapop/.nodebrew/current/bin:/usr/games /home/rinanapop/.nodebrew/current/bin:/home/rinanapop/.nodebrew/current/bin /home/rinanapop/.nodebrew/current/bin:/usr/local/games /home/rinanapop/.nodebrew/current/bin:/home/rinanapop/.nodebrew/current/bin /home/rinanapop/.nodebrew/current/bin:/snap/bin
set -x LAN aterm-3b84c3-g 

## powerline(must be last)
set fish_function_path $fish_function_path "/usr/share/powerline/bindings/fish"
powerline-setup

## aliases
alias fconf='nvim $HOME/.config/fish/config.fish'
#alias vim='nvim'
alias voxon='cd /home/rinanapop/Projects/webapps/voxon/; and pipenv shell;'
alias c='clear'
