// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
import './BEP20Burnable.sol';

/**
 * @title SCWToken
 * @dev Implementation of the SCWToken
 */
contract SCWToken is BEP20Burnable {

  constructor (
    string memory name,
    string memory symbol,
    uint8 decimals,
    uint256 initialBalance
  )
  BEP20(name, symbol)
  payable
  {
    require(initialBalance > 0, "SCW: supply cannot be zero");

    _setupDecimals(decimals);
    _mint(_msgSender(), initialBalance);
  }
}
