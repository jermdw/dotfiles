# Custom Functions
# https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789
# # Create a new directory and enter it
function mk() {
  mkdir -p "$@" && cd "$@"
}
# Open man page as PDF
function manpdf() {
 man -t "${1}" | open -f -a /Applications/Preview.app/
}
