// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../../contracts/utils/cryptography/signers/SignerERC7702.sol";
import "../../../../contracts/utils/cryptography/signers/AbstractSigner.sol";
import "../../../../contracts/utils/cryptography/ECDSA.sol";

contract $SignerERC7702 is SignerERC7702 {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    function $_rawSignatureValidation(bytes32 hash,bytes calldata signature) external view returns (bool ret0) {
        (ret0) = super._rawSignatureValidation(hash,signature);
    }

    receive() external payable {}
}
