_register() {
  if ! git config --global --get-all alias.$1 &>/dev/null; then
    git config --global alias.$1 '!a() { if [[ "$1" == "-s" || "$1" == "--scope" ]]; then git commit -m "'$1'(${2}): ${@:3}"; else git commit -m "'$1': ${@}"; fi }; a'
  fi
}

_register 'build'
_register 'chore'
_register 'ci'
_register 'docs'
_register 'feat'
_register 'fix'
_register 'perf'
_register 'refactor'
_register 'revert'
_register 'style'
_register 'test'
