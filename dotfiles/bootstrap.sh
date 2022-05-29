#!/usr/bin/env zsh

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master

function doIt() {

    rsync --exclude ".git/" \
        --exclude "install*"
        --exclude ".gitignore" \
        --exclude "bootstrap.sh" \
        --exclude "readme.md" \
        --exclude "repo_*" \
        -avh --no-perms . ~;
    source ~/.zshrc;
}

if [ "$1" = "--force" -o "$1" = "-f" ]; then
    doIt;
else
    echo "This may overwrite existing files in your home directory. \nAre you sure? (y/n) : ";

    read -rs -k 1 ans;
    if [[ "${ans}" == "y" || "${ans}" == "Y" ]]; then
        doIt;
    fi;
fi;
unset doIt;
