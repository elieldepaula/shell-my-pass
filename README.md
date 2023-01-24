# Shell My Pass!

This project aims to be a simple but powerful password manager using the Shell and native tools you probably already have. Since we use Linux, you will need to worry about very few dependencies, or not :)

## Dependencies

- GPG (and a valid key)
- Xclip

## Setup

Follow the steps below to setup.

```shell
# Clone the project
git clone https://github.com/elieldepaula/shell-my-pass.git mypass

# Enter the folder
cd mypass

# Give the execution permission
chmod +x mypass.sh

#Inform your GPG key
mypass setup 
```

You can also create a link to the /usr/local/bin folter tove global access of the script.

## Usage

**Setup**

```shell
./mypass.sh setup
```
Before start using the script, you need to setup your GPG key. Do this with the command above.

This command will generate a config file in your ~/.config folder.

**Saving a password**

```shell
./mypass.sh new 
```
Use this command to save a password in the 'keyring' folder. A new file will be created and encrypted with your GPG key.
You'll be asked about the **Name** you want to give to the password, ex. 'Gmail', an the password.

**Getting the password**

```shell
./mypass.sh get [password-name]
```
This command decrypt the password [password-name] and save in the __Clipboard__, so you can use your password by just using Ctrl+v.

**Listing thte passwords**

```shell
./mypass.sh list
```
As the name says, this command will list all passwords saved in the 'keyring' folder.

**Removing passwords**

```shell
./mypass.sh del [password-name]
```

This command remove a password saved in the 'keyring' folder. This action cannot be undone, so be carefull.

## License

### The MIT License (MIT)

Copyright (c) 2023 Eliel de Paula Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions: The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

