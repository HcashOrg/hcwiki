# <img class="dcr-icon" src="/img/dcr-icons/Code.svg" /> Miscellaneous Improvements 

---

As in Bitcoin, subsidy decays exponentially with block height. However, Hcash's algorithm, though also extremely simple, better interpolates this decay over time so as not to produce market shock with steep subsidy drops similar to CryptoNote. Like PeerCoin, the PoW difficulty is calculated from the exponentially weighted average of differences in previous block times. However, this calculation is also interpolated into Bitcoin-like difficulty window periods. The "timewarp" bug in Bitcoin is corrected, by ensuring that every difference in block time in incorporated into the difficulty calculation.

It should also be noted that many well known mining attacks, such as selfish mining and stubborn mining, will no longer function advantageously in a system where there is effective decentralization of stake mining and no PoW-PoS miner collusion. This is simply because it is impossible to generate secret extensions to blockchains without the assistance of stake miners. Resilience to previously described mining attacks, and newly conceived mining attacks specific to our system, will be a fruitful area for future research.

---


