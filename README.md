# Forrest Pruitt's Shell Utility Configurations
This is a collection of scripts, utilities, and fonts I use to make my terminal experience better. I primarily use iTerm2 on OSX, so there are some OSX-specific configurations here for some tools. ZSH is my shell of choice, and I've got a pretty neat customization of a popular OhMyZSH shell packaged in here as `fpruitt.zsh-theme` . 

## How to set up nifty zsh theme + plugins
* Install iTerm
https://www.iterm2.com/downloads.html
* Add Solarize Dark theme as the default theme

* Install ZSH using brew, if you don't have it yet:
```
brew install zsh
```
Append the output of `which zsh` to the end of the file `/etc/shells/` (Or ensure a softlink exists at `/bin/zsh/` for wherever brew just put zsh)
```
echo '$(which zsh)' >> /etc/shells
```
* Install oh-my-zsh (Note: This takes care of setting zsh as your default shell
`sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

* Add fpruitt.zsh-theme to the themes directory in oh-my-zsh
cp <repo_directory>/fpruitt.zsh-theme ~/.oh-my-zsh/themes/

* Replace/modify your current .zshrc with the contents of my .zshrc, modifying as you see fit

## How to set up git config
Replace info in gitconfig with your information, then:
```
cat <repo_directory>/gitconfig >> ~/.gitconfig
```

## Set up option + arrow to jump words(⌥  + [<-- || -->]) 
* In iTerm2 preferences, go to the 'Keys' menu.
* Find '⌥  ->', double click on it, set the action as `Send Escape Sequence`, then set the code to `Esc+ b`
* Repeat for `⌥ <-`, replacing the code with `Esc+ f`.
* In the main Keys menu at the bottom, choose 'Left option key acts as `+Esc`', 'Right option key acts as `+Esc`', or both.

## Notes
* I like to set my cursor to a lighter color to contrast against the background. This isn't included in the theme. To do this, uncheck 'Smart cursor color' and choose a color value for 'Cursor' in iTerm2 Preference -> Color tab.
* 

## Credit
* My zsh theme file is a slightly updated version of the files found at https://gist.github.com/remy/6079223#file-remy-zsh-theme, which is a modified version of the popular agnoster theme packaged with oh-my-zsh. 
* The Solarize Dark theme packaged here can be found at https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized
* My gitconfig file comes from https://github.com/mrhwick/gitconfig . 
