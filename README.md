# Setup basic
1. Check For Updates
```
sudo apt update && sudo apt upgrade
```

2. Improve Battery by installing TLP for Linux

```
sudo apt-get install tlp tlp-rdw
```
Once installed, run the command below to start it:

```
sudo tlp start
```
3. Install GNOME Shell Extensions

GNOME Shell Extensions are a great way for GNOME desktop users to customize their user experience by configuring interface components like launching animations, window management.

The GNOME Shell Extensions mainly work as extensions for your web browsers, such as chrome or firefox. Installation is done with just a flick of a button. A must-have feature to have after installing Ubuntu.

GNOME Extensions website: https://extensions.gnome.org/ or 
https://www.gnome-look.org

4. Change the look of your desktop with new themes and icons

allow you to customize your desktop environment the way you like.
```
sudo apt install gnome-tweak-tool -y
```
or

``` 
sudo apt install gnome-tweaks
```

5. New Theme and Icons
   
   5.1. Materia Manjaro GTK 

   https://www.gnome-look.org/p/1300363

    5.2. Vimix cursors

    https://www.gnome-look.org/s/Gnome/p/1358330


    5.3.Breeze-Adapta-Cursor

    ```
    curl https://raw.githubusercontent.com/mustafaozhan/Breeze-Adapta-Cursor/master/install.sh | bash
    ```

    https://github.com/mustafaozhan/Breeze-Adapta-Cursor

    5.4. Nordzy-cursors

    https://www.gnome-look.org/s/Gnome/p/1571937

    5.5. Numix theme
    
    ```
    sudo apt install numix-icon-theme-square
    ```

    5.6. PLANE ICON THEME
    
    https://www.gnome-look.org/p/1178976/

6. Install Flatpak

Flatpak is a software utility from Fedora which lets you get access to more applications and software packages in Linux and its various distros. Many applications you might not find in Software Center, but with the help of Flatpak, you can bypass this.

First of all, install Flatpak on Ubuntu using the following command.
```
$ sudo apt-get install flatpak
```
7. GNOME Sushi

Many of you might have seen the Quick Look feature on macOS that lets you see a preview of any file.

Well, the same can be done on Ubuntu with GNOME Sushi which uses Nautilus, which is a popular file manager from GNOME.
```
$ sudo apt-get install gnome-sushi
```
# Install Vim

```
sudo apt install vim 
```

### config vim

https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/

```
cat > ~/.vimrc << EOF
set number
set shiftwidth=4
set tabstop=4
set expandtab
set nobackup
set scrolloff=10
set nowrap
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch
set hlsearch
set history=1000
EOF
```
# Install Zsh

1. Install zsh
   
```
sudo apt install zsh
```

2. Install Oh-my-zsh

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
```
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc                           
```

```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting

echo "source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
```

```
cp wyatt.zsh-theme ~/.oh-my-zsh/themes 
sed -i '11s/.*/ZSH_THEME="wyatt"/' ~/.zshrc
```

# Install NodeJS

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
```

```
export NVM_DIR="$HOME/.nvm"                                                                                             [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm                                                      [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion  
```
   
```
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
```

```
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
```

```
nvm install --lts
```

# Install VS code

#### Install theme: 
- SynthWave '84 Theme
- Atom One Dark Theme
- 

# Install docker

Unintall old version

```
sudo apt-get remove docker docker-engine docker.io containerd runc
```

```
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release 
```

```
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
```

```
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

```
sudo apt-get update
sudo chmod a+r /etc/apt/keyrings/docker.gpg
sudo apt-get update
```

```
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo docker run hello-world
```
### Install docker-compose
```
curl -SL https://github.com/docker/compose/releases/download/v2.15.1/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose

docker-compose
```

Note

If the command docker-compose fails after installation, check your path. You can also create a symbolic link to /usr/bin or any other directory in your path. For example:
```
 sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
```

### Install Mongodb

### Install MySQL

###  Ibus

### Install Vitals - System Monitor

Install support packages
```
sudo apt install gnome-shell-extension-manager gir1.2-gtop-2.0 lm-sensors
```

Install at: https://extensions.gnome.org/extension/1460/vitals/


Detail at: https://github.com/corecoding/Vitals