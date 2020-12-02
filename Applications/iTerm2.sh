#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# iTerm
[[ "${_iterm_enabled:-true}" == false ]] && return
[[ -e "/Applications/iTerm.app" ]] || return
echo "${BASH_SOURCE[0]}"

# Prefs From Custom Folder
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool "${_iterm_prefs_custom:-false}"
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "${_iterm_prefs_custom_folder:-~/.iterm2}"

# vim: set ft=sh syn=sh sw=2 ts=2 et :
# eof
