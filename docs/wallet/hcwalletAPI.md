

#### accountaddressindex

Get the current address index for some account branch

###### Arguments:

1. account (string, required)  String for the account
2. branch  (numeric, required) Number for the branch (0=external, 1=internal)

###### Result:

n (numeric) The address index for this account branch



#### accountsyncaddressindex

Synchronize an account branch to some passed address index

###### Arguments:

1. account (string, required)  String for the account
2. branch  (numeric, required) Number for the branch (0=external, 1=internal)
3. index   (numeric, required) The address index to synchronize to

###### Result:

Nothing

#### addmultisigaddress

Generates and imports a multisig address and redeeming script to the 'imported' account.

###### Arguments:

1. nrequired (numeric, required)         The number of signatures required to redeem outputs paid to this address
2. keys      (array of string, required) Pubkeys and/or pay-to-pubkey-hash addresses to partially control the multisig address
3. account   (string, optional)          DEPRECATED -- Unused (all imported addresses belong to the imported account)

###### Result:

"value" (string) The imported pay-to-script-hash address

#### consolidate

Consolidate n many UTXOs into a single output in the wallet.

###### Arguments:

1. inputs  (numeric, required) Number of UTXOs to consolidate as inputs
2. account (string, optional)  Optional: Account from which unspent outputs are picked. When no address specified, also the account used to obtain an output address.
3. address (string, optional)  Optional: Address to pay.  Default is obtained via getnewaddress from the account's address pool.

###### Result:

"value" (string) Transaction hash for the consolidation transaction



#### createmultisig

Generate a multisig address and redeem script.

###### Arguments:

1. nrequired (numeric, required)         The number of signatures required to redeem outputs paid to this address
2. keys      (array of string, required) Pubkeys and/or pay-to-pubkey-hash addresses to partially control the multisig address

###### Result:

```javascript
{

 "address": "value",      (string) The generated pay-to-script-hash address

 "redeemScript": "value", (string) The script required to redeem outputs paid to the multisig address

}   
      
```

#### dumpprivkey

Returns the private key in WIF encoding that controls some wallet address.

###### Arguments:

1. address (string, required) The address to return a private key for

###### Result:

"value" (string) The WIF-encoded private key

#### getaccount

DEPRECATED -- Lookup the account name that some wallet address belongs to.

###### Arguments:

1. address (string, required) The address to query the account for

###### Result:

"value" (string) The name of the account that 'address' belongs to

#### getaccountaddress

DEPRECATED -- Returns the most recent external payment address for an account that has not been seen publicly.
A new address is generated for the account if the most recently generated address has been seen on the blockchain or in mempool.

###### Arguments:

1. account (string, required) The account of the returned address

###### Result:

"value" (string) The unused address for 'account'

#### getaddressesbyaccount

DEPRECATED -- Returns all addresses strings controlled by a single account.

###### Arguments:

1. account (string, required) Account name to fetch addresses for

###### Result:

["value",...] (array of string) All addresses controlled by 'account'

#### getbalance

Calculates and returns the balance of one or all accounts.

###### Arguments:

1. account (string, optional)             DEPRECATED -- The account name to query the balance for, or "*" to consider all accounts (default="*")
2. minconf (numeric, optional, default=1) Minimum number of block confirmations required before an unspent output's value is included in the balance

###### Result (account != "*"):

n.nnn (numeric) The balance of 'account' valued in decred

Result (account = "*"):
n.nnn (numeric) The balance of all accounts valued in decred

#### getbestblockhash

Returns the hash of the newest block in the best chain that wallet has finished syncing with.

###### Arguments:

None

###### Result:

"value" (string) The hash of the most recent synced-to block

#### getblockcount

Returns the blockchain height of the newest block in the best chain that wallet has finished syncing with.

###### Arguments:

None

###### Result:

n.nnn (numeric) The blockchain height of the most recent synced-to block

#### getinfo

Returns a JSON object containing various state info.

###### Arguments:

None

###### Result:

```javascript
{

 "version": n,          (numeric) The version of the server

 "protocolversion": n,  (numeric) The latest supported protocol version

 "walletversion": n,    (numeric) The version of the address manager database

 "balance": n.nnn,      (numeric) The balance of all accounts calculated with one block confirmation

 "blocks": n,           (numeric) The number of blocks processed

 "timeoffset": n,       (numeric) The time offset

 "connections": n,      (numeric) The number of connected peers

 "proxy": "value",      (string)  The proxy used by the server

 "difficulty": n.nnn,   (numeric) The current target difficulty

 "testnet": true|false, (boolean) Whether or not server is using testnet

 "keypoololdest": n,    (numeric) Unset

 "keypoolsize": n,      (numeric) Unset

 "unlocked_until": n,   (numeric) Unset

 "paytxfee": n.nnn,     (numeric) The fee per kB of the serialized tx size used each time more fee is required for an authored transaction

 "relayfee": n.nnn,     (numeric) The minimum relay fee for non-free transactions in HC/KB

 "errors": "value",     (string)  Any current errors

}              
```

#### getmasterpubkey

Requests the master pubkey from the wallet.

###### Arguments:

1. account (string, optional) The account to get the master pubkey for

##### Result:

"value" (string) The master pubkey for the wallet

#### getmultisigoutinfo

Returns information about a multisignature output.

###### Arguments:

1. hash  (string, required)  Input hash to check.
2. index (numeric, required) Index of input.

###### Result:

```javascript
{

 "address": "value",       (string)          Script address.

 "redeemscript": "value",  (string)          Hex of the redeeming script.

 "m": n,                   (numeric)         m (in m-of-n)

 "n": n,                   (numeric)         n (in m-of-n)

 "pubkeys": ["value",...], (array of string) Associated pubkeys.

 "txhash": "value",        (string)          txhash

 "blockheight": n,         (numeric)         Height of the containing block.

 "blockhash": "value",     (string)          Hash of the containing block.

 "spent": true|false,      (boolean)         If it has been spent.

 "spentby": "value",       (string)          Hash of spending tx.

 "spentbyindex": n,        (numeric)         Index of spending tx.

 "amount": n.nnn,          (numeric)         Amount of coins contained.

}                   
```

#### getnewaddress

Generates and returns a new payment address.

###### Arguments:

1. account   (string, optional) Account name the new address will belong to (default="default")
2. gappolicy (string, optional) String defining the policy to use when the BIP0044 gap limit would be violated, may be "error", "ignore", or "wrap"

###### Result:

"value" (string) The payment address

#### getrawchangeaddress

Generates and returns a new internal payment address for use as a change address in raw transactions.

###### Arguments:

1. account (string, optional) Account name the new internal address will belong to (default="default")

###### Result:

"value" (string) The internal payment address

#### getreceivedbyaccount

DEPRECATED -- Returns the total amount received by addresses of some account, including spent outputs.

###### Arguments:

1. account (string, required)             Account name to query total received amount for
2. minconf (numeric, optional, default=1) Minimum number of block confirmations required before an output's value is included in the total

###### Result:

n.nnn (numeric) The total received amount valued in decred

#### getreceivedbyaddress

Returns the total amount received by a single address, including spent outputs.

###### Arguments:

1. address (string, required)             Payment address which received outputs to include in total
2. minconf (numeric, optional, default=1) Minimum number of block confirmations required before an output's value is included in the total

###### Result:

n.nnn (numeric) The total received amount valued in decred

#### gettickets

Returning the hashes of the tickets currently owned by wallet.

###### Arguments:

1. includeimmature (boolean, required) If true include immature tickets in the results.

###### Result:

```
{

 "hashes": ["value",...], (array of string) Hashes of the tickets owned by the wallet encoded as strings

}      
       
```

#### gettransaction

Returns a JSON object with details regarding a transaction relevant to this wallet.

###### Arguments:

1. txid             (string, required)                 Hash of the transaction to query
2. includewatchonly (boolean, optional, default=false) Also consider transactions involving watched addresses

###### Result:

```javascript
{

 "amount": n.nnn,                  (numeric)         The total amount this transaction credits to the wallet, valued in decred

 "fee": n.nnn,                     (numeric)         The total input value minus the total output value, or 0 if 'txid' is not a sent transaction

 "confirmations": n,               (numeric)         The number of block confirmations of the transaction

 "blockhash": "value",             (string)          The hash of the block this transaction is mined in, or the empty string if unmined

 "blockindex": n,                  (numeric)         Unset

 "blocktime": n,                   (numeric)         The Unix time of the block header this transaction is mined in, or 0 if unmined

 "txid": "value",                  (string)          The transaction hash

 "walletconflicts": ["value",...], (array of string) Unset

 "time": n,                        (numeric)         The earliest Unix time this transaction was known to exist

 "timereceived": n,                (numeric)         The earliest Unix time this transaction was known to exist

 "details": [{                     (array of object) Additional details for each recorded wallet credit and debit

  "account": "value",              (string)          DEPRECATED -- Unset

  "address": "value",              (string)          The address an output was paid to, or the empty string if the output is nonstandard or this detail is regarding a transaction input

  "amount": n.nnn,                 (numeric)         The amount of a received output

  "category": "value",             (string)          The kind of detail: "send" for sent transactions, "immature" for immature coinbase outputs, "generate" for mature coinbase outputs, or "recv" for all other received outputs

  "involveswatchonly": true|false, (boolean)         Unset

  "fee": n.nnn,                    (numeric)         The included fee for a sent transaction

  "vout": n,                       (numeric)         The transaction output index

 },...],                                             

 "hex": "value",                   (string)          The transaction encoded as a hexadecimal string

}      
```

#### getvotechoices

Retrieve the currently configured vote choices for the latest supported stake agendas

###### Arguments:

None

###### Result:

```javascript
{

 "version": n,                  (numeric)         The latest stake version supported by the software and the version of the included agendas

 "choices": [{                  (array of object) The currently configured agenda vote choices, including abstaining votes

  "agendaid": "value",          (string)          The ID for the agenda the choice concerns

  "agendadescription": "value", (string)          A description of the agenda the choice concerns

  "choiceid": "value",          (string)          The ID of the current choice for this agenda

  "choicedescription": "value", (string)          A description of the current choice for this agenda

 },...],                                          

}            
```

#### help

Returns a list of all commands or help for a specified command.

###### Arguments:

1. command (string, optional) The command to retrieve help for

###### Result (no command provided):

"value" (string) List of commands

Result (command specified):
"value" (string) Help for specified command

#### importprivkey

Imports a WIF-encoded private key to the 'imported' account.

###### Arguments:

1. privkey  (string, required)                The WIF-encoded private key
2. label    (string, optional)                Unused (must be unset or 'imported')
3. rescan   (boolean, optional, default=true) Rescan the blockchain (since the genesis block, or scanfrom block) for outputs controlled by the imported key
4. scanfrom (numeric, optional)               Block number for where to start rescan from

###### Result:

Nothing

#### importscript

Import a redeem script.

###### Arguments:

1. hex      (string, required)                Hex encoded script to import
2. rescan   (boolean, optional, default=true) Rescansfdsfd the blockchain (since the genesis block, or scanfrom block) for outputs controlled by the imported key
3. scanfrom (numeric, optional)               Block number for where to start rescan from

###### Result:

Nothing

#### keypoolrefill

DEPRECATED -- This request does nothing since no keypool is maintained.

###### Arguments:

1. newsize (numeric, optional, default=100) Unused

###### Result:

Nothing

#### listaccounts

DEPRECATED -- Returns a JSON object of all accounts and their balances.

###### Arguments:

1. minconf (numeric, optional, default=1) Minimum number of block confirmations required before an unspent output's value is included in the balance

###### Result:

```
{

 "The account name": The account balance valued in decred, (object) JSON object with account names as keys and decred amounts as values
 ...
}
```

#### listlockunspent

Returns a JSON array of outpoints marked as locked (with lockunspent) for this wallet session.

###### Arguments:

None

###### Result:

```
[{

 "txid": "value", (string)  The transaction hash of the referenced output

 "vout": n,       (numeric) The output index of the referenced output

 "tree": n,       (numeric) The tree to generate transaction for

},...]

```

#### listreceivedbyaccount

DEPRECATED -- Returns a JSON array of objects listing all accounts and the total amount received by each account.

###### Arguments:

1. minconf          (numeric, optional, default=1)     Minimum number of block confirmations required before a transaction is considered
2. includeempty     (boolean, optional, default=false) Unused
3. includewatchonly (boolean, optional, default=false) Unused

###### Result:

```
[{

 "account": "value", (string)  The name of the account

 "amount": n.nnn,    (numeric) Total amount received by payment addresses of the account valued in decred

 "confirmations": n, (numeric) Number of block confirmations of the most recent transaction relevant to the account

},...]

```

#### listreceivedbyaddress

Returns a JSON array of objects listing wallet payment addresses and their total received amounts.

###### Arguments:

1. minconf          (numeric, optional, default=1)     Minimum number of block confirmations required before a transaction is considered
2. includeempty     (boolean, optional, default=false) Unused
3. includewatchonly (boolean, optional, default=false) Unused

###### Result:

```
[{

 "account": "value",              (string)          DEPRECATED -- Unset

 "address": "value",              (string)          The payment address

 "amount": n.nnn,                 (numeric)         Total amount received by the payment address valued in decred

 "confirmations": n,              (numeric)         Number of block confirmations of the most recent transaction relevant to the address

 "txids": ["value",...],          (array of string) Transaction hashes of all transactions involving this address

 "involvesWatchonly": true|false, (boolean)         Unset

},...]
```

#### listsinceblock

Returns a JSON array of objects listing details of all wallet transactions after some block.

###### Arguments:

1. blockhash           (string, optional)                 Hash of the parent block of the first block to consider transactions from, or unset to list all transactions
2. targetconfirmations (numeric, optional, default=1)     Minimum number of block confirmations of the last block in the result object.  Must be 1 or greater.  Note: The transactions array in the result object is not affected by this parameter
3. includewatchonly    (boolean, optional, default=false) Unused

###### Result:

```
{

 "transactions": [{                 (array of object) JSON array of objects containing verbose details of the each transaction

  "account": "value",               (string)          DEPRECATED -- Unset

  "address": "value",               (string)          Payment address for a transaction output

  "amount": n.nnn,                  (numeric)         The value of the transaction output valued in decred

  "blockhash": "value",             (string)          The hash of the block this transaction is mined in, or the empty string if unmined

  "blockindex": n,                  (numeric)         Unset

  "blocktime": n,                   (numeric)         The Unix time of the block header this transaction is mined in, or 0 if unmined

  "category": "value",              (string)          The kind of transaction: "send" for sent transactions, "immature" for immature coinbase outputs, "generate" for mature coinbase outputs, or "recv" for all other received outputs.  Note: A single output may be included multiple times under different categories

  "confirmations": n,               (numeric)         The number of block confirmations of the transaction

  "fee": n.nnn,                     (numeric)         The total input value minus the total output value for sent transactions

  "generated": true|false,          (boolean)         Whether the transaction output is a coinbase output

  "involveswatchonly": true|false,  (boolean)         Unset

  "time": n,                        (numeric)         The earliest Unix time this transaction was known to exist

  "timereceived": n,                (numeric)         The earliest Unix time this transaction was known to exist

  "txid": "value",                  (string)          The hash of the transaction

  "txtype": "value",                (string)          The type of tx (regular tx, stake tx)

  "vout": n,                        (numeric)         The transaction output index

  "walletconflicts": ["value",...], (array of string) Unset

  "comment": "value",               (string)          Unset

  "otheraccount": "value",          (string)          Unset

 },...],                                              

 "lastblock": "value",              (string)          Hash of the latest-synced block to be used in later calls to listsinceblock

}          
           
```

#### listtransactions

Returns a JSON array of objects containing verbose details for wallet transactions.

###### Arguments:

1. account          (string, optional)                 DEPRECATED -- Unused (must be unset or "*")
2. count            (numeric, optional, default=10)    Maximum number of transactions to create results from
3. from             (numeric, optional, default=0)     Number of transactions to skip before results are created
4. includewatchonly (boolean, optional, default=false) Unused

###### Result:

```
[{

 "account": "value",               (string)          DEPRECATED -- Unset

 "address": "value",               (string)          Payment address for a transaction output

 "amount": n.nnn,                  (numeric)         The value of the transaction output valued in decred

 "blockhash": "value",             (string)          The hash of the block this transaction is mined in, or the empty string if unmined

 "blockindex": n,                  (numeric)         Unset

 "blocktime": n,                   (numeric)         The Unix time of the block header this transaction is mined in, or 0 if unmined

 "category": "value",              (string)          The kind of transaction: "send" for sent transactions, "immature" for immature coinbase outputs, "generate" for mature coinbase outputs, or "recv" for all other received outputs.  Note: A single output may be included multiple times under different categories

 "confirmations": n,               (numeric)         The number of block confirmations of the transaction

 "fee": n.nnn,                     (numeric)         The total input value minus the total output value for sent transactions

 "generated": true|false,          (boolean)         Whether the transaction output is a coinbase output

 "involveswatchonly": true|false,  (boolean)         Unset

 "time": n,                        (numeric)         The earliest Unix time this transaction was known to exist

 "timereceived": n,                (numeric)         The earliest Unix time this transaction was known to exist

 "txid": "value",                  (string)          The hash of the transaction

 "txtype": "value",                (string)          The type of tx (regular tx, stake tx)

 "vout": n,                        (numeric)         The transaction output index

 "walletconflicts": ["value",...], (array of string) Unset

 "comment": "value",               (string)          Unset

 "otheraccount": "value",          (string)          Unset

},...]
```

#### listunspent

Returns a JSON array of objects representing unlocked unspent outputs controlled by wallet keys.

###### Arguments:

1. minconf   (numeric, optional, default=1)       Minimum number of block confirmations required before a transaction output is considered
2. maxconf   (numeric, optional, default=9999999) Maximum number of block confirmations required before a transaction output is excluded
3. addresses (array of string, optional)          If set, limits the returned details to unspent outputs received by any of these payment addresses

###### Result:

```javascript
{

 "txid": "value",         (string)  The transaction hash of the referenced output

 "vout": n,               (numeric) The output index of the referenced output

 "tree": n,               (numeric) The tree the transaction comes from

 "txtype": n,             (numeric) The type of the transaction

 "address": "value",      (string)  The payment address that received the output

 "account": "value",      (string)  The account associated with the receiving payment address

 "scriptPubKey": "value", (string)  The output script encoded as a hexadecimal string

 "redeemScript": "value", (string)  Unset

 "amount": n.nnn,         (numeric) The amount of the output valued in decred

 "confirmations": n,      (numeric) The number of block confirmations of the transaction

 "spendable": true|false, (boolean) Whether the output is entirely controlled by wallet keys/scripts (false for partially controlled multisig outputs or outputs to watch-only addresses)
}      
```

#### lockunspent

Locks or unlocks an unspent output.
Locked outputs are not chosen for transaction inputs of authored transactions and are not included in 'listunspent' results.
Locked outputs are volatile and are not saved across wallet restarts.
If unlock is true and no transaction outputs are specified, all locked outputs are marked unlocked.

###### Arguments:

1. unlock       (boolean, required)         True to unlock outputs, false to lock
2. transactions (array of object, required) Transaction outputs to lock or unlock
    [{
      "txid": "value", (string)  The transaction hash of the referenced output
      "vout": n,       (numeric) The output index of the referenced output
      "tree": n,       (numeric) The tree to generate transaction for
    },...]

###### Result:

true|false (boolean) The boolean 'true'

#### redeemmultisigout

Takes the input and constructs a P2PKH paying to the specified address.

###### Arguments:

1. hash    (string, required)  Hash of the input transaction
2. index   (numeric, required) Idx of the input transaction
3. tree    (numeric, required) Tree the transaction is on.
4. address (string, optional)  Address to pay to.

###### Result:

```javascript
{

 "hex": "value",         (string)          Resulting hash.

 "complete": true|false, (boolean)         Shows if opperation was completed.

 "errors": [{            (array of object) Any errors generated.

  "txid": "value",       (string)          The transaction hash of the referenced previous output

  "vout": n,             (numeric)         The output index of the referenced previous output

  "scriptSig": "value",  (string)          The hex-encoded signature script

  "sequence": n,         (numeric)         Script sequence number

  "error": "value",      (string)          Verification or signing error related to the input

 },...],                                   

}  
```

redeemmultisigouts":      "redeemmultisigouts "fromscraddress" ("toaddress" number)

Takes a hash, looks up all unspent outpoints and generates list artially signed transactions spending to either an address specified or internal addresses

###### Arguments:

1. fromscraddress (string, required)  Input script hash address.
2. toaddress      (string, optional)  Address to look for (if not internal addresses).
3. number         (numeric, optional) Number of outpoints found.

###### Result:

```
{

 "hex": "value",         (string)          Resulting hash.

 "complete": true|false, (boolean)         Shows if opperation was completed.

 "errors": [{            (array of object) Any errors generated.

  "txid": "value",       (string)          The transaction hash of the referenced previous output

  "vout": n,             (numeric)         The output index of the referenced previous output

  "scriptSig": "value",  (string)          The hex-encoded signature script

  "sequence": n,         (numeric)         Script sequence number

  "error": "value",      (string)          Verification or signing error related to the input

 },...],                                   

} 
             
```

#### rescanwallet

Rescan the block chain for wallet data, blocking until the rescan completes or exits with an error

###### Arguments:

1. beginheight (numeric, optional, default=0) The height of the first block to begin the rescan from

###### Result:

Nothing

#### revoketickets

Requests the wallet create revovactions for any previously missed tickets.  Wallet must be unlocked.

###### Arguments:

None

###### Result:

Nothing

#### sendfrom

DEPRECATED -- Authors, signs, and sends a transaction that outputs some amount to a payment address.
A change output is automatically included to send extra output value back to the original account.

###### Arguments:

1. fromaccount (string, required)             Account to pick unspent outputs from
2. toaddress   (string, required)             Address to pay
3. amount      (numeric, required)            Amount to send to the payment address valued in decred
4. minconf     (numeric, optional, default=1) Minimum number of block confirmations required before a transaction output is eligible to be spent
5. comment     (string, optional)             Unused
6. commentto   (string, optional)             Unused

#### Result:

"value" (string) The transaction hash of the sent transaction

#### sendmany

Authors, signs, and sends a transaction that outputs to many payment addresses.
A change output is automatically included to send extra output value back to the original account.

###### Arguments:

1. fromaccount (string, required) DEPRECATED -- Account to pick unspent outputs from
2. amounts     (object, required) Pairs of payment addresses and the output amount to pay each
    {
      "Address to pay": Amount to send to the payment address valued in decred, (object) JSON object using payment addresses as keys and output amounts valued in decred to send to each address
      ...
    }
3. minconf (numeric, optional, default=1) Minimum number of block confirmations required before a transaction output is eligible to be spent
4. comment (string, optional)             Unused

###### Result:

"value" (string) The transaction hash of the sent transaction

#### sendtoaddress

Authors, signs, and sends a transaction that outputs some amount to a payment address.
Unlike sendfrom, outputs are always chosen from the default account.
A change output is automatically included to send extra output value back to the original account.

###### Arguments:

1. address   (string, required)  Address to pay
2. amount    (numeric, required) Amount to send to the payment address valued in decred
3. comment   (string, optional)  Unused
4. commentto (string, optional)  Unused

###### Result:

"value" (string) The transaction hash of the sent transaction

#### sendtomultisig

Authors, signs, and sends a transaction that outputs some amount to a multisig address.
Unlike sendfrom, outputs are always chosen from the default account.
A change output is automatically included to send extra output value back to the original account.

###### Arguments:

1. fromaccount (string, required)             Unused
2. amount      (numeric, required)            Amount to send to the payment address valued in decred
3. pubkeys     (array of string, required)    Pubkey to send to.
4. nrequired   (numeric, optional, default=1) The number of signatures required to redeem outputs paid to this address
5. minconf     (numeric, optional, default=1) Minimum number of block confirmations required
6. comment     (string, optional)             Unused

###### Result:

"value" (string) The transaction hash of the sent transaction

#### settxfee

Modify the fee per kB of the serialized tx size used each time more fee is required for an authored transaction.

###### Arguments:

1. amount (numeric, required) The new fee per kB of the serialized tx size valued in decred

###### Result:

true|false (boolean) The boolean 'true'

#### setvotechoice

Sets choices for defined agendas in the latest stake version supported by this software

###### Arguments:

1. agendaid (string, required) The ID for the agenda to modify
2. choiceid (string, required) The ID for the choice to choose

###### Result:

Nothing

#### signmessage

Signs a message using the private key of a payment address.

###### Arguments:

1. address (string, required) Payment address of private key used to sign the message with
2. message (string, required) Message to sign

###### Result:

"value" (string) The signed message encoded as a base64 string

#### signrawtransaction

Signs transaction inputs using private keys from this wallet and request.
The valid flags options are ALL, NONE, SINGLE, ALL|ANYONECANPAY, NONE|ANYONECANPAY, and SINGLE|ANYONECANPAY.

###### Arguments:

1. rawtx    (string, required)                Unsigned or partially unsigned transaction to sign encoded as a hexadecimal string
2. inputs   (array of object, optional)       Additional data regarding inputs that this wallet may not be tracking
3. privkeys (array of string, optional)       Additional WIF-encoded private keys to use when creating signatures
4. flags    (string, optional, default="ALL") Sighash flags

###### Result:

```
{

 "hex": "value",         (string)          The resulting transaction encoded as a hexadecimal string

 "complete": true|false, (boolean)         Whether all input signatures have been created

 "errors": [{            (array of object) Script verification errors (if exists)

  "txid": "value",       (string)          The transaction hash of the referenced previous output

  "vout": n,             (numeric)         The output index of the referenced previous output

  "scriptSig": "value",  (string)          The hex-encoded signature script

  "sequence": n,         (numeric)         Script sequence number

  "error": "value",      (string)          Verification or signing error related to the input

 },...],                                   

}
```

#### signrawtransactions

Signs transaction inputs using private keys from this wallet and request for a list of transactions.

###### Arguments:

1. rawtxs (array of string, required)       A list of transactions to sign (and optionally send).
2. send   (boolean, optional, default=true) Set true to send the transactions after signing.

###### Result:

```javascript
{

 "results": [{             (array of object) Returned values from the signrawtransactions command.

  "signingresult": {       (object)          Success or failure of signing.

   "hex": "value",         (string)          The resulting transaction encoded as a hexadecimal string

   "complete": true|false, (boolean)         Whether all input signatures have been created

   "errors": [{            (array of object) Script verification errors (if exists)

    "txid": "value",       (string)          The transaction hash of the referenced previous output
    "vout": n,             (numeric)         The output index of the referenced previous output
    "scriptSig": "value",  (string)          The hex-encoded signature script
    "sequence": n,         (numeric)         Script sequence number
    "error": "value",      (string)          Verification or signing error related to the input

   },...],                                   

  },                                         

  "sent": true|false,      (boolean)         Tells if the transaction was sent.

  "txhash": "value",       (string)          The hash of the signed tx.

 },...],                                     

}  
              
```

#### validateaddress

Verify that an address is valid.
Extra details are returned if the address is controlled by this wallet.
The following fields are valid only when the address is controlled by this wallet (ismine=true): isscript, pubkey, iscompressed, account, addresses, hex, script, and sigsrequired.
The following fields are only valid when address has an associated public key: pubkey, iscompressed.
The following fields are only valid when address is a pay-to-script-hash address: addresses, hex, and script.
If the address is a multisig address controlled by this wallet, the multisig fields will be left unset if the wallet is locked since the redeem script cannot be decrypted.

###### Arguments:

1. address (string, required) Address to validate

###### Result:

```javascript
{

 "isvalid": true|false,      (boolean)         Whether or not the address is valid

 "address": "value",         (string)          The payment address (only when isvalid is true)

 "ismine": true|false,       (boolean)         Whether this address is controlled by the wallet (only when isvalid is true)

 "iswatchonly": true|false,  (boolean)         Unset

 "isscript": true|false,     (boolean)         Whether the payment address is a pay-to-script-hash address (only when isvalid is true)

 "pubkeyaddr": "value",      (string)          The pubkey for this payment address (only when isvalid is true)

 "pubkey": "value",          (string)          The associated public key of the payment address, if any (only when isvalid is true)

 "iscompressed": true|false, (boolean)         Whether the address was created by hashing a compressed public key, if any (only when isvalid is true)

 "account": "value",         (string)          The account this payment address belongs to (only when isvalid is true)

 "addresses": ["value",...], (array of string) All associated payment addresses of the script if address is a multisig address (only when isvalid is true)

 "hex": "value",             (string)          The redeem script 

 "script": "value",          (string)          The class of redeem script for a multisig address

 "sigsrequired": n,          (numeric)         The number of required signatures to redeem outputs to the multisig address

}  
         
```

#### verifymessage

Verify a message was signed with the associated private key of some address.

###### Arguments:

1. address   (string, required) Address used to sign message
2. signature (string, required) The signature to verify
3. message   (string, required) The message to verify

###### Result:

true|false (boolean) Whether the message was signed with the private key of 'address'

#### version

Returns application and API versions (semver) keyed by their names

###### Arguments:

None

###### Result:

```
{

 "Program or API name": Object containing the semantic version, (object) Version objects keyed by the program or API name

 ...

}
```

#### walletlock

Lock the wallet.

###### Arguments:

None

###### Result:

Nothing

#### walletpassphrase

Unlock the wallet.

###### Arguments:

1. passphrase (string, required)  The wallet passphrase
2. timeout    (numeric, required) The number of seconds to wait before the wallet automatically locks

###### Result:

Nothing

#### walletpassphrasechange

Change the wallet passphrase.

###### Arguments:

1. oldpassphrase (string, required) The old wallet passphrase
2. newpassphrase (string, required) The new wallet passphrase

###### Result:

Nothing

#### createnewaccount

Creates a new account.
The wallet must be unlocked for this request to succeed.

###### Arguments:

1. account (string, required) Name of the new account

###### Result:

Nothing

#### exportwatchingwallet

Creates and returns a duplicate of the wallet database without any private keys to be used as a watching-only wallet.

###### Arguments:

1. account  (string, optional)                 Unused (must be unset or "*")
2. download (boolean, optional, default=false) Unused

###### Result:

"value" (string) The watching-only database encoded as a base64 string

#### getbestblock

Returns the hash and height of the newest block in the best chain that wallet has finished syncing with.

###### Arguments:

None

###### Result:

{
 "hash": "value", (string)  The hash of the block
 "height": n,     (numeric) The blockchain height of the block
}                 

#### getunconfirmedbalance

Calculates the unspent output value of all unmined transaction outputs for an account.

###### Arguments:

1. account (string, optional) The account to query the unconfirmed balance for (default="default")

###### Result:

n.nnn (numeric) Total amount of all unmined unspent outputs of the account valued in decred.

#### listaddresstransactions

Returns a JSON array of objects containing verbose details for wallet transactions pertaining some addresses.

###### Arguments:

1. addresses (array of string, required) Addresses to filter transaction results by
2. account   (string, optional)          Unused (must be unset or "*")

###### Result:

```javascript
[{

 "account": "value",               (string)          DEPRECATED -- Unset

 "address": "value",               (string)          Payment address for a transaction output

 "amount": n.nnn,                  (numeric)         The value of the transaction output valued in decred

 "blockhash": "value",             (string)          The hash of the block this transaction is mined in, or the empty string if unmined

 "blockindex": n,                  (numeric)         Unset

 "blocktime": n,                   (numeric)         The Unix time of the block header this transaction is mined in, or 0 if unmined

 "category": "value",              (string)          The kind of transaction: "send" for sent transactions, "immature" for immature coinbase outputs, "generate" for mature coinbase outputs, or "recv" for all other received outputs.  Note: A single output may be included multiple times under different categories

 "confirmations": n,               (numeric)         The number of block confirmations of the transaction

 "fee": n.nnn,                     (numeric)         The total input value minus the total output value for sent transactions

 "generated": true|false,          (boolean)         Whether the transaction output is a coinbase output

 "involveswatchonly": true|false,  (boolean)         Unset

 "time": n,                        (numeric)         The earliest Unix time this transaction was known to exist

 "timereceived": n,                (numeric)         The earliest Unix time this transaction was known to exist

 "txid": "value",                  (string)          The hash of the transaction

 "txtype": "value",                (string)          The type of tx (regular tx, stake tx)

 "vout": n,                        (numeric)         The transaction output index

 "walletconflicts": ["value",...], (array of string) Unset

 "comment": "value",               (string)          Unset

 "otheraccount": "value",          (string)          Unset

},...]

```

#### listalltransactions

Returns a JSON array of objects in the same format as 'listtransactions' without limiting the number of returned objects.

###### Arguments:

1. account (string, optional) Unused (must be unset or "*")

###### Result:

```
[{

 "account": "value",               (string)          DEPRECATED -- Unset

 "address": "value",               (string)          Payment address for a transaction output

 "amount": n.nnn,                  (numeric)         The value of the transaction output valued in decred

 "blockhash": "value",             (string)          The hash of the block this transaction is mined in, or the empty string if unmined

 "blockindex": n,                  (numeric)         Unset

 "blocktime": n,                   (numeric)         The Unix time of the block header this transaction is mined in, or 0 if unmined

 "category": "value",              (string)          The kind of transaction: "send" for sent transactions, "immature" for immature coinbase outputs, "generate" for mature coinbase outputs, or "recv" for all other received outputs.  Note: A single output may be included multiple times under different categories

 "confirmations": n,               (numeric)         The number of block confirmations of the transaction

 "fee": n.nnn,                     (numeric)         The total input value minus the total output value for sent transactions

 "generated": true|false,          (boolean)         Whether the transaction output is a coinbase output

 "involveswatchonly": true|false,  (boolean)         Unset

 "time": n,                        (numeric)         The earliest Unix time this transaction was known to exist

 "timereceived": n,                (numeric)         The earliest Unix time this transaction was known to exist

 "txid": "value",                  (string)          The hash of the transaction

 "txtype": "value",                (string)          The type of tx (regular tx, stake tx)

 "vout": n,                        (numeric)         The transaction output index

 "walletconflicts": ["value",...], (array of string) Unset

 "comment": "value",               (string)          Unset

 "otheraccount": "value",          (string)          Unset

},...]
```

#### renameaccount

Renames an account.

###### Arguments:

1. oldaccount (string, required) The old account name to rename
2. newaccount (string, required) The new name for the account

###### Result:

Nothing

#### walletislocked

Returns whether or not the wallet is locked.

###### Arguments:

None

###### Result:

true|false (boolean) Whether the wallet is locked

#### walletinfo

Returns global information about the wallet

###### Arguments:

None

###### Result:

```
{

 "daemonconnected": true|false,  (boolean) Whether or not the wallet is currently connected to the daemon RPC

 "unlocked": true|false,         (boolean) Whether or not the wallet is unlocked

 "txfee": n.nnn,                 (numeric) Transaction fee per kB of the serialized tx size in coins

 "ticketfee": n.nnn,             (numeric) Ticket fee per kB of the serialized tx size in coins

 "ticketpurchasing": true|false, (boolean) Whether or not the wallet is currently purchasing tickets

 "votebits": n,                  (numeric) Vote bits setting

 "votebitsextended": "value",    (string)  Extended vote bits setting

 "voteversion": n,               (numeric) Version of votes that will be generated

 "voting": true|false,           (boolean) Whether or not the wallet is currently voting tickets

}           
```

#### purchaseticket

Purchase ticket using available funds.

###### Arguments:

1. fromaccount   (string, required)             The account to use for purchase (default="default")
2. spendlimit    (numeric, required)            Limit on the amount to spend on ticket
3. minconf       (numeric, optional, default=1) Minimum number of block confirmations required
4. ticketaddress (string, optional)             Override the ticket address to which voting rights are given
5. numtickets    (numeric, optional)            The number of tickets to purchase
6. pooladdress   (string, optional)             The address to pay stake pool fees to
7. poolfees      (numeric, optional)            The amount of fees to pay to the stake pool
8. expiry        (numeric, optional)            Height at which the purchase tickets expire
9. comment       (string, optional)             Unused

###### Result:

"value" (string) Hash of the resulting ticket

#### sendtossrtx

Send to SS Revocation transaction

###### Arguments:

1. fromaccount (string, required) The account to spend a stake ticket from (default="default")
2. tickethash  (string, required) Hash of the ticket to be revoked
3. comment     (string, optional) Unused

###### Result:

"value" (string) txid of the resulting transaction

#### sendtosstx

Send to SStx

###### Arguments:

1. fromaccount (string, required) The account sent from
2. amounts     (object, required) Amounts to send
    {
      "Key": Value, (object) Unused
      ...
    }
3. inputs (array of object, required) Inputs for the tx
    [{
      "txid": "value", (string)  Txid to use
      "vout": n,       (numeric) Vout for the input tx
      "tree": n,       (numeric) Input tree
      "amt": n,        (numeric) Amount
    },...]
4. couts (array of object, required) Couts for the tx
    [{
      "addr": "value",       (string)  Address to use
      "commitamt": n,        (numeric) Amount to commit
      "changeaddr": "value", (string)  Change address to use
      "changeamt": n,        (numeric) Change amount
    },...]
5. minconf (numeric, optional, default=1) Minimum number of block confirmations required
6. comment (string, optional)             Unused

###### Result:

"value" (string) txid of the resulting transaction

#### sendtossgen

Generate a vote tx

###### Arguments:

1. fromaccount (string, required)  The account to use (default="default")
2. tickethash  (string, required)  Hash of the ticket used for vote
3. blockhash   (string, required)  Hash for the block being voted on
4. height      (numeric, required) Blockheight for vote
5. votebits    (numeric, required) Votebits to set
6. comment     (string, optional)  Unused

###### Result:

"value" (string) txid of the resulting transaction

#### generatevote

Returns the vote transaction encoded as a hexadecimal string

###### Arguments:

1. blockhash   (string, required)  Block hash for the ticket
2. height      (numeric, required) Block height for the ticket
3. tickethash  (string, required)  The hash of the ticket
4. votebits    (numeric, required) The voteBits to set for the ticket
5. votebitsext (string, required)  The extended voteBits to set for the ticket

###### Result:

```
{

 "hex": "value", (string) The hex encoded transaction

}           
     
```

#### getstakeinfo

Returns statistics about staking from the wallet.

###### Arguments:

None

###### Result:

```
{

 "blockheight": n,          (numeric) Current block height for stake info.

 "poolsize": n,             (numeric) Number of live tickets in the ticket pool.

 "difficulty": n.nnn,       (numeric) Current stake difficulty.

 "allmempooltix": n,        (numeric) Number of tickets currently in the mempool

 "ownmempooltix": n,        (numeric) Number of tickets submitted by this wallet currently in mempool

 "immature": n,             (numeric) Number of tickets from this wallet that are in the blockchain but which are not yet mature

 "live": n,                 (numeric) Number of mature, active tickets owned by this wallet

 "proportionlive": n.nnn,   (numeric) (Live / PoolSize)

 "voted": n,                (numeric) Number of votes cast by this wallet

 "totalsubsidy": n.nnn,     (numeric) Total amount of coins earned by stake mining

 "missed": n,               (numeric) Number of missed tickets (failure to vote, not including expired)

 "proportionmissed": n.nnn, (numeric) (Missed / (Missed + Voted))

 "revoked": n,              (numeric) Number of missed tickets that were missed and then revoked

 "expired": n,              (numeric) Number of tickets that have expired

}                           

```

#### getticketfee

Get the current fee per kB of the serialized tx size used for an authored stake transaction.

###### Arguments:

None

###### Result:

n.nnn (numeric) The current fee

#### setticketfee

Modify the fee per kB of the serialized tx size used each time more fee is required for an authored stake transaction.

###### Arguments:

1. fee (numeric, required) The new fee per kB of the serialized tx size valued in decred

###### Result:

true|false (boolean) The boolean 'true'

#### getwalletfee

Get currently set transaction fee for the wallet

###### Arguments:

None

###### Result:

n.nnn (numeric) Current tx fee (in HC)

#### addticket

Add a ticket to the wallet for vote and revocation creation.  Added tickets are auxiliary to transaction history and do not appear in getstakeinfo stats.

###### Arguments:

1. tickethex (string, required) Hex-encoded serialized transaction

###### Result:

Nothing

#### listscripts

List all scripts that have been added to wallet

###### Arguments:

None

###### Result:

```
{

 "scripts": [{             (array of object) A list of the imported scripts

  "hash160": "value",      (string)          The script hash

  "address": "value",      (string)          The script address

  "redeemscript": "value", (string)          The redeem script

 },...],                                     

}      

```

​                  

#### stakepooluserinfo

Get user info for stakepool

###### Arguments:

1. user (string, required) The id of the user to be looked up

###### Result:

```
{

 "tickets": [{             (array of object) A list of valid tickets that the user has added

  "status": "value",       (string)          The current status of the added ticket

  "ticket": "value",       (string)          The hash of the added ticket

  "ticketheight": n,       (numeric)         The height in which the ticket was added

  "spentby": "value",      (string)          The vote in which the ticket was spent

  "spentbyheight": n,      (numeric)         The height in which the ticket was spent

 },...],                                     

 "invalid": ["value",...], (array of string) A list of invalid tickets that the user has added

}           

```

#### ticketsforaddress

Request all the tickets for an address.

###### Arguments:

1. address (string, required) Address to look for.

###### Result:

true|false (boolean) Tickets owned by the specified address.