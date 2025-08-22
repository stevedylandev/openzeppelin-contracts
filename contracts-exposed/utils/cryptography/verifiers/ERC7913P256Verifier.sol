// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../../contracts/utils/cryptography/verifiers/ERC7913P256Verifier.sol";
import "../../../../contracts/interfaces/IERC7913.sol";
import "../../../../contracts/utils/cryptography/P256.sol";
import "../../../../contracts/utils/math/Math.sol";
import "../../../../contracts/utils/Errors.sol";
import "../../../../contracts/utils/Panic.sol";
import "../../../../contracts/utils/math/SafeCast.sol";

contract $ERC7913P256Verifier is ERC7913P256Verifier {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    receive() external payable {}
}
