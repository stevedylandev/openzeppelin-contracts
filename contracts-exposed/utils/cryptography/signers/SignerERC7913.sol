// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../../contracts/utils/cryptography/signers/SignerERC7913.sol";
import "../../../../contracts/utils/cryptography/signers/AbstractSigner.sol";
import "../../../../contracts/utils/cryptography/SignatureChecker.sol";
import "../../../../contracts/utils/cryptography/ECDSA.sol";
import "../../../../contracts/interfaces/IERC1271.sol";
import "../../../../contracts/interfaces/IERC7913.sol";
import "../../../../contracts/utils/Bytes.sol";
import "../../../../contracts/utils/math/Math.sol";
import "../../../../contracts/utils/Panic.sol";
import "../../../../contracts/utils/math/SafeCast.sol";

contract $SignerERC7913 is SignerERC7913 {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor(bytes memory signer_) SignerERC7913(signer_) payable {
    }

    function $_setSigner(bytes calldata signer_) external payable {
        super._setSigner(signer_);
    }

    function $_rawSignatureValidation(bytes32 hash,bytes calldata signature) external view returns (bool ret0) {
        (ret0) = super._rawSignatureValidation(hash,signature);
    }

    receive() external payable {}
}
