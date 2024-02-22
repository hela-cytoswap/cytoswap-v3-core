// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import './pool/ICytoswapV3PoolImmutables.sol';
import './pool/ICytoswapV3PoolState.sol';
import './pool/ICytoswapV3PoolDerivedState.sol';
import './pool/ICytoswapV3PoolActions.sol';
import './pool/ICytoswapV3PoolOwnerActions.sol';
import './pool/ICytoswapV3PoolEvents.sol';

/// @title The interface for a Cytoswap V3 Pool
/// @notice A Cytoswap pool facilitates swapping and automated market making between any two assets that strictly conform
/// to the ERC20 specification
/// @dev The pool interface is broken up into many smaller pieces
interface ICytoswapV3Pool is
    ICytoswapV3PoolImmutables,
    ICytoswapV3PoolState,
    ICytoswapV3PoolDerivedState,
    ICytoswapV3PoolActions,
    ICytoswapV3PoolOwnerActions,
    ICytoswapV3PoolEvents
{

}
