# <img class="dcr-icon" src="/img/dcr-icons/Wallet.svg" /> hcGUI Setup Guide

Last updated for v2.0.0.

---

`hcGUI` is a graphical user interface for `hcwallet`. When this application launches, it automatically starts its own instance of the command line tools `hcd` and `hcwallet` in the background.

!!! info "Blockchain Download"

	hcGUI needs to download a full copy of the HC blockchain before it can be used. This means that a large download must be completed and a large amount of storage space must be be available on the PC where hcGUI is intalled.


---

## Download and Install

The latest version of hcGUI can be downloaded from [https://github.com/HcashOrg](https://github.com/HcashOrg).

> Windows

1. Download the Windows installer `hcGUI-v2.0.0.exe`.

1. Double click the installer and follow the instructions. This will install and automatically start up hcGUI to download the HC blockchain and set up your wallet.

1. The installer adds a shortcut to hcGUI on your desktop for next time you want to use it.

> macOS

1. Download the `hcGUI-v2.0.0.dmg` file.

1. Double click the `hcGUI-v2.0.0.dmg` file once downloaded to mount the disk image.

1. Drag the hcGUI.app into the link to your Applications folder within the disk image.

> Linux

1. Download the `hcGUI-v2.0.0.tar.gz` file.

1. Navigate to download location and extract the .tar.gz file:

    Ubuntu File Browser: simply right click on the .tar.gz file and select "Extract Here". <br />
    Terminal: use the `tar -xvzf filename.tar.gz` command.

    Both of these should extract the tar.gz into a folder that shares the same name. (`e.g. tar -xvzf hcGUI-v2.0.0.tar.gz` should extract to `hcGUI-v2.0.0`). If successful, this new folder should include a `hcGUI` executable.

---

## Open and Set Up hcGUI

Opening hcGUI for the first time will display the following screen:

![hcGUI startup screen](/img/decrediton/startup.png)

Select your desired language and press **Continue**. A short presentation explaining HC blockchain, wallet, keys, staking/governance, and safety tips is shown. Please read these slides carefully if you are new to HC.

The following screen should be displayed next.

![hcGUI blockchain download screen](/img/decrediton/chain-downloading.png)

A large progress bar on this screen shows the progress of the blockchain download. You can begin to set up your wallet before the download completes. 

!!! info "Pausing the download"

    If you close hcGUI or shutdown your PC while the download is in progress, the download will be paused and progress will not be lost. It will be resumed from the same point next time hcGUI is started.

    This means you can download the blockchain in multiple sessions if required.

As hcGUI allows you to manage multiple wallets on one PC, you must give a name to your wallet so it can be identified. Enter a name and press the **Create New Wallet** button. You will now be faced with two options: 

1. **Create a New Wallet** - Press this button if this is your first time using HC.

1. **Restore Existing Wallet** - Press this button if you already have a wallet seed. You can skip ahead to [Restore Existing Wallet From Seed](/getting-started/user-guides/hcGUI-setup.md#restore-existing-wallet-from-seed)

![hcGUI create wallet screen](/img/decrediton/create-wallet.png)

---

## Create a New Wallet

!!! danger "Critical Information"

    During the creation process for your wallet, you will be given a sequence of 33 words known as a seed phrase. This seed phrase is essentially the private key for your wallet. You will be able to use this seed phrase to restore your private keys, transaction history, and balances using any HC wallet on any computer.

    This ultimately means that *anyone* who knows your seed can use it to restore your private keys, transaction history, and balances to a HC wallet on their computer without your knowledge. For this reason, it is of utmost importance to keep your seed phrase safe. Treat this seed the same way you would treat a physical key to a safe. If you lose your seed phrase, you permanently lose access to your wallet and all funds within it. It cannot be recovered by anyone, including the HC developers. It is recommended you write it down on paper and store that somewhere secure. If you decide to keep it on your computer, it would be best to keep it in an encrypted document (do not forget the password) in case the file or your computer is stolen.

    Every seed phrase is also associated with a 64 character seed hex. The seed hex functions the same way as the seed phrase - `hcwallet` will accept it when attempting to restore your wallet. It is also important to keep your seed hex secure.

    **REMINDER: DO NOT, UNDER ANY CIRCUMSTANCES, GIVE YOUR SEED OR THE ASSOCIATED HEX KEY TO ANYONE! NOT EVEN THE DEVELOPERS!**

The 33 word seed for your new wallet is displayed on the screen (obscured in the below image). Record the seed and store it somewhere safe.

![hcGUI wallet seed screen](/img/decrediton/wallet-seed.png)

Press **Continue** and re-enter the missing words from your seed on the next screen. This is to confirm you have recorded your seed correctly.

![hcGUI seed entry screen](/img/decrediton/seed-entered.png)

Create a private passphrase for your wallet. This passphrase will be used to unlock your wallet when creating transactions.

Press **Create Wallet** and your wallet setup is complete. You will be taken back to the blockchain download progress bar. Once the download has been completed, hcGUI will open the Overview page for your new wallet and you will be able to begin sending and receiving HC.

---

## Restore Existing Wallet From Seed

1. If you already have a wallet seed you can use it by clicking on the **Existing Seed** button.

1. Enter your seed into the **Confirm Seed** text box.

1. Create a private passphrase for your wallet.

1. Select **Create Wallet**. Wait for the blockchain to be scanned.

---

## Troubleshooting

*hcGUI will not start!*

```
hcd closed due to an error. Check hcd logs
and contact support if the issue persists.
```

If you encounter the above error, it could be because there is already a running instance of `hcd` on your machine. hcGUI attempts to start its own instance of `hcd` and `hcwallet` in the background.

You could possibly resolve this by killing any any running `hcd` processes prior to restarting hcGUI.

*Where does hcGUI store data/write log files?*

hcGUI stores the blockchain, your wallet, log files and its own configuration files all in a single directory. A different directory is used depending on the operating system:

| OS      | hcGUI data directory                   |
| -------:|:-------------------------------------------:|
| Windows | `%LOCALAPPDATA%\hcGUI\`                |
| macOS   | `~/Library/Application Support/hcGUI/` |
| Linux   | `~/.config/hcGUI/`                     |
