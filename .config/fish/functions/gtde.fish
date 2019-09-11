#!/bin/fish

function gtde
    cd ~/GTD
    for file in (ls | grep -v .gpg)
	gpg --yes --output $file.gpg --encrypt --recipient Jafarov $file
    end
    git add .
    git commit -m "TARS"
    git push origin master
end
