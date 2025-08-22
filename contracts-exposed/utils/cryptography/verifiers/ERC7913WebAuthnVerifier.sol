// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../../contracts/utils/cryptography/verifiers/ERC7913WebAuthnVerifier.sol";
import "../../../../contracts/interfaces/IERC7913.sol";
import "../../../../contracts/utils/cryptography/WebAuthn.sol";
import "../../../../contracts/utils/cryptography/P256.sol";
import "../../../../contracts/utils/Base64.sol";
import "../../../../contracts/utils/Bytes.sol";
import "../../../../contracts/utils/Strings.sol";
import "../../../../contracts/utils/math/Math.sol";
import "../../../../contracts/utils/Errors.sol";
import "../../../../contracts/utils/math/SafeCast.sol";
import "../../../../contracts/utils/math/SignedMath.sol";
import "../../../../contracts/utils/Panic.sol";

contract $ERC7913WebAuthnVerifier is ERC7913WebAuthnVerifier {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    receive() external payable {}
}
