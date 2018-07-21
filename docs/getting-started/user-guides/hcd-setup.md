# hcd Setup Guide 

Last updated for  v2.0.0.

This guide is intended to help you setup the `hcd` application using [startup flags](/getting-started/startup-basics.md#startup-command-flags). 

**Prerequisites:**

- Use the latest [hcinstall](/getting-started/user-guides/cli-installation.md) to install `hcd`. Additional steps will be required if another installation method was used.
- Review how the launch commands for the Command Prompt (Windows) and Bash (macOS/Linux) shells differ [here](/getting-started/cli-differences.md).

---

`hcd` is the node daemon for Hcash. A daemon is a program that works in the background that you do not interface with directly. `hcd` maintains the entire past transactional ledger (or blockchain) of Hcash and allows relaying of transactions to other Hcash nodes across the world. You can think of it as your own personal Hcash blockchain server. The blockchain is saved in the `data` folder within `hcd`'s home directory.

**Advanced Users: If you are running in headless mode via SSH,** you
will need to use a terminal multiplexer such as [screen](http://www.howtogeek.com/howto/ubuntu/keep-your-ssh-session-running-when-you-disconnect/)
or [tmux](https://tmux.github.io/). Where you see the instruction to
move to another shell, you'll need to start a new window in `screen`
or `tmux`.

---

## :fa-cloud: Connect to the Hcash Network

The first time launching `hcd`, it will connect to the Hcash network and begin downloading the blockchain. To allow `hcwallet` and `hcctl` to communicate with `hcd`, the configuration files must have `rpcuser` and `rpcpass` settings enabled. 

> Configure RPC Username and Password

If you used [`hcinstall`](/getting-started/user-guides/cli-installation.md), your configuration files are already setup with the RPC username/password for `hcd`, `hcwallet`, and `hcctl`.

If you did not use `hcinstall`, you will need to enable the bare minimum settings in your configuration files. Follow [this guide](/advanced/manual-cli-install.md#minimum-configuration) to do so. 

> Start hcd 

With the correctly set configuration files, open another shell window in your Hcash directory (or use the last window if you have just created your wallet). Type the following command (review this guide’s Prerequisites to determine the right command for your OS/Shell application):

```no-highlight
hcd
```

> Wait for hcd to Sync to the Hcash Blockchain

When `hcd` launches successfully, you should see your shell window begin to fill up with messages as the daemon connects to the network and starts processing blocks. Wait until it is completed - the entire blockchain is being downloaded into the `hcd` data directory. 

You will see a line at the start like this:

```no-highlight
22:58:04 2016-02-09 [INF] BMGR: Syncing to block height 617 from peer 104.236.167.133:9108
```

Then, as it continues to download blocks, you will see lines like this:

```no-highlight
22:58:16 2016-02-09 [INF] BMGR: Processed 321 blocks in the last 10.03s (544 transactions, height 322, 2016-02-09 09:50:34 +1000 EST)
```

The blockchain will be fully synced once the most recently processed block is the current block height. You can tell by either comparing the date and time in the log message or by comparing the height of the last block processed against the last block height on [the official block explorer](https://mainnet.Hcash.org/).  

Note that this connection will be used in the future. You must leave this `hcd` instance running in order to use `hcwallet`.

---

Now that you've set up `hcd`, visit the [hcwallet Setup](/getting-started/user-guides/hcwallet-setup.md) guide.
