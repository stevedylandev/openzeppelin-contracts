// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../../contracts/utils/cryptography/signers/SignerRSA.sol";
import "../../../../contracts/utils/cryptography/signers/AbstractSigner.sol";
import "../../../../contracts/utils/cryptography/RSA.sol";
import "../../../../contracts/utils/math/Math.sol";
import "../../../../contracts/utils/Panic.sol";
import "../../../../contracts/utils/math/SafeCast.sol";

contract $SignerRSA is SignerRSA {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor(bytes memory e, bytes memory n) SignerRSA(e, n) payable {
    }

    function $_setSigner(bytes calldata e,bytes calldata n) external payable {
        super._setSigner(e,n);
    }

    function $_rawSignatureValidation(bytes32 hash,bytes calldata signature) external view returns (bool ret0) {
        (ret0) = super._rawSignatureValidation(hash,signature);
    }

    receive() external payable {}
}
