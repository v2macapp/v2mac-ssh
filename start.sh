#!/bin/bash
# Asks where to connect and runs ssh through this mini VM's exit, with the Mac's keys after V2Mac asks.
mkdir -p ~/.ssh && chmod 700 ~/.ssh
[ "$(stat -f -c %T ~)" = tmpfs ] && echo "This mini VM is Disposable: known hosts and ~/.ssh/config vanish when it stops."
hosts=$(sed -n 's/^[Hh]ost  *\([^*?]*\)$/\1/p' ~/.ssh/config 2>/dev/null | tr '\n' ' ')
[ -n "$hosts" ] && echo "Hosts in ~/.ssh/config: $hosts"
while read -r -e -p "Connect to (user@host or ssh://user@host:port; empty for a shell): " target; do
  case "$target" in
    '') bash -l ;;
    -*) echo "That looks like an option, not a host." ;;
    *) ssh -o ForwardAgent=no -- "$target" ;;
  esac
done
