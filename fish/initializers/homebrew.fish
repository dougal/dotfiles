set HOMEBREW_INSTALL_FROM_API true
set HOMEBREW_NO_ANALYTICS true
if test -e /opt/homebrew/bin/brew
  fish_add_path --append /opt/homebrew/bin
else
  fish_add_path --append /usr/local/bin
end
