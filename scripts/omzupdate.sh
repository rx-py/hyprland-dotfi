#!/bin/zsh

ZPLUGINDIR=$HOME/.oh-my-zsh/custom/plugins
ZTHEMEDIR=$HOME/.oh-my-zsh/custom/themes

# Function to update or clone a repository
update_or_clone() {
    local repo_url="$1"
    local target_dir="$2"

    if [ -d "$target_dir" ]; then
        echo "Updating $target_dir..."
        (cd "$target_dir" && git pull)
    else
        echo "Cloning $repo_url to $target_dir..."
        git clone "$repo_url" "$target_dir"
    fi
}

# Update or clone fast-syntax-highlighting
update_or_clone "https://github.com/zdharma-continuum/fast-syntax-highlighting.git" "$ZPLUGINDIR/fast-syntax-highlighting"

# Update or clone autosuggestions
update_or_clone "https://github.com/zdharma-continuum/fast-syntax-highlighting.git" "$ZPLUGINDIR/zsh-autosuggestions"

# Update or clone powerlevel10k
update_or_clone "https://github.com/romkatv/powerlevel10k.git" "$ZTHEMEDIR/powerlevel10k"

echo "Oh-My-Zsh plugins/themes updated."


