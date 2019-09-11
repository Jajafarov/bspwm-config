#!/bin/fish

function gtdd
    cd ~/GTD
    git pull
    for file in (ls | grep -v .gpg)
	gpg --yes --output $file --decrypt "$file.gpg"
    end
end
