// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../contracts/utils/Memory.sol";

contract $Memory {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    function $getFreeMemoryPointer() external pure returns (Memory.Pointer ptr) {
        (ptr) = Memory.getFreeMemoryPointer();
    }

    function $setFreeMemoryPointer(Memory.Pointer ptr) external pure {
        Memory.setFreeMemoryPointer(ptr);
    }

    function $asBytes32(Memory.Pointer ptr) external pure returns (bytes32 ret0) {
        (ret0) = Memory.asBytes32(ptr);
    }

    function $asPointer(bytes32 value) external pure returns (Memory.Pointer ret0) {
        (ret0) = Memory.asPointer(value);
    }

    receive() external payable {}
}
