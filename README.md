# CS:GO Configuration

## Installation

1. Find your config folder

   You can find CS:GOs config folder under the path: `<STEAM>\userdata\<YOURID>\730\local\cfg`.
    - Where `<STEAM>` is the location of the STEAM folder on your disk, e.g. `C:\Steam`.
    - Where `<YOURID>` is the ID of your Steam account, e.g. `1234567`.

   For example: `C:\Steam\userdata\987654321\730\local\cfg`.

2. Download - https://github.com/jakoch/csgo-config/archive/master.zip
3. Extract the content of `master.zip` into the config folder.
4. Create file `personal.cfg` add your personal setting there. See below for an example.
5. Set CS:GO Launch Options

   Go to `Steam > Library > Counter-Strike: Global Offensive (right-click) > Properties > Set Launch Options...`:

   Set: `-high -tickrate 128 -refresh 144 -novid -noborder -noaafonts -nod3d9ex1 -console +exec autoexec.cfg`

6. Start CS:GO

## Understanding the execution flow of the configuration

1. `autoexec.cfg` is loaded, because of the csgo start option entry.
2. the individual config files are loaded by `autoexec.cfg`
   - firstly, the `teambase.cfg` is loaded. Giving you a solid base configuration.
   - secondly, the `personal.cfg` is loaded. Enabling you to overload any prior config values set with your personal settings.
5. finally, the `autoexec.cfg` runs `host_writeconfig` to write the new `config.cfg`.

That's it.

## `personal.cfg`

```
// ---------------------------
// Ident
// ---------------------------

name "johndoe"
cl_clanid "1"             // clan ID for name decoration (Steam Group ID)




```

## Console Commands

- `differences` - show all convars which are not at their default values
- `demoui` - show the demo player


## FAQ

### How to verifyintegrity of my game files?

1. Restart your computer and launch Steam
2. Go to properties by right-clicking `Steam > Library > Counter-Strike: Global Offensive (right-click) > Properties`
3. Select the `Local files` tab and click the `Verify integrity of game files...` button.
4. Steam will verify the game's files - this process may take several minutes.

Source: https://support.steampowered.com/kb_article.php?ref=2037-QEUH-3335

### How can i reset my config to default values?

1. Use the following start option: `-autoconfig`.
2. Run game
3. Close game
4. Remove `-autoconfig` start option

### What does this CLI option do?

Source: https://developer.valvesoftware.com/wiki/Command_Line_Options
