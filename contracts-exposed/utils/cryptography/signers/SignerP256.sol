// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../../contracts/utils/cryptography/signers/SignerP256.sol";
import "../../../../contracts/utils/cryptography/signers/AbstractSigner.sol";
import "../../../../contracts/utils/cryptography/P256.sol";
import "../../../../contracts/utils/math/Math.sol";
import "../../../../contracts/utils/Errors.sol";
import "../../../../contracts/utils/Panic.sol";
import "../../../../contracts/utils/math/SafeCast.sol";

contract $SignerP256 is SignerP256 {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor(bytes32 qx, bytes32 qy) SignerP256(qx, qy) payable {
    }

    function $_setSigner(bytes32 qx,bytes32 qy) external payable {
        super._setSigner(qx,qy);
    }

    function $_rawSignatureValidation(bytes32 hash,bytes calldata signature) external view returns (bool ret0) {
        (ret0) = super._rawSignatureValidation(hash,signature);
    }

    receive() external payable {}
}
