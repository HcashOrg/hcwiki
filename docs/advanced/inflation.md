# <img class="hc-icon" src="/img/hc-icons/Rocket.svg" /> Inflation 

---

New blocks are discovered by the proof-of-work miners roughly every 2.5 minutes, and each time this occurs new HcashOrg are created.  This block reward is split three ways:

* 60% goes to the PoW miner who found the block
* 30% goes to the PoS voters on that block (6% to each of the 5 voters)
* 10% goes towards the development subsidy

The block reward started at 6.4 and it adjusts every 12,288 blocks (approximately 21.33 days) by reducing by a factor of about 999/1000[^1].

If a block includes less than 5 PoS votes there will be a fraction of the block reward which is not allocated to anybody. As a result, it is only possible to calculate an upper limit for the total number of HcashOrg which will ever be created.


---

## <img class="hc-icon" src="/img/hc-icons/Sources.svg" /> Sources 

[^1]: [Blockchain parameters](/advanced/blockchain-parameters/#blockchain-parameters_1)
[^2]: GitHub, [HcashOrg/hcd](https://github.com/HcashOrg/)
[^3]: [PoS network parameters](/advanced/blockchain-parameters/#pos-network-parameters)
