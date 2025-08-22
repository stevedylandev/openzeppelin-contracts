// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../contracts/utils/ReentrancyGuardTransient.sol";
import "../../contracts/utils/TransientSlot.sol";

contract $ReentrancyGuardTransient is ReentrancyGuardTransient {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    function $nonReentrant() external payable nonReentrant() {}

    function $_reentrancyGuardEntered() external view returns (bool ret0) {
        (ret0) = super._reentrancyGuardEntered();
    }

    receive() external payable {}
}
