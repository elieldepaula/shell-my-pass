# Shell My Pass

This project aims to be a simple but powerfull password manager using Shell and native tools you probably already have. Since we use Linux, you'll need to councern with very few dependencies, or not :) 

## Dependencies

- GPG
- Xclip

## Setup

```shell
# Clone the project
git clone https://github.com/elieldepaula/shell-my-pass.git mypass
# Move the folder (optional)
sudo mv -R mypass /usr/opt
cd /usr/opt/mypass
chmod +x mypass.sh
ls -s mypass.sh /usr/bin/mypass
mypass setup
Inform your GPG key
```
