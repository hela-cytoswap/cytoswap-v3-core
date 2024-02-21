# Cytoswap V3

This repository contains the core smart contracts for the Cytoswap V3 Protocol.
For higher level contracts, see the [cytoswap-v3-periphery](https://gitlab.snapresearch.io/swapnity/cytoswap-v3-periphery)
repository.

## Bug bounty

This repository is subject to the Cytoswap V3 bug bounty program, per the terms defined [here](./bug-bounty.md).

## Local deployment

In order to deploy this code to a local testnet, you should install the npm package
`@cytoswap/v3-core`
and import the factory bytecode located at
`@cytoswap/v3-core/artifacts/contracts/CytoswapV3Factory.sol/CytoswapV3Factory.json`.
For example:

```typescript
import {
  abi as FACTORY_ABI,
  bytecode as FACTORY_BYTECODE,
} from '@cytoswap/v3-core/artifacts/contracts/CytoswapV3Factory.sol/CytoswapV3Factory.json'

// deploy the bytecode
```

This will ensure that you are testing against the same bytecode that is deployed to
mainnet and public testnets, and all Cytoswap code will correctly interoperate with
your local deployment.

## Using solidity interfaces

The Cytoswap v3 interfaces are available for import into solidity smart contracts
via the npm artifact `@cytoswap/v3-core`, e.g.:

```solidity
import '@cytoswap/v3-core/contracts/interfaces/ICytoswapV3Pool.sol';

contract MyContract {
  ICytoswapV3Pool pool;

  function doSomethingWithPool() {
    // pool.swap(...);
  }
}

```

## Licensing

The primary license for Cytoswap V3 Core is the Business Source License 1.1 (`BUSL-1.1`), see [`LICENSE`](./LICENSE). However, some files are dual licensed under `GPL-2.0-or-later`:

- All files in `contracts/interfaces/` may also be licensed under `GPL-2.0-or-later` (as indicated in their SPDX headers), see [`contracts/interfaces/LICENSE`](./contracts/interfaces/LICENSE)
- Several files in `contracts/libraries/` may also be licensed under `GPL-2.0-or-later` (as indicated in their SPDX headers), see [`contracts/libraries/LICENSE`](contracts/libraries/LICENSE)

### Other Exceptions

- `contracts/libraries/FullMath.sol` is licensed under `MIT` (as indicated in its SPDX header), see [`contracts/libraries/LICENSE_MIT`](contracts/libraries/LICENSE_MIT)
- All files in `contracts/test` remain unlicensed (as indicated in their SPDX headers).
