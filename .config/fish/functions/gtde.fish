#!/bin/fish

function gtde
    cd ~/GTD
    for file in (ls | grep -v .gpg)
	gpg --yes --output $file.gpg --encrypt --recipient $argv $file
    end
    git add .
    git commit -m "KITT"
    git push origin master
end
