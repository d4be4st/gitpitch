@title[Intro]

# Working with your terminal

---

@title[iTerm]

## iTerm

Note:

- not the same as terminal
- support for more colors
- support for tabs and panes
- configurable

+++

@snap[north]
### Keybindings
@snapend

Key | effect
------|--------
⌘+t | new tab
⌘+number | jump to tab
⌘+d | pane vertical
⌘+Shift+d | pane horizontal
⌘+⌥+arrows | move around panes
⌘+Shift+Enter | zoom
⌘+L | Clear screen

+++

@snap[north]
### Extra
@snapend

@ul[list-smaller](false)
- You can drag and drop files from finder to get absolute path
- You can open files in default application with `open [file]`
- Preferences:
  - [General] Confirm quit
  - [Profile/General] reuse previous session's directory
  - [Profile/Terminal] unlimited scrollback
- configure alt + arrows for word skipping: https://coderwall.com/p/h6yfda/use-and-to-jump-forwards-backwards-words-in-iterm-2-on-os-x
@ulend

---

@title[zsh]

## zsh

+++

@snap[north]
### shell
@snapend

- `bash` is default
- differences: https://stackabuse.com/zsh-vs-bash/

+++

@snap[north]
### keybindings
@snapend

Key | effect
------|--------
^+d | exit, logout
^+a | go to beginning of the line
^+e | go to end of the line
⌥+f | go forward one word
^+f | go forward one character
⌥+b | go back one word
^+b | go back one character

+++

@snap[north]
### keybinding 2
@snapend

Key | effect
------|--------
⌥+Backspace | delete word (without symbols)
^+w | delete word (with symbols)
^+u | delete before cursor
^+k | delete after cursor
^+p | previous command
^+n | next command
^+r | history search

+++

@snap[north]
### other
@snapend

command | effect
------|--------
cd | go to home directory
cd - | go to previous directory
exec $SHELL | reinitialize shell

---

@title[oh-my-zsh]

## OhMyZsh

+++

- .zshrc - edit here :)
- themes: https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
- plugins: https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins-Overview
  * history-substring-search
  * z
  * git (https://github.com/robbyrussell/oh-my-zsh/wiki/Plugin:git)
- export environment variables
  * EDITOR
  * PATH

---

@title[programs]

## Programs

+++

@snap[north]
### brew
@snapend

- brew install
- brew info
- brew services list
- brew switch
- brew doctor

+++

@snap[north]
### z
@snapend

https://github.com/rupa/z

+++

@snap[north]
### fzf
@snapend

- https://github.com/junegunn/fzf#usage
- rake routes | fzf
- ^+r - fuzzy history search


+++

@snap[north]
### cat
@snapend

cat [file]

+++

@snap[north]
### grep
@snapend

grep [PATTERN] files

---

## Clipboard manager

- flycut
- alfred pro
