// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../contracts/account/utils/draft-ERC7579Utils.sol";
import "../../../contracts/interfaces/draft-IERC7579.sol";
import "../../../contracts/utils/Packing.sol";
import "../../../contracts/utils/Address.sol";
import "../../../contracts/interfaces/draft-IERC4337.sol";
import "../../../contracts/utils/Errors.sol";

contract $ERC7579Utils {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    event return$execSingle(bytes[] returnData);

    event return$execBatch(bytes[] returnData);

    event return$execDelegateCall(bytes[] returnData);

    constructor() payable {
    }

    function $CALLTYPE_SINGLE() external pure returns (CallType) {
        return ERC7579Utils.CALLTYPE_SINGLE;
    }

    function $CALLTYPE_BATCH() external pure returns (CallType) {
        return ERC7579Utils.CALLTYPE_BATCH;
    }

    function $CALLTYPE_DELEGATECALL() external pure returns (CallType) {
        return ERC7579Utils.CALLTYPE_DELEGATECALL;
    }

    function $EXECTYPE_DEFAULT() external pure returns (ExecType) {
        return ERC7579Utils.EXECTYPE_DEFAULT;
    }

    function $EXECTYPE_TRY() external pure returns (ExecType) {
        return ERC7579Utils.EXECTYPE_TRY;
    }

    function $execSingle(bytes calldata executionCalldata,ExecType execType) external payable returns (bytes[] memory returnData) {
        (returnData) = ERC7579Utils.execSingle(executionCalldata,execType);
        emit return$execSingle(returnData);
    }

    function $execBatch(bytes calldata executionCalldata,ExecType execType) external payable returns (bytes[] memory returnData) {
        (returnData) = ERC7579Utils.execBatch(executionCalldata,execType);
        emit return$execBatch(returnData);
    }

    function $execDelegateCall(bytes calldata executionCalldata,ExecType execType) external payable returns (bytes[] memory returnData) {
        (returnData) = ERC7579Utils.execDelegateCall(executionCalldata,execType);
        emit return$execDelegateCall(returnData);
    }

    function $encodeMode(CallType callType,ExecType execType,ModeSelector selector,ModePayload payload) external pure returns (Mode mode) {
        (mode) = ERC7579Utils.encodeMode(callType,execType,selector,payload);
    }

    function $decodeMode(Mode mode) external pure returns (CallType callType, ExecType execType, ModeSelector selector, ModePayload payload) {
        (callType, execType, selector, payload) = ERC7579Utils.decodeMode(mode);
    }

    function $encodeSingle(address target,uint256 value,bytes calldata callData) external pure returns (bytes memory executionCalldata) {
        (executionCalldata) = ERC7579Utils.encodeSingle(target,value,callData);
    }

    function $decodeSingle(bytes calldata executionCalldata) external pure returns (address target, uint256 value, bytes memory callData) {
        (target, value, callData) = ERC7579Utils.decodeSingle(executionCalldata);
    }

    function $encodeDelegate(address target,bytes calldata callData) external pure returns (bytes memory executionCalldata) {
        (executionCalldata) = ERC7579Utils.encodeDelegate(target,callData);
    }

    function $decodeDelegate(bytes calldata executionCalldata) external pure returns (address target, bytes memory callData) {
        (target, callData) = ERC7579Utils.decodeDelegate(executionCalldata);
    }

    function $encodeBatch(Execution[] calldata executionBatch) external pure returns (bytes memory executionCalldata) {
        (executionCalldata) = ERC7579Utils.encodeBatch(executionBatch);
    }

    function $decodeBatch(bytes calldata executionCalldata) external pure returns (Execution[] memory executionBatch) {
        (executionBatch) = ERC7579Utils.decodeBatch(executionCalldata);
    }

    receive() external payable {}
}
