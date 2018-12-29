# Important
Ignore these messages
```
ERROR: AcceptToMemoryPool: tx inputs not found
ERROR: AcceptToMemoryPool: joinsplit requirements not met
```

### Linux
Open a new terminal, type the follwing command
```
tail -f ~/.komodo/PIRATE/debug.log
```

### macOS (OSX)
Open a new terminal and type the following commands
```
cd ~/Library/Application\ Support/Komodo/PIRATE
tail -f debug.log
```

### Windows
1. Goto `%AppData%\Komodo\PIRATE`
2. Right-click on empty place and start Windows PowerShell from that folder
3. Type `get-content debug.log -wait` and hit Enter button on your keyboard

You will see what is happening with the Pirate daemon.
