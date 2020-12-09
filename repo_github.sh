#!/bin/bash

cd "$(brew --repo)"
git remote set-url origin https://github.com/Homebrew/brew
echo `git remote -v`
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
git remote set-url origin https://github.com/Homebrew/homebrew-core
echo `git remote -v`
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-cask"
git remote set-url origin https://github.com/Homebrew/homebrew-cask
echo `git remote -v`
