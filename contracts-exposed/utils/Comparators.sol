// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../contracts/utils/Comparators.sol";

contract $Comparators {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    function $lt(uint256 a,uint256 b) external pure returns (bool ret0) {
        (ret0) = Comparators.lt(a,b);
    }

    function $gt(uint256 a,uint256 b) external pure returns (bool ret0) {
        (ret0) = Comparators.gt(a,b);
    }

    receive() external payable {}
}
