vim-django-settings
===================

1. Clone repository 
    ```
    $ git clone https://github.com/evgeniy-klemin/vim-django-settings.git
    ```
2. Copy .vimrc in home directory 
    ```
    $ cp vim-django-settings/.vimrc ~/
    ```
3. Setup 256 colors xterm
    ```
    $ sudo sh -c "echo TERM=xterm-256color >> /etc/environment"
    ```
4. install vundle
    ```
    $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    ```
5. Install ctags
    ```
    $ sudo aptitude install exuberant-ctags
    ```
6. Launch `vim` and run `:BundleInstall` 
7. Reload vim settings `:so ~/.vimrc`
