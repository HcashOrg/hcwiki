# <img class="dcr-icon" src="/img/dcr-icons/Code.svg" /> Signature Script Isolation and Fraud Proofs 

---

To prevent transaction malleability, the ability to generate a transaction with the same input references and outputs and yet a different transaction ID, input scripts have been removed from the calculation of the transaction hash. The origins of this modification have been controversial, although it appears to have been implemented in both CryptoNote coins and sidechains in the past. It is now being proposed for Bitcoin as a soft fork referred to as "Segregated Witness". As in the Elements sidechains implementation, commitments to the witness data are included in the merkle tree of the block. In addition, fraud proofs, as suggested for Bitcoin's soft fork, are set by miners and also committed to as part of the data in the merkle tree.

---

