// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../contracts/account/extensions/draft-AccountERC7579Hooked.sol";
import "../../../contracts/account/extensions/draft-AccountERC7579.sol";
import "../../../contracts/interfaces/draft-IERC7579.sol";
import "../../../contracts/interfaces/IERC1271.sol";
import "../../../contracts/account/Account.sol";
import "../../../contracts/interfaces/draft-IERC4337.sol";
import "../../../contracts/utils/cryptography/signers/AbstractSigner.sol";
import "../../../contracts/account/utils/draft-ERC7579Utils.sol";
import "../../../contracts/utils/structs/EnumerableSet.sol";
import "../../../contracts/utils/Bytes.sol";
import "../../../contracts/utils/Packing.sol";
import "../../../contracts/utils/Address.sol";
import "../../../contracts/utils/Calldata.sol";
import "../../../contracts/account/utils/draft-ERC4337Utils.sol";
import "../../../contracts/utils/Arrays.sol";
import "../../../contracts/utils/math/Math.sol";
import "../../../contracts/utils/Errors.sol";
import "../../../contracts/utils/Comparators.sol";
import "../../../contracts/utils/SlotDerivation.sol";
import "../../../contracts/utils/StorageSlot.sol";
import "../../../contracts/utils/Panic.sol";
import "../../../contracts/utils/math/SafeCast.sol";

contract $AccountERC7579Hooked is AccountERC7579Hooked {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    event return$_execute(bytes[] ret0);

    event return$_fallback(bytes ret0);

    event return$_validateUserOp(uint256 ret0);

    constructor() payable {
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
