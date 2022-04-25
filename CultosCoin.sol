// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";

contract CultosCoin is ERC20, ERC20Capped, ERC20Burnable {
    constructor(uint256 supply_)
        ERC20("Cultos", "CULTOS")
        ERC20Capped(supply_ * (10**decimals()))
        ERC20Burnable()
    {
        _mint(msg.sender, supply_);
    }

    function _mint(address account, uint256 supply_)
        internal
        virtual
        override(ERC20, ERC20Capped)
    {
        super._mint(account, supply_ * (10**decimals()));
    }
}
