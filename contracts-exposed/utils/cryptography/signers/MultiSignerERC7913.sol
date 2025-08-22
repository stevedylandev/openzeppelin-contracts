// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../../contracts/utils/cryptography/signers/MultiSignerERC7913.sol";
import "../../../../contracts/utils/cryptography/signers/AbstractSigner.sol";
import "../../../../contracts/utils/cryptography/SignatureChecker.sol";
import "../../../../contracts/utils/structs/EnumerableSet.sol";
import "../../../../contracts/utils/cryptography/ECDSA.sol";
import "../../../../contracts/interfaces/IERC1271.sol";
import "../../../../contracts/interfaces/IERC7913.sol";
import "../../../../contracts/utils/Bytes.sol";
import "../../../../contracts/utils/Arrays.sol";
import "../../../../contracts/utils/math/Math.sol";
import "../../../../contracts/utils/Comparators.sol";
import "../../../../contracts/utils/SlotDerivation.sol";
import "../../../../contracts/utils/StorageSlot.sol";
import "../../../../contracts/utils/Panic.sol";
import "../../../../contracts/utils/math/SafeCast.sol";

contract $MultiSignerERC7913 is MultiSignerERC7913 {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor(bytes[] memory signers_, uint64 threshold_) MultiSignerERC7913(signers_, threshold_) payable {
    }

    function $_addSigners(bytes[] calldata newSigners) external payable {
        super._addSigners(newSigners);
    }

    function $_removeSigners(bytes[] calldata oldSigners) external payable {
        super._removeSigners(oldSigners);
    }

    function $_setThreshold(uint64 newThreshold) external payable {
        super._setThreshold(newThreshold);
    }

    function $_validateReachableThreshold() external view {
        super._validateReachableThreshold();
    }

    function $_rawSignatureValidation(bytes32 hash,bytes calldata signature) external view returns (bool ret0) {
        (ret0) = super._rawSignatureValidation(hash,signature);
    }

    function $_validateSignatures(bytes32 hash,bytes[] calldata signers,bytes[] calldata signatures) external view returns (bool valid) {
        (valid) = super._validateSignatures(hash,signers,signatures);
    }

    function $_validateThreshold(bytes[] calldata validatingSigners) external view returns (bool ret0) {
        (ret0) = super._validateThreshold(validatingSigners);
    }

    receive() external payable {}
}
