# my-vimrc

### To add .vimrc and plugins
  1. Get .vimrc from github
  
      `wget https://raw.githubusercontent.com/azamatsmith/my-vimrc/master/.vimrc ~/.vimrc`
  2. Get Vundle from github
  
      `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
      
  3. Install vim plug
  ```
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ```
  
  4. Add a temp directory for swap files
      `mkdir ~/tmp`
      
  5. Open vim
      `vim`
      
  6. Install Plugins
  ```
  :PlugInstall
  
  then
  
  :VundleInstall
  ```
    
  Enjoy!
   
