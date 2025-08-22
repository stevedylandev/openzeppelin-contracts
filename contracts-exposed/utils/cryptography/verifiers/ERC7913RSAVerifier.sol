// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../../contracts/utils/cryptography/verifiers/ERC7913RSAVerifier.sol";
import "../../../../contracts/interfaces/IERC7913.sol";
import "../../../../contracts/utils/cryptography/RSA.sol";
import "../../../../contracts/utils/math/Math.sol";
import "../../../../contracts/utils/Panic.sol";
import "../../../../contracts/utils/math/SafeCast.sol";

contract $ERC7913RSAVerifier is ERC7913RSAVerifier {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    receive() external payable {}
}
