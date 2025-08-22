// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../contracts/utils/cryptography/draft-ERC7739Utils.sol";
import "../../../contracts/utils/Calldata.sol";

contract $ERC7739Utils {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    function $encodeTypedDataSig(bytes calldata signature,bytes32 appSeparator,bytes32 contentsHash,string calldata contentsDescr) external pure returns (bytes memory ret0) {
        (ret0) = ERC7739Utils.encodeTypedDataSig(signature,appSeparator,contentsHash,contentsDescr);
    }

    function $decodeTypedDataSig(bytes calldata encodedSignature) external pure returns (bytes memory signature, bytes32 appSeparator, bytes32 contentsHash, string memory contentsDescr) {
        (signature, appSeparator, contentsHash, contentsDescr) = ERC7739Utils.decodeTypedDataSig(encodedSignature);
    }

    function $personalSignStructHash(bytes32 contents) external pure returns (bytes32 ret0) {
        (ret0) = ERC7739Utils.personalSignStructHash(contents);
    }

    function $typedDataSignStructHash(string calldata contentsName,string calldata contentsType,bytes32 contentsHash,bytes calldata domainBytes) external pure returns (bytes32 result) {
        (result) = ERC7739Utils.typedDataSignStructHash(contentsName,contentsType,contentsHash,domainBytes);
    }

    function $typedDataSignStructHash(string calldata contentsDescr,bytes32 contentsHash,bytes calldata domainBytes) external pure returns (bytes32 result) {
        (result) = ERC7739Utils.typedDataSignStructHash(contentsDescr,contentsHash,domainBytes);
    }

    function $typedDataSignTypehash(string calldata contentsName,string calldata contentsType) external pure returns (bytes32 ret0) {
        (ret0) = ERC7739Utils.typedDataSignTypehash(contentsName,contentsType);
    }

    function $decodeContentsDescr(string calldata contentsDescr) external pure returns (string memory contentsName, string memory contentsType) {
        (contentsName, contentsType) = ERC7739Utils.decodeContentsDescr(contentsDescr);
    }

    receive() external payable {}
}
