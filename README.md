# CS:GO Configuration

## Installation

1. Download
2. Set CS:GO executable start options:
   - `-high -tickrate 128 -refresh 144 -novid -noborder -noaafonts -nod3d9ex1 -console +exec autoexec.cfg`
3. Create file `personal.cfg` and add your personal setting there. See below for an example.
4. Start CS:GO

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

name "stunt"
//cl_clanid "47997"             // clan ID for name decoration (Steam Group ID for knd-squad is 47997)




```

## Console Commands

- `differences` - show all convars which are not at their default values
- `demoui` - show the demo player
