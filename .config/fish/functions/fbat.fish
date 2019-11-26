#!/bin/fish

function fbat
    fzf --reverse --preview='bat --color=always {}' $argv
end
