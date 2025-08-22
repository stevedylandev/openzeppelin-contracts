// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../contracts/utils/cryptography/SignatureChecker.sol";
import "../../../contracts/utils/cryptography/ECDSA.sol";
import "../../../contracts/interfaces/IERC1271.sol";
import "../../../contracts/interfaces/IERC7913.sol";
import "../../../contracts/utils/Bytes.sol";
import "../../../contracts/utils/math/Math.sol";
import "../../../contracts/utils/Panic.sol";
import "../../../contracts/utils/math/SafeCast.sol";

contract $SignatureChecker {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    function $isValidSignatureNow(address signer,bytes32 hash,bytes calldata signature) external view returns (bool ret0) {
        (ret0) = SignatureChecker.isValidSignatureNow(signer,hash,signature);
    }

    function $isValidSignatureNowCalldata(address signer,bytes32 hash,bytes calldata signature) external view returns (bool ret0) {
        (ret0) = SignatureChecker.isValidSignatureNowCalldata(signer,hash,signature);
    }

    function $isValidERC1271SignatureNow(address signer,bytes32 hash,bytes calldata signature) external view returns (bool result) {
        (result) = SignatureChecker.isValidERC1271SignatureNow(signer,hash,signature);
    }

    function $isValidSignatureNow(bytes calldata signer,bytes32 hash,bytes calldata signature) external view returns (bool ret0) {
        (ret0) = SignatureChecker.isValidSignatureNow(signer,hash,signature);
    }

    function $areValidSignaturesNow(bytes32 hash,bytes[] calldata signers,bytes[] calldata signatures) external view returns (bool ret0) {
        (ret0) = SignatureChecker.areValidSignaturesNow(hash,signers,signatures);
    }

    receive() external payable {}
}
