// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../contracts/mocks/account/AccountMock.sol";
import "../../../contracts/token/ERC1155/utils/ERC1155Holder.sol";
import "../../../contracts/token/ERC1155/IERC1155Receiver.sol";
import "../../../contracts/utils/introspection/ERC165.sol";
import "../../../contracts/utils/introspection/IERC165.sol";
import "../../../contracts/token/ERC721/utils/ERC721Holder.sol";
import "../../../contracts/token/ERC721/IERC721Receiver.sol";
import "../../../contracts/account/extensions/draft-ERC7821.sol";
import "../../../contracts/interfaces/draft-IERC7821.sol";
import "../../../contracts/utils/cryptography/signers/draft-ERC7739.sol";
import "../../../contracts/interfaces/IERC1271.sol";
import "../../../contracts/utils/cryptography/EIP712.sol";
import "../../../contracts/interfaces/IERC5267.sol";
import "../../../contracts/account/Account.sol";
import "../../../contracts/interfaces/draft-IERC4337.sol";
import "../../../contracts/utils/cryptography/signers/AbstractSigner.sol";
import "../../../contracts/utils/cryptography/signers/SignerECDSA.sol";
import "../../../contracts/utils/cryptography/signers/SignerP256.sol";
import "../../../contracts/utils/cryptography/signers/SignerRSA.sol";
import "../../../contracts/utils/cryptography/signers/SignerWebAuthn.sol";
import "../../../contracts/utils/cryptography/signers/SignerERC7702.sol";
import "../../../contracts/account/extensions/draft-AccountERC7579.sol";
import "../../../contracts/interfaces/draft-IERC7579.sol";
import "../../../contracts/account/extensions/draft-AccountERC7579Hooked.sol";
import "../../../contracts/utils/cryptography/signers/SignerERC7913.sol";
import "../../../contracts/utils/cryptography/signers/MultiSignerERC7913.sol";
import "../../../contracts/utils/cryptography/signers/MultiSignerERC7913Weighted.sol";
import "../../../contracts/account/utils/draft-ERC4337Utils.sol";
import "../../../contracts/account/utils/draft-ERC7579Utils.sol";
import "../../../contracts/utils/cryptography/draft-ERC7739Utils.sol";
import "../../../contracts/utils/cryptography/MessageHashUtils.sol";
import "../../../contracts/utils/ShortStrings.sol";
import "../../../contracts/utils/cryptography/ECDSA.sol";
import "../../../contracts/utils/cryptography/P256.sol";
import "../../../contracts/utils/cryptography/RSA.sol";
import "../../../contracts/utils/cryptography/WebAuthn.sol";
import "../../../contracts/utils/structs/EnumerableSet.sol";
import "../../../contracts/utils/Bytes.sol";
import "../../../contracts/utils/Packing.sol";
import "../../../contracts/utils/Address.sol";
import "../../../contracts/utils/Calldata.sol";
import "../../../contracts/utils/cryptography/SignatureChecker.sol";
import "../../../contracts/utils/math/SafeCast.sol";
import "../../../contracts/utils/math/Math.sol";
import "../../../contracts/utils/Strings.sol";
import "../../../contracts/utils/StorageSlot.sol";
import "../../../contracts/utils/Errors.sol";
import "../../../contracts/utils/Base64.sol";
import "../../../contracts/utils/Arrays.sol";
import "../../../contracts/interfaces/IERC7913.sol";
import "../../../contracts/utils/Panic.sol";
import "../../../contracts/utils/math/SignedMath.sol";
import "../../../contracts/utils/Comparators.sol";
import "../../../contracts/utils/SlotDerivation.sol";

contract $AccountMock is AccountMock {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    event return$_validateUserOp(uint256 ret0);

    constructor(string memory name, string memory version) EIP712(name, version) payable {
    }

    function $onlyEntryPointOrSelf() external payable onlyEntryPointOrSelf() {}

    function $onlyEntryPoint() external payable onlyEntryPoint() {}

    function $_rawSignatureValidation(bytes32 hash,bytes calldata signature) external pure returns (bool ret0) {
        (ret0) = super._rawSignatureValidation(hash,signature);
    }

    function $_erc7821AuthorizedExecutor(address caller,bytes32 mode,bytes calldata executionData) external view returns (bool ret0) {
        (ret0) = super._erc7821AuthorizedExecutor(caller,mode,executionData);
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

    function $_validateUserOp(PackedUserOperation calldata userOp,bytes32 userOpHash) external payable returns (uint256 ret0) {
        (ret0) = super._validateUserOp(userOp,userOpHash);
        emit return$_validateUserOp(ret0);
    }

    function $_signableUserOpHash(PackedUserOperation calldata arg0,bytes32 userOpHash) external view returns (bytes32 ret0) {
        (ret0) = super._signableUserOpHash(arg0,userOpHash);
    }

    function $_payPrefund(uint256 missingAccountFunds) external payable {
        super._payPrefund(missingAccountFunds);
    }

    function $_checkEntryPoint() external view {
        super._checkEntryPoint();
    }

    function $_checkEntryPointOrSelf() external view {
        super._checkEntryPointOrSelf();
    }
}

contract $AccountECDSAMock is AccountECDSAMock {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    event return$_validateUserOp(uint256 ret0);

    constructor(address signerAddr, string memory name, string memory version) SignerECDSA(signerAddr) EIP712(name, version) payable {
    }

    function $onlyEntryPointOrSelf() external payable onlyEntryPointOrSelf() {}

    function $onlyEntryPoint() external payable onlyEntryPoint() {}

    function $_erc7821AuthorizedExecutor(address caller,bytes32 mode,bytes calldata executionData) external view returns (bool ret0) {
        (ret0) = super._erc7821AuthorizedExecutor(caller,mode,executionData);
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

    function $_setSigner(address signerAddr) external payable {
        super._setSigner(signerAddr);
    }

    function $_rawSignatureValidation(bytes32 hash,bytes calldata signature) external view returns (bool ret0) {
        (ret0) = super._rawSignatureValidation(hash,signature);
    }

    function $_validateUserOp(PackedUserOperation calldata userOp,bytes32 userOpHash) external payable returns (uint256 ret0) {
        (ret0) = super._validateUserOp(userOp,userOpHash);
        emit return$_validateUserOp(ret0);
    }

    function $_signableUserOpHash(PackedUserOperation calldata arg0,bytes32 userOpHash) external view returns (bytes32 ret0) {
        (ret0) = super._signableUserOpHash(arg0,userOpHash);
    }

    function $_payPrefund(uint256 missingAccountFunds) external payable {
        super._payPrefund(missingAccountFunds);
    }

    function $_checkEntryPoint() external view {
        super._checkEntryPoint();
    }

    function $_checkEntryPointOrSelf() external view {
        super._checkEntryPointOrSelf();
    }
}

contract $AccountP256Mock is AccountP256Mock {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    event return$_validateUserOp(uint256 ret0);

    constructor(bytes32 qx, bytes32 qy, string memory name, string memory version) SignerP256(qx, qy) EIP712(name, version) payable {
    }

    function $onlyEntryPointOrSelf() external payable onlyEntryPointOrSelf() {}

    function $onlyEntryPoint() external payable onlyEntryPoint() {}

    function $_erc7821AuthorizedExecutor(address caller,bytes32 mode,bytes calldata executionData) external view returns (bool ret0) {
        (ret0) = super._erc7821AuthorizedExecutor(caller,mode,executionData);
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

    function $_setSigner(bytes32 qx,bytes32 qy) external payable {
        super._setSigner(qx,qy);
    }

    function $_rawSignatureValidation(bytes32 hash,bytes calldata signature) external view returns (bool ret0) {
        (ret0) = super._rawSignatureValidation(hash,signature);
    }

    function $_validateUserOp(PackedUserOperation calldata userOp,bytes32 userOpHash) external payable returns (uint256 ret0) {
        (ret0) = super._validateUserOp(userOp,userOpHash);
        emit return$_validateUserOp(ret0);
    }

    function $_signableUserOpHash(PackedUserOperation calldata arg0,bytes32 userOpHash) external view returns (bytes32 ret0) {
        (ret0) = super._signableUserOpHash(arg0,userOpHash);
    }

    function $_payPrefund(uint256 missingAccountFunds) external payable {
        super._payPrefund(missingAccountFunds);
    }

    function $_checkEntryPoint() external view {
        super._checkEntryPoint();
    }

    function $_checkEntryPointOrSelf() external view {
        super._checkEntryPointOrSelf();
    }
}

contract $AccountRSAMock is AccountRSAMock {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    event return$_validateUserOp(uint256 ret0);

    constructor(bytes memory e, bytes memory n, string memory name, string memory version) SignerRSA(e, n) EIP712(name, version) payable {
    }

    function $onlyEntryPointOrSelf() external payable onlyEntryPointOrSelf() {}

    function $onlyEntryPoint() external payable onlyEntryPoint() {}

    function $_erc7821AuthorizedExecutor(address caller,bytes32 mode,bytes calldata executionData) external view returns (bool ret0) {
        (ret0) = super._erc7821AuthorizedExecutor(caller,mode,executionData);
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

    function $_setSigner(bytes calldata e,bytes calldata n) external payable {
        super._setSigner(e,n);
    }

    function $_rawSignatureValidation(bytes32 hash,bytes calldata signature) external view returns (bool ret0) {
        (ret0) = super._rawSignatureValidation(hash,signature);
    }

    function $_validateUserOp(PackedUserOperation calldata userOp,bytes32 userOpHash) external payable returns (uint256 ret0) {
        (ret0) = super._validateUserOp(userOp,userOpHash);
        emit return$_validateUserOp(ret0);
    }

    function $_signableUserOpHash(PackedUserOperation calldata arg0,bytes32 userOpHash) external view returns (bytes32 ret0) {
        (ret0) = super._signableUserOpHash(arg0,userOpHash);
    }

    function $_payPrefund(uint256 missingAccountFunds) external payable {
        super._payPrefund(missingAccountFunds);
    }

    function $_checkEntryPoint() external view {
        super._checkEntryPoint();
    }

    function $_checkEntryPointOrSelf() external view {
        super._checkEntryPointOrSelf();
    }
}

contract $AccountWebAuthnMock is AccountWebAuthnMock {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    event return$_validateUserOp(uint256 ret0);

    constructor(bytes32 qx, bytes32 qy, string memory name, string memory version) SignerP256(qx, qy) EIP712(name, version) payable {
    }

    function $onlyEntryPointOrSelf() external payable onlyEntryPointOrSelf() {}

    function $onlyEntryPoint() external payable onlyEntryPoint() {}

    function $_erc7821AuthorizedExecutor(address caller,bytes32 mode,bytes calldata executionData) external view returns (bool ret0) {
        (ret0) = super._erc7821AuthorizedExecutor(caller,mode,executionData);
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

    function $_rawSignatureValidation(bytes32 hash,bytes calldata signature) external view returns (bool ret0) {
        (ret0) = super._rawSignatureValidation(hash,signature);
    }

    function $_setSigner(bytes32 qx,bytes32 qy) external payable {
        super._setSigner(qx,qy);
    }

    function $_validateUserOp(PackedUserOperation calldata userOp,bytes32 userOpHash) external payable returns (uint256 ret0) {
        (ret0) = super._validateUserOp(userOp,userOpHash);
        emit return$_validateUserOp(ret0);
    }

    function $_signableUserOpHash(PackedUserOperation calldata arg0,bytes32 userOpHash) external view returns (bytes32 ret0) {
        (ret0) = super._signableUserOpHash(arg0,userOpHash);
    }

    function $_payPrefund(uint256 missingAccountFunds) external payable {
        super._payPrefund(missingAccountFunds);
    }

    function $_checkEntryPoint() external view {
        super._checkEntryPoint();
    }

    function $_checkEntryPointOrSelf() external view {
        super._checkEntryPointOrSelf();
    }
}

contract $AccountERC7702Mock is AccountERC7702Mock {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    event return$_validateUserOp(uint256 ret0);

    constructor(string memory name, string memory version) EIP712(name, version) payable {
    }

    function $onlyEntryPointOrSelf() external payable onlyEntryPointOrSelf() {}

    function $onlyEntryPoint() external payable onlyEntryPoint() {}

    function $_erc7821AuthorizedExecutor(address caller,bytes32 mode,bytes calldata executionData) external view returns (bool ret0) {
        (ret0) = super._erc7821AuthorizedExecutor(caller,mode,executionData);
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

    function $_rawSignatureValidation(bytes32 hash,bytes calldata signature) external view returns (bool ret0) {
        (ret0) = super._rawSignatureValidation(hash,signature);
    }

    function $_validateUserOp(PackedUserOperation calldata userOp,bytes32 userOpHash) external payable returns (uint256 ret0) {
        (ret0) = super._validateUserOp(userOp,userOpHash);
        emit return$_validateUserOp(ret0);
    }

    function $_signableUserOpHash(PackedUserOperation calldata arg0,bytes32 userOpHash) external view returns (bytes32 ret0) {
        (ret0) = super._signableUserOpHash(arg0,userOpHash);
    }

    function $_payPrefund(uint256 missingAccountFunds) external payable {
        super._payPrefund(missingAccountFunds);
    }

    function $_checkEntryPoint() external view {
        super._checkEntryPoint();
    }

    function $_checkEntryPointOrSelf() external view {
        super._checkEntryPointOrSelf();
    }
}

contract $AccountERC7702WithModulesMock is AccountERC7702WithModulesMock {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    event return$_validateUserOp(uint256 ret0);

    event return$_execute(bytes[] returnData);

    event return$_fallback(bytes ret0);

    constructor(string memory name, string memory version) EIP712(name, version) payable {
    }

    function $onlyModule(uint256 moduleTypeId, bytes calldata additionalContext) external payable onlyModule(moduleTypeId, additionalContext) {}

    function $onlyEntryPointOrSelf() external payable onlyEntryPointOrSelf() {}

    function $onlyEntryPoint() external payable onlyEntryPoint() {}

    function $_validateUserOp(PackedUserOperation calldata userOp,bytes32 userOpHash) external payable returns (uint256 ret0) {
        (ret0) = super._validateUserOp(userOp,userOpHash);
        emit return$_validateUserOp(ret0);
    }

    function $_rawSignatureValidation(bytes32 hash,bytes calldata signature) external view returns (bool ret0) {
        (ret0) = super._rawSignatureValidation(hash,signature);
    }

    function $_execute(Mode mode,bytes calldata executionCalldata) external payable returns (bytes[] memory returnData) {
        (returnData) = super._execute(mode,executionCalldata);
        emit return$_execute(returnData);
    }

    function $_installModule(uint256 moduleTypeId,address module,bytes calldata initData) external payable {
        super._installModule(moduleTypeId,module,initData);
    }

    function $_uninstallModule(uint256 moduleTypeId,address module,bytes calldata deInitData) external payable {
        super._uninstallModule(moduleTypeId,module,deInitData);
    }

    function $_fallback() external payable returns (bytes memory ret0) {
        (ret0) = super._fallback();
        emit return$_fallback(ret0);
    }

    function $_fallbackHandler(bytes4 selector) external view returns (address ret0) {
        (ret0) = super._fallbackHandler(selector);
    }

    function $_checkModule(uint256 moduleTypeId,address module,bytes calldata additionalContext) external view {
        super._checkModule(moduleTypeId,module,additionalContext);
    }

    function $_extractUserOpValidator(PackedUserOperation calldata userOp) external pure returns (address ret0) {
        (ret0) = super._extractUserOpValidator(userOp);
    }

    function $_extractSignatureValidator(bytes calldata signature) external pure returns (address module, bytes memory innerSignature) {
        (module, innerSignature) = super._extractSignatureValidator(signature);
    }

    function $_decodeFallbackData(bytes calldata data) external pure returns (bytes4 selector, bytes memory remaining) {
        (selector, remaining) = super._decodeFallbackData(data);
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

    function $_signableUserOpHash(PackedUserOperation calldata arg0,bytes32 userOpHash) external view returns (bytes32 ret0) {
        (ret0) = super._signableUserOpHash(arg0,userOpHash);
    }

    function $_payPrefund(uint256 missingAccountFunds) external payable {
        super._payPrefund(missingAccountFunds);
    }

    function $_checkEntryPoint() external view {
        super._checkEntryPoint();
    }

    function $_checkEntryPointOrSelf() external view {
        super._checkEntryPointOrSelf();
    }
}

contract $AccountERC7579Mock is AccountERC7579Mock {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    event return$_validateUserOp(uint256 ret0);

    event return$_execute(bytes[] returnData);

    event return$_fallback(bytes ret0);

    constructor(address validator, bytes memory initData) AccountERC7579Mock(validator, initData) payable {
    }

    function $onlyModule(uint256 moduleTypeId, bytes calldata additionalContext) external payable onlyModule(moduleTypeId, additionalContext) {}

    function $onlyEntryPointOrSelf() external payable onlyEntryPointOrSelf() {}

    function $onlyEntryPoint() external payable onlyEntryPoint() {}

    function $_validateUserOp(PackedUserOperation calldata userOp,bytes32 userOpHash) external payable returns (uint256 ret0) {
        (ret0) = super._validateUserOp(userOp,userOpHash);
        emit return$_validateUserOp(ret0);
    }

    function $_execute(Mode mode,bytes calldata executionCalldata) external payable returns (bytes[] memory returnData) {
        (returnData) = super._execute(mode,executionCalldata);
        emit return$_execute(returnData);
    }

    function $_installModule(uint256 moduleTypeId,address module,bytes calldata initData) external payable {
        super._installModule(moduleTypeId,module,initData);
    }

    function $_uninstallModule(uint256 moduleTypeId,address module,bytes calldata deInitData) external payable {
        super._uninstallModule(moduleTypeId,module,deInitData);
    }

    function $_fallback() external payable returns (bytes memory ret0) {
        (ret0) = super._fallback();
        emit return$_fallback(ret0);
    }

    function $_fallbackHandler(bytes4 selector) external view returns (address ret0) {
        (ret0) = super._fallbackHandler(selector);
    }

    function $_checkModule(uint256 moduleTypeId,address module,bytes calldata additionalContext) external view {
        super._checkModule(moduleTypeId,module,additionalContext);
    }

    function $_extractUserOpValidator(PackedUserOperation calldata userOp) external pure returns (address ret0) {
        (ret0) = super._extractUserOpValidator(userOp);
    }

    function $_extractSignatureValidator(bytes calldata signature) external pure returns (address module, bytes memory innerSignature) {
        (module, innerSignature) = super._extractSignatureValidator(signature);
    }

    function $_decodeFallbackData(bytes calldata data) external pure returns (bytes4 selector, bytes memory remaining) {
        (selector, remaining) = super._decodeFallbackData(data);
    }

    function $_rawSignatureValidation(bytes32 arg0,bytes calldata arg1) external view returns (bool ret0) {
        (ret0) = super._rawSignatureValidation(arg0,arg1);
    }

    function $_signableUserOpHash(PackedUserOperation calldata arg0,bytes32 userOpHash) external view returns (bytes32 ret0) {
        (ret0) = super._signableUserOpHash(arg0,userOpHash);
    }

    function $_payPrefund(uint256 missingAccountFunds) external payable {
        super._payPrefund(missingAccountFunds);
    }

    function $_checkEntryPoint() external view {
        super._checkEntryPoint();
    }

    function $_checkEntryPointOrSelf() external view {
        super._checkEntryPointOrSelf();
    }
}

contract $AccountERC7579HookedMock is AccountERC7579HookedMock {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    event return$_execute(bytes[] ret0);

    event return$_fallback(bytes ret0);

    event return$_validateUserOp(uint256 ret0);

    constructor(address validator, bytes memory initData) AccountERC7579HookedMock(validator, initData) payable {
    }

    function $withHook() external payable withHook() {}

    function $onlyModule(uint256 moduleTypeId, bytes calldata additionalContext) external payable onlyModule(moduleTypeId, additionalContext) {}

    function $onlyEntryPointOrSelf() external payable onlyEntryPointOrSelf() {}

    function $onlyEntryPoint() external payable onlyEntryPoint() {}

    function $_installModule(uint256 moduleTypeId,address module,bytes calldata initData) external payable {
        super._installModule(moduleTypeId,module,initData);
    }

    function $_uninstallModule(uint256 moduleTypeId,address module,bytes calldata deInitData) external payable {
        super._uninstallModule(moduleTypeId,module,deInitData);
    }

    function $_execute(Mode mode,bytes calldata executionCalldata) external payable returns (bytes[] memory ret0) {
        (ret0) = super._execute(mode,executionCalldata);
        emit return$_execute(ret0);
    }

    function $_fallback() external payable returns (bytes memory ret0) {
        (ret0) = super._fallback();
        emit return$_fallback(ret0);
    }

    function $_validateUserOp(PackedUserOperation calldata userOp,bytes32 userOpHash) external payable returns (uint256 ret0) {
        (ret0) = super._validateUserOp(userOp,userOpHash);
        emit return$_validateUserOp(ret0);
    }

    function $_fallbackHandler(bytes4 selector) external view returns (address ret0) {
        (ret0) = super._fallbackHandler(selector);
    }

    function $_checkModule(uint256 moduleTypeId,address module,bytes calldata additionalContext) external view {
        super._checkModule(moduleTypeId,module,additionalContext);
    }

    function $_extractUserOpValidator(PackedUserOperation calldata userOp) external pure returns (address ret0) {
        (ret0) = super._extractUserOpValidator(userOp);
    }

    function $_extractSignatureValidator(bytes calldata signature) external pure returns (address module, bytes memory innerSignature) {
        (module, innerSignature) = super._extractSignatureValidator(signature);
    }

    function $_decodeFallbackData(bytes calldata data) external pure returns (bytes4 selector, bytes memory remaining) {
        (selector, remaining) = super._decodeFallbackData(data);
    }

    function $_rawSignatureValidation(bytes32 arg0,bytes calldata arg1) external view returns (bool ret0) {
        (ret0) = super._rawSignatureValidation(arg0,arg1);
    }

    function $_signableUserOpHash(PackedUserOperation calldata arg0,bytes32 userOpHash) external view returns (bytes32 ret0) {
        (ret0) = super._signableUserOpHash(arg0,userOpHash);
    }

    function $_payPrefund(uint256 missingAccountFunds) external payable {
        super._payPrefund(missingAccountFunds);
    }

    function $_checkEntryPoint() external view {
        super._checkEntryPoint();
    }

    function $_checkEntryPointOrSelf() external view {
        super._checkEntryPointOrSelf();
    }
}

contract $AccountERC7913Mock is AccountERC7913Mock {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    event return$_validateUserOp(uint256 ret0);

    constructor(bytes memory signer_, string memory name, string memory version) SignerERC7913(signer_) EIP712(name, version) payable {
    }

    function $onlyEntryPointOrSelf() external payable onlyEntryPointOrSelf() {}

    function $onlyEntryPoint() external payable onlyEntryPoint() {}

    function $_erc7821AuthorizedExecutor(address caller,bytes32 mode,bytes calldata executionData) external view returns (bool ret0) {
        (ret0) = super._erc7821AuthorizedExecutor(caller,mode,executionData);
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

    function $_setSigner(bytes calldata signer_) external payable {
        super._setSigner(signer_);
    }

    function $_rawSignatureValidation(bytes32 hash,bytes calldata signature) external view returns (bool ret0) {
        (ret0) = super._rawSignatureValidation(hash,signature);
    }

    function $_validateUserOp(PackedUserOperation calldata userOp,bytes32 userOpHash) external payable returns (uint256 ret0) {
        (ret0) = super._validateUserOp(userOp,userOpHash);
        emit return$_validateUserOp(ret0);
    }

    function $_signableUserOpHash(PackedUserOperation calldata arg0,bytes32 userOpHash) external view returns (bytes32 ret0) {
        (ret0) = super._signableUserOpHash(arg0,userOpHash);
    }

    function $_payPrefund(uint256 missingAccountFunds) external payable {
        super._payPrefund(missingAccountFunds);
    }

    function $_checkEntryPoint() external view {
        super._checkEntryPoint();
    }

    function $_checkEntryPointOrSelf() external view {
        super._checkEntryPointOrSelf();
    }
}

contract $AccountMultiSignerMock is AccountMultiSignerMock {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    event return$_validateUserOp(uint256 ret0);

    constructor(bytes[] memory signers_, uint64 threshold_, string memory name, string memory version) MultiSignerERC7913(signers_, threshold_) EIP712(name, version) payable {
    }

    function $onlyEntryPointOrSelf() external payable onlyEntryPointOrSelf() {}

    function $onlyEntryPoint() external payable onlyEntryPoint() {}

    function $_erc7821AuthorizedExecutor(address caller,bytes32 mode,bytes calldata executionData) external view returns (bool ret0) {
        (ret0) = super._erc7821AuthorizedExecutor(caller,mode,executionData);
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

    function $_validateUserOp(PackedUserOperation calldata userOp,bytes32 userOpHash) external payable returns (uint256 ret0) {
        (ret0) = super._validateUserOp(userOp,userOpHash);
        emit return$_validateUserOp(ret0);
    }

    function $_signableUserOpHash(PackedUserOperation calldata arg0,bytes32 userOpHash) external view returns (bytes32 ret0) {
        (ret0) = super._signableUserOpHash(arg0,userOpHash);
    }

    function $_payPrefund(uint256 missingAccountFunds) external payable {
        super._payPrefund(missingAccountFunds);
    }

    function $_checkEntryPoint() external view {
        super._checkEntryPoint();
    }

    function $_checkEntryPointOrSelf() external view {
        super._checkEntryPointOrSelf();
    }
}

contract $AccountMultiSignerWeightedMock is AccountMultiSignerWeightedMock {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    event return$_validateUserOp(uint256 ret0);

    constructor(bytes[] memory signers_, uint64[] memory weights_, uint64 threshold_, string memory name, string memory version) MultiSignerERC7913Weighted(signers_, weights_, threshold_) EIP712(name, version) payable {
    }

    function $onlyEntryPointOrSelf() external payable onlyEntryPointOrSelf() {}

    function $onlyEntryPoint() external payable onlyEntryPoint() {}

    function $_erc7821AuthorizedExecutor(address caller,bytes32 mode,bytes calldata executionData) external view returns (bool ret0) {
        (ret0) = super._erc7821AuthorizedExecutor(caller,mode,executionData);
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

    function $_setSignerWeights(bytes[] calldata signers,uint64[] calldata weights) external payable {
        super._setSignerWeights(signers,weights);
    }

    function $_addSigners(bytes[] calldata newSigners) external payable {
        super._addSigners(newSigners);
    }

    function $_removeSigners(bytes[] calldata signers) external payable {
        super._removeSigners(signers);
    }

    function $_validateReachableThreshold() external view {
        super._validateReachableThreshold();
    }

    function $_validateThreshold(bytes[] calldata signers) external view returns (bool ret0) {
        (ret0) = super._validateThreshold(signers);
    }

    function $_setThreshold(uint64 newThreshold) external payable {
        super._setThreshold(newThreshold);
    }

    function $_rawSignatureValidation(bytes32 hash,bytes calldata signature) external view returns (bool ret0) {
        (ret0) = super._rawSignatureValidation(hash,signature);
    }

    function $_validateSignatures(bytes32 hash,bytes[] calldata signers,bytes[] calldata signatures) external view returns (bool valid) {
        (valid) = super._validateSignatures(hash,signers,signatures);
    }

    function $_validateUserOp(PackedUserOperation calldata userOp,bytes32 userOpHash) external payable returns (uint256 ret0) {
        (ret0) = super._validateUserOp(userOp,userOpHash);
        emit return$_validateUserOp(ret0);
    }

    function $_signableUserOpHash(PackedUserOperation calldata arg0,bytes32 userOpHash) external view returns (bytes32 ret0) {
        (ret0) = super._signableUserOpHash(arg0,userOpHash);
    }

    function $_payPrefund(uint256 missingAccountFunds) external payable {
        super._payPrefund(missingAccountFunds);
    }

    function $_checkEntryPoint() external view {
        super._checkEntryPoint();
    }

    function $_checkEntryPointOrSelf() external view {
        super._checkEntryPointOrSelf();
    }
}
