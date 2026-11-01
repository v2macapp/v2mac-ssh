# SSH for V2Mac Sandbox

SSH as a V2Mac Secure Sandbox app: it opens in your Terminal, and servers see only this mini VM's exit. Your keys stay on the Mac: V2Mac asks before this app can use your ssh-agent. Agent forwarding is off. Debian supplies and updates OpenSSH.

Install it from the V2Mac Store in the Sandbox window.

Build: `Scripts/package.sh . "$(cat base.txt)" <url prefix>`. Release: push a `v*` tag. Built from [v2mac-plugin-template](https://github.com/v2macapp/v2mac-plugin-template). Licence: 0BSD.
