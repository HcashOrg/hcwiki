# <img class="dcr-icon" src="/img/dcr-icons/Dcrtl.svg" /> Manual CLI Installation

Last updated for v1.2.0.

---

The newest binary releases can be found [here](https://github.com/HcashOrg). With the exception of the `.exe` and `.dmg` files, they are archives of the latest executable binaries for each release. Although most of this will be extract and go, instructions are provided for [Windows](#windows), [macOS](#macos), and [Linux](#linux) below (assumed proficiency for FreeBSD users).

## Windows

!!! note

	Windows 7/8/10 provides native support for `.zip` files, therefore it is preferable to use the `.zip` file. If you decide to download the `.tar.gz` file, it will require two separate extractions in some third-party application (7-Zip, WinRAR, etc.) to get to the actual binaries. Instructions are provided for the `.zip` file.

1. Download the correct file for your computer:

    | Architecture | Filename                          |
    | ------------ | ----------------------------------|
    | 32-bit       | `hc-windows-386-v1.2.0.zip`   |
    | 64-bit       | `hc-windows-amd64-v1.2.0.zip` |

2. Navigate to download location and extract the `.zip` file:

    Right click on the `.zip` file, select "Extract All..." and a prompt should open asking for the directory to use. The default will extract the `.zip` to a folder with the same name. It should include `hcctl`, `hcd`, `hcwallet`, `sample-hcctl.conf`, `sample-hcd.conf`, and `sample-hcwallet.conf`.

## macOS

1. Download the correct file for your computer:

    | Architecture | Filename                            |
    | ------------ | ----------------------------------- |
    | 64-bit       | `hc-darwin-amd64-v1.2.0.tar.gz` |

2. Navigate to download location and extract the `.tar.gz` file:

    **Finder:** simply double click on the `.tar.gz` file.  
    **Terminal:** use the `tar -xvzf filename.tar.gz` command.

    Both of these should extract the `.tar.gz` file into a folder that shares the same name. (e.g. `tar -xvzf hc-darwin-amd64-v1.2.0.tar.gz` should extract to `hc-darwin-amd64-v1.2.0`). It should include `hcctl`, `hcd`, `hcwallet`, `sample-hcctl.conf`, `sample-hcd.conf`, and `sample-hcwallet.conf`.

!!! note

    If you are using Safari on macOS Sierra and have the 'Open "safe" files after downloading' preference enabled, `.gz` and `.zip` files are automatically extracted after download. The `tar -xvzf filename.tar.gz` command results in this error: `tar: Error opening archive: Failed to open 'filename.tar.gz'`. Use `tar -xvzf filename.tar` instead (remove the `.gz` from the previous command).

## Linux

1. Download the correct file for your computer:

    | Architecture | Filename                           |
    | ------------ | ---------------------------------- |
    | 32-bit       | `hc-linux-386-v1.2.0.tar.gz`   |
    | 64-bit       | `hc-linux-amd64-v1.2.0.tar.gz` |
    | 32-bit ARM   | `hc-linux-arm-v1.2.0.tar.gz`   |
    | 64-bit ARM   | `hc-linux-arm64-v1.2.0.tar.gz` |

2. Navigate to download location and extract the `.tar.gz` file:

    **Ubuntu File Browser:** simply right click on the `.tar.gz` file and select "Extract Here".  
    **Terminal:** use the `tar -xvzf filename.tar.gz` command.

    Both of these should extract the `.tar.gz` file into a folder that shares the same name. (e.g. `tar -xvzf hc-linux-amd64-v1.2.0.tar.gz` should extract to `hc-linux-amd64-v1.2.0`). It should include `hcctl`, `hcd`, `hcwallet`, `sample-hcctl.conf`, `sample-hcd.conf`, and `sample-hcwallet.conf`.

---

## Minimum Configuration

At the very minimum, for `hcd`, `hcwallet`, and `hcctl` to be able to communicate with each other, they need to be launched with the same `rpcuser`/`rpcpass` combination. For manual configuration please follow these steps:

1. If the OS-specific home directories listed in [Configuration File Locations](/getting-started/startup-basics#configuration-file-locations) do not exist, please create them for `hcd`, `hcwallet`, and `hcctl`.

2. Choose an arbitrary username and password, these will only be used for each application to communicate via remote procedure call. The easiest configuration is to set them all equal.

3. Using your favorite text editor, create a new text file and add the following lines:

        [Application Options]
        rpcuser=<chosen-username>
        rpcpass=<chosen-password>

    Save it as `hcd.conf` in `hcd`'s home directory.

4. Create another new text file and add the following lines:

        [Application Options]
        username=<chosen-username>
        password=<chosen-password>

    Save it as `hcwallet.conf` in `hcwallet`'s home directory.

5. Create a third text file and add the following lines:

        [Application Options]
        rpcuser=<chosen-username>
        rpcpass=<chosen-password>

    Save it as `hcctl.conf` in `hcctl`'s home directory.

Please see the [sample config] for more customization options.