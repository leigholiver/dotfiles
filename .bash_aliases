export GTK_USE_PORTAL=1

# aliases
alias python=python3
alias ll="ls -lah"
alias todo="grep -A1 -nri todo:  --exclude-dir={build,.build,.terraform,node_modules,vendor}"
alias diff="diff --color"

# bash git prompt
if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_THEME=Single_line_Ubuntu
    source $HOME/.bash-git-prompt/gitprompt.sh
fi

# bash git prompt terraform workspace
function prompt_callback {
    [ -d ".terraform" ] && WORKSPACE=${TF_WORKSPACE:-$(terraform workspace show)}
    [ ! -z "$WORKSPACE" ] && echo " [ \e[32m$WORKSPACE\e[39m ]";
}

# dont show deleted files in git diffs
git() {
    if [[ $@ == "diff" ]]; then
        command git diff --diff-filter=d
    else
        command git "$@"
    fi
}

# default terraform fmt --recursive
terraform() {
    if [[ $@ == "fmt" ]]; then
        command terraform fmt --recursive
    else
        command terraform "$@"
    fi
}