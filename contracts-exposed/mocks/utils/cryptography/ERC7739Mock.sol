// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../../contracts/mocks/utils/cryptography/ERC7739Mock.sol";
import "../../../../contracts/utils/cryptography/signers/SignerECDSA.sol";
import "../../../../contracts/utils/cryptography/signers/draft-ERC7739.sol";
import "../../../../contracts/interfaces/IERC1271.sol";
import "../../../../contracts/utils/cryptography/EIP712.sol";
import "../../../../contracts/interfaces/IERC5267.sol";
import "../../../../contracts/utils/cryptography/signers/AbstractSigner.sol";
import "../../../../contracts/utils/cryptography/signers/SignerP256.sol";
import "../../../../contracts/utils/cryptography/signers/SignerRSA.sol";
import "../../../../contracts/utils/cryptography/ECDSA.sol";
import "../../../../contracts/utils/cryptography/draft-ERC7739Utils.sol";
import "../../../../contracts/utils/cryptography/MessageHashUtils.sol";
import "../../../../contracts/utils/ShortStrings.sol";
import "../../../../contracts/utils/cryptography/P256.sol";
import "../../../../contracts/utils/cryptography/RSA.sol";
import "../../../../contracts/utils/Calldata.sol";
import "../../../../contracts/utils/Strings.sol";
import "../../../../contracts/utils/StorageSlot.sol";
import "../../../../contracts/utils/math/Math.sol";
import "../../../../contracts/utils/Errors.sol";
import "../../../../contracts/utils/math/SafeCast.sol";
import "../../../../contracts/utils/math/SignedMath.sol";
import "../../../../contracts/utils/Bytes.sol";
import "../../../../contracts/utils/Panic.sol";

contract $ERC7739ECDSAMock is ERC7739ECDSAMock {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor(string memory name, string memory version, address signerAddr) EIP712(name, version) SignerECDSA(signerAddr) payable {
    }

    function $_setSigner(address signerAddr) external payable {
        super._setSigner(signerAddr);
    }

    function $_rawSignatureValidation(bytes32 hash,bytes calldata signature) external view returns (bool ret0) {
        (ret0) = super._rawSignatureValidation(hash,signature);
    }

    function $_domainSeparatorV4() external view returns (bytes32 ret0) {
        (ret0) = super._domainSeparatorV4();
    }

    function $_hashTypedDataV4(bytes32 structHash) external view returns (bytes32 ret0) {
        (ret0) = super._hashTypedDataV4(structHash);
    }

    function $_EIP712Name() external view returns (string memory ret0) {
        (ret0) = super._EIP712Name();
    }

    function $_EIP712Version() external view returns (string memory ret0) {
        (ret0) = super._EIP712Version();
    }

    receive() external payable {}
}

contract $ERC7739P256Mock is ERC7739P256Mock {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor(string memory name, string memory version, bytes32 qx, bytes32 qy) EIP712(name, version) SignerP256(qx, qy) payable {
    }

    function $_setSigner(bytes32 qx,bytes32 qy) external payable {
        super._setSigner(qx,qy);
    }

    function $_rawSignatureValidation(bytes32 hash,bytes calldata signature) external view returns (bool ret0) {
        (ret0) = super._rawSignatureValidation(hash,signature);
    }

    function $_domainSeparatorV4() external view returns (bytes32 ret0) {
        (ret0) = super._domainSeparatorV4();
    }

    function $_hashTypedDataV4(bytes32 structHash) external view returns (bytes32 ret0) {
        (ret0) = super._hashTypedDataV4(structHash);
    }

    function $_EIP712Name() external view returns (string memory ret0) {
        (ret0) = super._EIP712Name();
    }

    function $_EIP712Version() external view returns (string memory ret0) {
        (ret0) = super._EIP712Version();
    }

    receive() external payable {}
}

contract $ERC7739RSAMock is ERC7739RSAMock {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor(string memory name, string memory version, bytes memory e, bytes memory n) EIP712(name, version) SignerRSA(e, n) payable {
    }

    function $_setSigner(bytes calldata e,bytes calldata n) external payable {
        super._setSigner(e,n);
    }

    function $_rawSignatureValidation(bytes32 hash,bytes calldata signature) external view returns (bool ret0) {
        (ret0) = super._rawSignatureValidation(hash,signature);
    }

    function $_domainSeparatorV4() external view returns (bytes32 ret0) {
        (ret0) = super._domainSeparatorV4();
    }

    function $_hashTypedDataV4(bytes32 structHash) external view returns (bytes32 ret0) {
        (ret0) = super._hashTypedDataV4(structHash);
    }

    function $_EIP712Name() external view returns (string memory ret0) {
        (ret0) = super._EIP712Name();
    }

    function $_EIP712Version() external view returns (string memory ret0) {
        (ret0) = super._EIP712Version();
    }

    receive() external payable {}
}
