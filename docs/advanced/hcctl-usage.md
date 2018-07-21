# <img class="dcr-icon" src="/img/dcr-icons/hctl.svg" /> hcctl Usage 

hcctl provides a way to control both the daemon `hcd` and the wallet
`hcwallet` using the json rpc interface without actually writing
json.

To simplify the examples we will assume that you have all password
stored in the [config files](/advanced/storing-login-details.md).

## :fa-power-off: Stopping the programs

To cleanly shut down the programs:

```no-highlight
hcctl --wallet stop
hcctl stop
```

## :fa-arrow-up: Finding the current block height

```no-highlight
hcctl getblockcount
```

## :fa-dollar: See your balance

```no-highlight
hcctl --wallet getbalance
```

## :fa-inbox: Get a new address

```no-highlight
hcctl --wallet getnewaddress
```

## :fa-rocket: Send funds to an address

```
hcctl --wallet sendtoaddress <address> <amount>
```

