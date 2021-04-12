## Solidity Contracts

- [ ] Proxy / MinimalProxy.
- [ ] Uniswap Pricing.

#### TODO
- [ ] figure out `docgen`

#### ERC1167 Proxy Contract (v0.4.23)

- Loan system, each loan is its own smart contract.
- Save gas reduce number of loan contracts
- Any deployed contract as a library
- This is a unique proxy implementation (not the upgradable stuff that we usually read about)

**Flow:**
`User ==> Proxy contract (data) ==> Implementation contract (code)`
Proxy forwards to implementation contract (in the context of the proxy contract)


