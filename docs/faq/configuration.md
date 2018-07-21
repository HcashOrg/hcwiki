# <img class="dcr-icon" src="/img/dcr-icons/Config1.svg" /> Configuration

---

#### 1. What are the default ports `hcd` and `hcwallet` listen on?

> `hcd`

|             |Mainet|Testnet|Simnet
---           |---   |---    |---
*Peer to Peer*| 9108 | 19108 | 18555
*RPC Server*  | 9109 | 19109 | 19556

> `hcwallet`

|                |Mainet|Testnet|Simnet
---              |---   |---    |---
*JSON-RPC Server*| 9110 | 19110 | 19557
*gRPC Server*    | 9111 | 19111 | 19558

---

#### 2. What do you mean by configuration files for `hcd`, `hcwallet`, and `hcctl`? 

Each application (`hcd`, `hcwallet`, `hcctl`) can have its own configuration files. Use `-h` and look at the path in parentheses of the configuration file option (`-C`, `--configfile`) to see the default path. Create a text file at the path and named according to that path you just looked up.

Then you can use the `hcd` [sample config file] and `hcwallet` [sample config file] to set whatever options you want. You can do the same thing for `hcctl` too. The format is the same. Every command line option listed by `-h` can be specified in the config files (just use the long option name).

Once those are created and in place, you do not have to add all of the options to the command line all the time. For instance, you can run `hcctl` without passing in any parameters on the command line:

```no-highlight
hcctl getnetworkhashps
2547036949350
```

---

#### 3. Can I run mainnet and testnet daemons and wallets at the same time and on the same machine? 

Yes, just add `--testnet` to the appropriate spots (`hcd`, `hcwallet`, `hcctl`) and everything will work. This is why they use different ports and data/log directories!

---

#### 4. What are the security implications of using the same RPC server authentication passwords with `hcd` and `hcwallet`? 

There is a lot less you can do with access to `hcd` than you can with access to `hcwallet`. Importantly, RPC access to `hcwallet`, when the wallet is unlocked, can be used to spend coins.

When `hcd` and `hcwallet` are both on the same machine, it probably does not matter all that much, but when you are running more secure setups where the wallet is on a separate machine than `hcd`, you would pretty clearly not want to use the same credentials for both. Remember that `hcd` has to be on an Internet-facing machine in order to stay synced to the network (download the block chain data, broadcast transactions, and so on).

On the other hand, the `hcwallet` that contains your funds, for best security, should really not be on a system that has Internet access as it is significantly more difficult for someone to steal your coins if the wallet that contains them is not even on a machine that is accessible via the Internet. Obviously, if you are staking your coins, you will need at least one Internet-facing `hcwallet` instance. Thus, the most secure setup involves having one "cold" `hcwallet` instance that is on a machine that is not Internet-accessible, and a second "hot" `hcwallet` instance (using a different seed of course) to which the cold hcwallet instance delegates voting right via the `--ticketaddress` parameter, both of which use different credentials.

---

#### 5. Why am I connecting to only 8 outbound peers? 

There is an intentional unconfigurable limit of 8 outbound peers. More outbound peers than that does not help you in any way and is actually worse for both you and the network. This has been tested extremely thoroughly in Bitcoin, including btcsuite (the upstream project for Hcash). All you would do by upping your outbound connections is waste valuable slots of the relatively few public peers there are (there are always a much higher number of "leechers" than there are "seeders").

On the other hand, increasing your maximum connections, which really just increases the number of allowed inbound connections, helps the network by ensuring there are more slots available for new nodes and SPV clients.

---

