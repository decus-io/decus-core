// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

import "@openzeppelin/contracts/token/ERC20/ERC20Burnable.sol";

contract MockBTC is ERC20Burnable {
    constructor(
        string memory name,
        string memory symbol,
        uint8 decimals
    ) public ERC20(name, symbol) {
        _setupDecimals(decimals);
    }

    function mint(address account, uint256 amount) public {
        _mint(account, amount);
    }
}

contract MockWBTC is MockBTC {
    constructor() public MockBTC("Wrapped Bitcoin", "WBTC", 8) {}
}

contract MockERC20 is MockBTC {
    constructor() public MockBTC("Other ERC20", "OTHER", 18) {}
}
