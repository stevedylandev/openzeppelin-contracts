// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../contracts/mocks/ConstructorMock.sol";

contract $ConstructorMock is ConstructorMock {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor(RevertType error) ConstructorMock(error) payable {
    }

    function $foo() external view returns (bool) {
        return foo;
    }

    receive() external payable {}
}
