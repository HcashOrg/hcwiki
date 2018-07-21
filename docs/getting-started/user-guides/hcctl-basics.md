# hcctl Basics 

Last updated for  v2.0.0.

This guide is intended to help you learn the basic commands of the `hcctl` application using a [minimal configuration file](/advanced/manual-cli-install.md#minimum-configuration). 

**Prerequisites:**

- Use the latest [hcinstall](/getting-started/user-guides/cli-installation.md) to install `hcctl`. Additional steps will be required if another installation method was used.
- Review how the launch commands for the Command Prompt (Windows) and Bash (macOS/Linux) shells differ [here](/getting-started/cli-differences.md).
- [Setup hcd](/getting-started/user-guides/hcd-setup.md) and have it running in the background.
- [Setup hcwallet](/getting-started/user-guides/hcwallet-setup.md) and have it running in the background.

---

`hcctl` is the client that controls `hcd` and `hcwallet` via remote procedure call (RPC). You can use `hcctl` for many things such as checking your balance, buying tickets, creating transactions, and viewing network information.

**REMINDER:** This guide uses OS-agnostic examples for commands. Review the prerequisites to determine if you should be using `./hcctl` or `hcctl.exe` instead of `hcctl`.

---

> Configure RPC Username and Password

Commands sent to either `hcd` or `hcwallet` will require RPC username/passwords to be setup in the configuration files.

If you used [`hcinstall`](/getting-started/user-guides/cli-installation.md), your configuration files are already setup with the RPC username/password for `hcd`, `hcwallet`, and `hcctl`.

If you did not use `hcinstall`, you will need to enable the bare minimum settings in your configuration files. Follow [this guide](/advanced/manual-cli-install.md#minimum-configuration) to do so.

---

## hcctl Commands

You will need to run hcctl commands in a separate shell window (Command Prompt/Bash).

To issue commands to `hcwallet`, you will need to use `hcctl --wallet <command>`.

To issue commands to `hcd`, you will need to use `hcctl <command>`.

To see a full list of commands that `hcctl` can send to `hcd` and `hcwallet`, issue the following command in your shell:

```no-highlight
hcctl -l
```

This will return a very long list of commands, separated by application. The commands on the top section are for `hcd` and the commands on the bottom section are for `hcwallet`. You can find out more about an individual command by typing the following for `hcwallet` commands:

```no-highlight
hcctl help --wallet <command>
```

or the following for `hcd` commands:

```no-highlight
hcctl help <command>
```

---

## Unlocking Your Wallet

Some functionality of `hcwallet` requires the wallet to be unlocked.

The command to unlock your wallet follows: 

```no-highlight
hcctl --wallet walletpassphrase <private passphrase set during wallet creation> 0
```

Here, we are specifying for `hcctl` to send the command to `hcwallet` by using the `--wallet` flag. The actual command is `walletpassphrase` which accepts two parameters, your private passphrase and a time limit. Specifying `0` for a time limit unlocks `hcwallet` without a time limit. Note, however, that this only unlocks the wallet for the current session. If you close the window the wallet is running in, or stop/restart the `hcwallet`, you will need to unlock it again the next time you start it. 

If the command was successful, you will not get a confirmation from `hcctl`, but if you look at your `hcwallet` session, it will say:

```no-highlight
[INF] RPCS: The wallet has been unlocked without a time limit.
```

NOTE: Because unlocking the wallet is required for many functions of `hcwallet`, `hcwallet` can be started with the `--promptpass` flag or setting `promptpass=true` in `hcwallet.conf` (discussed [here](/advanced/storing-login-details.md#hcwalletconf)).

---

## Checking Your Balance

To send the `getbalance` command to `hcwallet` using `hcctl`, enter the following in your shell:

```no-highlight
hcctl --wallet getbalance
```

This will return all of the balances for all of your accounts.

---

## Getting a New Receiving Address

To send the `getnewaddress` command to `hcwallet` using `hcctl`, enter the following in your shell:

```no-highlight
hcctl --wallet getnewaddress
```

This will generate and return a new payment address. To minimize address reuse, use this command to get a new address for each transaction you wish to receive.

---

## Sending hc

To send hc to an address, issue the `sendtoaddress` command to `hcwallet` using `hcctl`. Enter the following in your shell, filling in the receiving address and amount to send:

```no-highlight
hcctl --wallet sendtoaddress <address> <amount>
```

If successful, `hcctl` will return a transaction hash that can be used to watch the transaction on the official [Hcash Block Explorer](/getting-started/using-the-block-explorer.md).

---

## Check Network Stats

There are many different commands to check different network stats. Here we will cover sending `getinfo` to `hcd` and `getstakeinfo` to `hcwallet`.

To get information about your local `hcd` node, issue the `getinfo` command to `hcd` using `hcctl`. Enter the following in your shell:

```no-highlight
hcctl getinfo
```

To get staking information about the Proof-of-Stake network, issue the `getstakeinfo` command to `hcwallet` using `hcctl`. Enter the following in your shell:

```no-highlight
hcctl --wallet getstakeinfo
```

---

## Additional Commands

More commands can also be found on the [Program Options](/advanced/program-options.md) page.

---
