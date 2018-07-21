# <img class="dcr-icon" src="/img/dcr-icons/CreateWallet.svg" /> Wallets and Seeds

---

#### 1. Should I give my wallet seed to someone? 

No, you should never share your wallet seed with anyone. Doing so is the equivalent of giving them all of your HC in that wallet.

---


#### 2. Can someone steal my coins if they access wallet.db? 

Nobody can steal your coins if they get access to the wallet.db file unless they also have your private passphrase. If you chose to use public encryption, they also cannot get access to any of your extended public keys or addresses.

---

#### 3. Can someone use a brute-force attack on a random wallet to regenerate its seed words (the words are not salted)? 

All the seed words are is a direct mapping of English words to hex digits. The seed is nothing more than a 256-bit (32-byte) cryptographically secure random number. Salt does not apply here at all. It has nothing to do with brute-forcing random numbers.

In other words, since each word can be 256 possibilities and there are 33 words, that yields 256^32 (or 2^256 depending on how you want to look at it, but it is the same number) possibilities. That number is larger than the entire number of hydrogen atoms in the known universe. In fact, it is almost more than the number of atoms total in the known universe.

To put this in perspective, assuming there are 7 billion people on the planet and each person owned 10 computers and each one of those computers could test a billion possibilities a second and that you could find the solution on average after testing only 50% of the total possibilities, it would still take 26x10^48 (that's 26 trillion trillion trillion trillion) years to brute-force a single seed.

---

#### 4. My seed is not working. What can I do? 

Make sure all of the words are on a single line separated by spaces. Even though they are printed out on multiple lines for readability, they must be entered on a single line. Also double-check your words have no typos by comparing them to the words in the [PGP word list](https://en.wikipedia.org/wiki/PGP_word_list).

---

#### 5. How do I import a key that is in wallet import format (WIF)? 

It is possible to import a standalone private key into `hcwallet`. Note that this is only for `--noseed` addresses and you should not run this unless you know what you are doing!

Unlock the wallet (ignore angle brackets):

```no-highlight
hcctl --wallet walletpassphrase <private encryption passphrase> 60
```

Import the standalone (`--noseed`) private key (ignore angle brackets):

```no-highlight
hcctl --wallet importprivkey <put WIF private key here>
```

View balance of imported account (give it some time to rescan and look at the log in hcwallet to see rescan progress):

```no-highlight
hcctl --wallet getbalance "imported" 0 all
```

---

#### 6. What is the difference between a testnet and mainnet address? 

A testnet public key address starts with the letters `Tk`. A mainnet address starts with the letters `Dk`. `T` = Testnet, `D` = (Hcash) Mainnet.

---

#### 7. What are the different types of addresses? 

A Hcash address is actually just a representation of a public key (which itself could be a script hash) along with a 2-byte prefix which identifies the network and type and a checksum suffix in order to detect improperly entered addresses.

Consequently, you can always tell what type of address it is based on the 2-byte prefix.

The first byte of the prefix identifies the network. This is why all mainnet addresses start with "D", testnet addresses start with "T", and simnet addresses start with "S". The second byte of the prefix identifies the type of address it is.

The most common addresses used at the moment are secp256k1 pubkey hashes, which are identified by a lowercase "s". It represents a single public key and therefore only has a single associated private key which can be used to redeem it.

The stake pool, however, uses a pay-to-script-hash address, which is identified by the second byte being a lowercase "c" (again that is shown in the linked params). The specific flavor of script it generates is a multi-signature 1-of-2, which is how it allows either the pool, or you, to vote. Both you and the stake pool have your own private keys and since the script only requires one signature of the possible two, that is how it allows delegation of voting rights to the pool without you giving up your voting rights completely.

---

