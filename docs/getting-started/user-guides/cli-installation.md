# <img class="dcr-icon" src="/img/dcr-icons/Dcrtl.svg" /> CLI Installation guide

This page was last updated for  v2.0.0.

---

## hcinstall 

`hcinstall` is the recommended method to install the Hcash command line interface tools `hcd`, `hcwallet`, and `hcctl`.

`hcinstall` is an automatic installer and upgrader for the Hcash software. The newest release can be found here: [https://github.com/HcashOrg](https://github.com/HcashOrg). Binaries are provided for Windows, macOS, Linux, OpenBSD, and FreeBSD. Executing installer will install `hcd`, `hcwallet`, and `hcctl`. Instructions are provided for macOS, Linux, and Windows below (assumed proficiency for *BSD users).

`hcinstall` will automatically download the precompiled, signed binary package found on GitHub, verify the signature of this package, copy the binaries within the package to a specific folder dependent on OS, create configuration files with settings to allow the 3 applications to communicate with each other, and run you through the wallet creation process. After running through `hcinstall`, you will be able to launch the software with no additional configuration.

> macOS:

1. Download the correct file:

    For 32-bit computers, download the `hcinstall-darwin-386- v2.0.0` file. <br />
    For 64-bit computers, download the `hcinstall-darwin-amd64- v2.0.0` file.

2. Make hcinstall-darwin-xxxx-vx.x.x an executable within your terminal, and run it:

    Navigate to the directory where the hcinstall file was downloaded using the `cd` command, run chmod with u+x mode on the hcinstall file, and run the executable that is created. Below is an example of the commands (change directories or filename as needed):
    
    `cd ~/Downloads/` <br />
    `chmod u+x hcinstall-darwin-amd64- v2.0.0` <br />
    `./hcinstall-darwin-amd64- v2.0.0`
    
3. The executable binaries for `hcd`, `hcwallet`, and `hcctl` can now be found in the `~/HcashOrg/` directory. Before the `hcinstall` process completes, you will be taken to the wallet creation prompt. Follow the steps within the [Wallet Creation Walkthrough](/getting-started/user-guides/hcwallet-setup.md#wallet-creation-walkthrough) of the hcwallet Setup guide to finish.

> Linux:

1. Download the correct file:

    For 32-bit computers, download the `hcinstall-linux-386- v2.0.0` file. <br />
    For 64-bit computers, download the `hcinstall-linux-amd64- v2.0.0` file. <br />
    For 32-bit ARM computers, download the `hcinstall-linux-arm- v2.0.0` file. <br />
    For 64-bit ARM computers, download the `hcinstall-linux-arm64- v2.0.0` file.

2. Make hcinstall-linux-xxxx-vx.x.x an executable within your terminal, and run it:

    Navigate to the directory where the hcinstall file was downloaded using the `cd` command, run chmod with u+x mode on the hcinstall file, and run the executable that is created. Below is an example of the commands (change directories or filename as needed):
    
    `cd ~/Downloads/` <br />
    `chmod u+x hcinstall-linux-amd64- v2.0.0` <br />
    `./hcinstall-linux-amd64- v2.0.0`
    
3. The binaries for `hcd`, `hcwallet`, and `hcctl` can now be found in the `~/hcash/` directory. Before the `hcinstall` process completes, you will be taken to the wallet creation prompt. Follow the steps within the [Wallet Creation Walkthrough](/getting-started/user-guides/hcwallet-setup.md#wallet-creation-walkthrough) of the hcwallet Setup guide to finish.

> Windows:

1. Download the correct file:

    For 32-bit computers, download the `hcinstall-windows-386- v2.0.0.exe` file. <br />
    For 64-bit computers, download the `hcinstall-windows-amd64- v2.0.0.exe` file. <br />

2.  Run the hcinstall executable file.

    You can either double click it or run it from the Command Prompt. 
    
3. The binaries for `hcd`, `hcwallet`, and `hcctl` can now be found in the `%HOMEPATH%\hcash\` directory (usually `%HOMEPATH%` is `C:\Users\<username>\`). Before the `hcinstall` process completes, you will be taken to the wallet creation prompt. Follow the steps within the [Wallet Creation Walkthrough](/getting-started/user-guides/hcwallet-setup.md#wallet-creation-walkthrough) of the hcwallet Setup guide to finish.
