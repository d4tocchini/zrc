
# # Check if script is run non-interactively (e.g. CI)
# # If it is run non-interactively we should not prompt for passwords.
# if [[ ! -t 0 || -n "${CI-}" ]]; then
#   NONINTERACTIVE=1
# fi

# # First check if the OS is Linux.
# if [[ "$(uname)" = "Linux" ]]; then
#   PKG_ON_LINUX=1
# fi


# # string formatters
# if [[ -t 1 ]]; then
#   tty_escape() { printf "\033[%sm" "$1"; }
# else
#   tty_escape() { :; }
# fi
# tty_mkbold() { tty_escape "1;$1"; }
# tty_underline="$(tty_escape "4;39")"
# tty_blue="$(tty_mkbold 34)"
# tty_red="$(tty_mkbold 31)"
# tty_bold="$(tty_mkbold 39)"
# tty_reset="$(tty_escape 0)"




git clone https://github.com/d4tocchini/zrc.git

