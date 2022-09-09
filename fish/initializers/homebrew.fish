set HOMEBREW_INSTALL_FROM_API true
set HOMEBREW_NO_ANALYTICS true
if test -e /opt/homebrew/bin/brew
  set PATH /opt/homebrew/bin $PATH
else
  set PATH /usr/local/bin $PATH
end
