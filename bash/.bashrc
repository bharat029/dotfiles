# ~/.bashrc: executed by bash(1) for non-login shells.
# Terminal.app opens LOGIN shells, so ~/.bash_profile sources this file.

# If not running interactively, don't do anything
case $- in
  *i*) ;;
  *) return;;
esac

# Homebrew. Must come early so everything below finds brew-installed tools.
if [ -x /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [ -x /usr/local/bin/brew ]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

# Prefer GNU coreutils/sed/grep over the BSD versions macOS ships.
# Requires: brew install coreutils gnu-sed grep findutils
for gnudir in coreutils gnu-sed grep findutils; do
  [ -d "$(brew --prefix 2>/dev/null)/opt/$gnudir/libexec/gnubin" ] && \
    PATH="$(brew --prefix)/opt/$gnudir/libexec/gnubin:$PATH"
done
unset gnudir
export PATH

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null
done
unset option

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh

for fname in ~/.bash_{aliases,prompt,helper,exports,utils}; do
  [ -r "$fname" ] && . "$fname";
done
unset fname

# Bash completion (Homebrew's bash-completion@2 for bash 4+)
# Requires: brew install bash-completion@2
if ! shopt -oq posix; then
  BREW_PREFIX="$(brew --prefix 2>/dev/null)"
  if [ -r "${BREW_PREFIX}/etc/profile.d/bash_completion.sh" ]; then
    . "${BREW_PREFIX}/etc/profile.d/bash_completion.sh"
  fi
  unset BREW_PREFIX
fi

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null; then
  complete -o default -o nospace -F _git g;
fi;

# uv completions (replaces the old conda init block)
command -v uv &> /dev/null && eval "$(uv generate-shell-completion bash)"
command -v uvx &> /dev/null && eval "$(uvx --generate-shell-completion bash)"
