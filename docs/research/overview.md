# <img class="dcr-icon" src="/img/dcr-icons/Info.svg" /> Overview 

---

Distributed timestamping protocols were first applied to decentralizing a financial network in the ground-breaking paper on Bitcoin by Nakamoto. The field has seen explosive research follow-up from both amateurs and professionals, competing to offer extensions, adjustments, improvements, and refinements of the existing protocol. Notable implementations of new ideas include Ethereum, which extended scripting, CryptoNote, which refined privacy, and Sidechains, which investigated two-way pegs with 1:1 Bitcoin tokens. These protocols all utilize proof-of-work (PoW) as originally described in the Bitcoin whitepaper.

A common extension to the Bitcoin protocol modifies the consensus mechanism to either completely or partially use proof-of-stake (PoS), or the use of one's stake (tokens) rather than one's computational power to participate in the timestamping process. The first proof-of-stake blockchain based on the Bitcoin protocol was implemented in 2012 by King and Nadal, and includes both PoW and PoS that gradually skew towards complete PoS over time. Criticisms of pure PoS consensus systems have themselves been abundant, with the most vehement opposition coming from those working with purely PoW blockchains. The most common argument against PoS for distributed timestamping is "nothing-at-stake" or "costless simulation", describing the systematic instability resulting from stakeholders being able to generate alternatively timestamped histories with no cost to themselves.

Despite the controversy, it is apparent that systems with a PoS overlay dependent on a PoW timestamping system may be able to independently achieve consensus. This is mathematically explored by Bentov and colleagues in a paper on their scheme, proof-of-activity (PoA), and appears to be a viable extension to the PoW protocols that may enable some interesting new properties. A similar design called MC2 was earlier proposed by Mackenzie in 2013. Here we describe the construction and implementation of a similar consensus system that we have named "".

Research work in Hcash is currently organized around the following subsections:

* [Hybrid Design](hybrid-design.md)
* [Decentralized Stake Pooling](decentralized-stake-pooling.md)
* [Elliptic Curve Signature Algorithms](elliptic-curve-signature-algorithms.md)
* [BLAKE-256 Hash Function](blake-256-hash-function.md)
* [Script Extensions](script-extensions.md)
* [Signature Script Isolation and Fraud Proofs](signature-script-isolation-and-fraud-proofs.md)
* [Transaction Extensions](transaction-extensions.md)
* [Schnorr Signatures](schnorr-signatures.md)
* [Miscellaneous Improvements](miscellaneous-improvements.md)


