# Load dotfiles:
# for file in ~/.{bash_prompt,aliases,private}; do
#    [ -r "$file" ] && [ -f "$file" ] && source "$file";
#done;
#unset file;

#Git auto-complete
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi

# Create CTSSH function to use instead of regular SSH
function ctssh {
    ssh $@ | ct
}

export -f ctssh

if [ "$TERM" != "linux" ]; then

    source ~/development/bash/pureline/pureline ~/.pureline.conf

fi

cd ~
