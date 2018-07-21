# <img class="dcr-icon" src="/img/dcr-icons/Code.svg" /> Elliptic Curve Signature Algorithms 

---

Although secp256k1 is widely considered to have a secure choice of elliptic curve parameters, some questions about the origin of the curve remain. For example, the selection of the Koblitz curve,

\((y^2 + xy = x^3 + ax^2 + b \text{ and } a = a^2 \text{, } b = b^2 \text{; } a = 1 \text{ or } 2 \text{, } b != 0)\)

is typically done by enumerating the binary extension Galois fields \(GF(2^m)\) where \(m\) is a prime in the range {\(0\), \(...\), higher limit} and \(x,y \in GF(2^m)\). For 128-bit security, \(m\) is required to be \(\geqslant 257\) and typically the smallest prime possible in this range to facilitate fast calculation. In this case, the obvious choice for \(m\) is \(277\text{, } a = 0\); despite the existence of this appropriate $m$ value being known by the curators of the curve parameters and the fact that it was the most computationally efficient solution, the parameters \(m = 283\) and \(a = 0\) were selected out of three possible options:

 \((m = 277\text{, } a = 0\text{; } m = 283\text{, } a = 0\text{; } m = 283\text{, } a = 1)\).

For all other Koblitz curve specifications, the most obvious \(m\) value is selected. Although this is curious, there are no known attacks that can be applied by using a slightly larger $m$ value for the Galois field. Other objections to the parameters used by secp256k1 have also been raised.

Another extremely popular digital signature algorithm (DSA) with 128-bits of security is Ed25519. This uses the EdDSA signing algorithm over a curve birationally equivalent to Curve25519 and is widely employed today. Unlike secp256k1's ECDSA, Ed25519 uses simpler Schnorr signatures that are provably secure in a random oracle model (See: [Schnorr Signatures](schnorr-signatures.md)).

Schnorr signatures have also been proposed for Bitcoin. However, instead of using an OP code exclusive to Schnorr signatures utilizing the curve parameters for secp256k1, Hcash instead uses a new OP code OP_CHECKSIGALT to verify an unlimited number of new signature schemes. In the current implementation, both secp256k1 Schnorr signatures and Ed25519 signatures are available to supplement secp256k1 ECDSA signatures. In the future, it is trivial to add new signature schemes in a soft fork, such as those that are quantum secure. Having these two Schnorr suites available also allows for the generation of simple group signatures occupying the same space of a normal signature, which for both is implemented. In the future, threshold signatures using dealerless secret sharing will also enable t-of-n threshold signatures occupying the same amount of space.

---

