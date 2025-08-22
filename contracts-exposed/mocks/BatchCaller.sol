// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../contracts/mocks/BatchCaller.sol";
import "../../contracts/utils/Address.sol";
import "../../contracts/utils/Errors.sol";

contract $BatchCaller is BatchCaller {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    receive() external payable {}
}
