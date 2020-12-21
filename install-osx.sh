#! /bin/bash

GITHUB_URL=https://github.com/
BUNDLE=~/.vim/bundle

# Requirements
if ! command -v git &> /dev/null
then
    echo "fatal: git is required"
    exit
fi

function folder_exists() {
  folder="$(echo ${1} | cut -d '/' -f 2)"

  if [[ ! -d "$BUNDLE/$folder" ]]
  then
    echo "Creating folder ..."
    echo "$BUNDLE/${folder}"
  fi
}


# Install plugins
plugins=(
	kien/ctrlp.vim
	elixir-editors/vim-elixir
	sjbach/lusty
	SirVer/ultisnips
	vim-airline/vim-airline
	cormacrelf/vim-colors-github
	honza/vim-snippets
)

for plugin in "${plugins[@]}";
do
  folder_exists $plugin
done
