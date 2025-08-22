// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../../contracts/mocks/docs/account/MyFactoryAccount.sol";
import "../../../../contracts/proxy/Clones.sol";
import "../../../../contracts/utils/Address.sol";
import "../../../../contracts/utils/Create2.sol";
import "../../../../contracts/utils/Errors.sol";

contract $MyFactoryAccount is MyFactoryAccount {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor(address impl_) MyFactoryAccount(impl_) payable {
    }

    receive() external payable {}
}
