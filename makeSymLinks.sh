olddir=~/dotfiles_old
mkdir -p $olddir

#List out all the dotfiles in the dotfiles directory
wd=`pwd`
dotDir=$wd/$(dirname $0)
dotfiles=`ls -a $dotDir|grep '^\.[a-z][a-z]*'`

for file in $dotfiles; do
	echo "Moving existing dotfiles from ~ to $olddir"
	mv ~/$file $olddir
	echo "Creating symlink to $file in home directory"
	echo ln -s $dotDir/$file ~/$file
	ln -s $dotDir/$file ~/$file
done

echo "Installed dotfiles successfully"
