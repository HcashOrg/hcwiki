# Startup Basics

This guide was last updated for v1.0.0

---

This guide applies to command-line application users. HC users can safely ignore the use of config files - HC handles basic configuration automatically. It is also worth noting that some of our guides show configuration file settings and other guides show startup command flags. 

---

## Configuration File Locations

All of the HC software, when started, reads from a configuration file to determine which settings it should enable/disable/set during that initial load. All of the command line startup flags `(e.g. hcwallet --testnet)` can be replaced by settings within the appropriate configuration file `(e.g. hcwallet --testnet could be replaced by testnet=1 in hcwallet.conf)`.

These configuration files are located within the application home directory of the application. The location of these default home directories for Windows, macOS, and Linux are listed below:

| OS      | hcd, hcwallet, hcctl App Directories    |
| -------:|:------------------------------------------:|
| Windows | `%LOCALAPPDATA%\hcd\`                     |
|         | `%LOCALAPPDATA%\hcwallet\`                |
|         | `%LOCALAPPDATA%\hcctl\`                   |
| macOS   | `~/Library/Application Support/hcd/`      |
|         | `~/Library/Application Support/hcwallet/` |
|         | `~/Library/Application Support/hcctl/`    |
| Linux   | `~/.hcd/`                                 |
|         | `~/.hcwallet/`                            |
|         | `~/.hcctl/`                               |

Each of these folders is allowed its own `.conf` file, named after the individual application (`e.g. hcd uses hcd.conf`). Please also note that the `hcd` and `hcwallet` home directories are automatically created when each application is first launched. You will have to manually create a `hcctl` home directory to utilize a config file.

The [hcinstall](/getting-started/user-guides/cli-installation.md) installation method automatically creates configuration files, with the [minimum configuration settings](/advanced/manual-cli-install.md#minimum-configuration) already enabled. 

The [Manual Installation](/advanced/manual-cli-install.md#installation) method includes sample configuration files within the .zip/.tar.gz. It is recommended to copy these config files into the appropriate directory described above, and rename them to remove 'sample-'. These files have many settings commented out (comments are not read by the program during runtime) so all of these settings are effectively disabled. You can enable these pre-written settings by simply deleting the semi-colon before the line.

---

## Startup Command Flags

A majority of the settings you are able to set via the configuration file can also be passed to the application as parameters during launch. For example, the following OS-specific commands would open `hcd` for Testnet use, an alternative to using `testnet=1` in your config file:

    Windows: hcd.exe --testnet
    macOS: ./hcd --testnet
    Linux: ./hcd --testnet

The above example would first look to the `hcd` configuration file for settings and then look to the executable command to enable the testnet setting. 

---

## Advanced Usage

[Storing Login Details in Config Files](/advanced/storing-login-details.md) <!-- This has the same information found in the above, Minimum Configuration section. Could probably delete. -->

[Full List of Options for Each Application](/advanced/program-options.md)
