// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../../contracts/utils/cryptography/signers/SignerECDSA.sol";
import "../../../../contracts/utils/cryptography/signers/AbstractSigner.sol";
import "../../../../contracts/utils/cryptography/ECDSA.sol";

contract $SignerECDSA is SignerECDSA {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor(address signerAddr) SignerECDSA(signerAddr) payable {
    }

    function $_setSigner(address signerAddr) external payable {
        super._setSigner(signerAddr);
    }

    function $_rawSignatureValidation(bytes32 hash,bytes calldata signature) external view returns (bool ret0) {
        (ret0) = super._rawSignatureValidation(hash,signature);
    }

    receive() external payable {}
}
