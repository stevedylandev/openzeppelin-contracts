// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../contracts/utils/Calldata.sol";

contract $Calldata {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    function $emptyBytes() external pure returns (bytes memory result) {
        (result) = Calldata.emptyBytes();
    }

    function $emptyString() external pure returns (string memory result) {
        (result) = Calldata.emptyString();
    }

    receive() external payable {}
}
