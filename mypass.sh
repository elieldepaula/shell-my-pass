#!/bin/bash 

init() {
    self=$(which $0)
    self_path=$(dirname $(realpath $self))
    project_path=$(dirname $self_path)
    config_dir="/home/$USER/.config/mypass"
    config_file=$config_dir"/config"

    if [ ! "$config_file" ]; then
        mkdir -p $config_dir
        setup
    fi

    . $config_file
}

setup() {
    read -p "Inform your GPG key: " key
    echo DEFAULT_GPG_KEY=""$key"" > $config_file
    echo
    echo "Done!"
}

new() {
    read -p "Name the new key: " name 
    read -sp "Inform the password (hidden): " pass
    echo $pass | gpg --encrypt --armor -r $DEFAULT_GPG_KEY > "keyring/$name.pwd"
    echo
    echo "Done!"
}

get() {
    cat "keyring/$1.pwd" | gpg --decrypt | xclip -selection c
    echo "Done! You can now paste your password."
}

del() {
    read -p "Are you sure? (y|N)" -n 1 -r
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        rm "keyring/$1.pwd"
        echo
        echo "Password removed!"
    fi
}

list() {
    ls -l ./keyring
}

#todo: create a help function

init

"$@"
