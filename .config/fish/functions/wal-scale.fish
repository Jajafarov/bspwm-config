function wal-scale
    if test -d $argv
	set rand_image (random choice (ls -1 $argv))
	wal -ni $argv$rand_image
	feh --bg-max $argv$rand_image
    else
	wal -ni $argv
	feh --bg-max $argv
    end
end
