// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../../contracts/utils/cryptography/signers/SignerWebAuthn.sol";
import "../../../../contracts/utils/cryptography/signers/SignerP256.sol";
import "../../../../contracts/utils/cryptography/signers/AbstractSigner.sol";
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

contract $SignerWebAuthn is SignerWebAuthn {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor(bytes32 qx, bytes32 qy) SignerP256(qx, qy) payable {
    }

    function $_rawSignatureValidation(bytes32 hash,bytes calldata signature) external view returns (bool ret0) {
        (ret0) = super._rawSignatureValidation(hash,signature);
    }

    function $_setSigner(bytes32 qx,bytes32 qy) external payable {
        super._setSigner(qx,qy);
    }

    receive() external payable {}
}
