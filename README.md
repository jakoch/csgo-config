# CS:GO Configuration

== Understanding the execution flow of the configuration

1. `autoexec.cfg` is loaded, because of the csgo start option entry.
2. the individual config files are loaded by `autoexec.cfg`
   - firstly, the `base.cfg` is loaded. Giving you a solid base configuration.
   - secondly, the `personal.cfg` is loaded. Enabling you to overload any prior config value with your personal setting.
5. finally, the `autoexec.cfg` runs `host_writeconfig` to write the new `config.cfg`.

That's it.
