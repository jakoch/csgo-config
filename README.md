# CS:GO Configuration

This is an updateable team config with support for personal settings.

## What's this?

The goal is to provide an easy and fast way to get a CS:GO team config file in place,
while still being able to tweak settings personally to have a more tailored experience.

Normally, you would configure your CS:GO game using the GUI.
The changes are then saved to the `config.cfg` file or `video.txt` and `videodefaults.txt`.

This repository provides two important files.
A `teambase.cfg`, which is the main configuration file for your team.
And an `autoexec.cfg`, which loads `teambase.cfg` before loading `personal.cfg`.
This approach enables you to use a shared team config with personal settings.

## **Table of Contents** 

- [CS:GO Configuration](#csgo-configuration)
    - [What's this?](##whats-this)
    - [Features](#features)
    - [Installation](#installation)
    - [How does this work?](#how-does-this-work)
    - [Personal Setup - personal.cfg](#personal-setup---personalcfg)
    - [Console Commands](#console-commands)
    - [FAQ](#faq)
        - [How to verify the integrity of my game files?](#how-to-verify-the-integrity-of-my-game-files)
        - [How can i reset my config to default values?](#where-can-i-find-the-documentation-for-cli-options)
        - [Where can i find the documentation for CLI options?](#where-can-i-find-the-documentation-for-cli-options)
    - [Contributing](#contributing)
    - [Authors](#authors)
    - [License](#license)

## Features

- `autoexec.cfg` start option approach
- solid base configuration file for your team: `teambase.cfg`
- support for a `personal.cfg`
- `teambase.cfg` is updateable using cURL via `update.bat`
- `config.cfg` file is rewritten on CS:GO start

## Installation

1. Find your config folder

   You can find CS:GOs config folder under the path: `<STEAM>\userdata\<YOURID>\730\local\cfg`.
    - Where `<STEAM>` is the location of the STEAM folder on your disk, e.g. `C:\Steam`.
    - Where `<YOURID>` is the ID of your Steam account, e.g. `1234567`.

   For example: `C:\Steam\userdata\987654321\730\local\cfg`.

2. Download - https://github.com/jakoch/csgo-config/archive/master.zip
3. Extract the content of `master.zip` into the config folder
4. Create file `personal.cfg`. Add your personal setting to `personal.cfg`. See below for an example.
5. Set CS:GO Launch Options

   Go to `Steam > Library > Counter-Strike: Global Offensive (right-click) > Properties > Set Launch Options...`:

   Set: `-high -tickrate 128 -refresh 144 -novid -console +exec autoexec.cfg`

6. Start CS:GO

## How does this work?

1. `autoexec.cfg` is loaded, because of the csgo start option entry.
2. the individual config files are loaded by `autoexec.cfg`
   - firstly, the `teambase.cfg` is loaded. Giving you a solid base configuration.
   - secondly, the `personal.cfg` is loaded. Enabling you to overload any prior config values set with your personal settings.
5. finally, the `autoexec.cfg` runs `host_writeconfig` to write the new `config.cfg`.

That's it.

## Personal Setup - `personal.cfg`

```
// ---------------------------
// Ident
// ---------------------------

name "johndoe"
cl_clanid "1"                       // clan ID for name decoration (Steam Group ID)

// ---------------------------
// Sensitivity
// ---------------------------
sensitivity                  "2"
zoom_sensitivity_ratio_mouse "1"

// ---------------------------
// Crosshair 
// ---------------------------


// ---------------------------
// Keyboard Binds
// ---------------------------


```

## Console Commands

- `differences` - show all convars which are not at their default values
- `demoui` - show the demo player

## FAQ

### How to verify the integrity of my game files?

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

### Where can i find the documentation for CLI options?

https://developer.valvesoftware.com/wiki/Command_Line_Options

## Contributing

Feel free to contribute. Please submit pull requests to us.

## Authors

* **Jens A. Koch** - *Initial work* - [jakoch](https://github.com/jakoch)

See also the list of [contributors](https://github.com/jakoch/csgo-config/contributors) who participated in this project.

## License

MIT License, see LICENSE.md
