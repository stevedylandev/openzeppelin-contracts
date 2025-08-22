// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../contracts/utils/TransientSlot.sol";

contract $TransientSlot {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    function $asAddress(bytes32 slot) external pure returns (TransientSlot.AddressSlot ret0) {
        (ret0) = TransientSlot.asAddress(slot);
    }

    function $asBoolean(bytes32 slot) external pure returns (TransientSlot.BooleanSlot ret0) {
        (ret0) = TransientSlot.asBoolean(slot);
    }

    function $asBytes32(bytes32 slot) external pure returns (TransientSlot.Bytes32Slot ret0) {
        (ret0) = TransientSlot.asBytes32(slot);
    }

    function $asUint256(bytes32 slot) external pure returns (TransientSlot.Uint256Slot ret0) {
        (ret0) = TransientSlot.asUint256(slot);
    }

    function $asInt256(bytes32 slot) external pure returns (TransientSlot.Int256Slot ret0) {
        (ret0) = TransientSlot.asInt256(slot);
    }

    function $tload_TransientSlot_AddressSlot(TransientSlot.AddressSlot slot) external view returns (address value) {
        (value) = TransientSlot.tload(slot);
    }

    function $tstore(TransientSlot.AddressSlot slot,address value) external payable {
        TransientSlot.tstore(slot,value);
    }

    function $tload_TransientSlot_BooleanSlot(TransientSlot.BooleanSlot slot) external view returns (bool value) {
        (value) = TransientSlot.tload(slot);
    }

    function $tstore(TransientSlot.BooleanSlot slot,bool value) external payable {
        TransientSlot.tstore(slot,value);
    }

    function $tload_TransientSlot_Bytes32Slot(TransientSlot.Bytes32Slot slot) external view returns (bytes32 value) {
        (value) = TransientSlot.tload(slot);
    }

    function $tstore(TransientSlot.Bytes32Slot slot,bytes32 value) external payable {
        TransientSlot.tstore(slot,value);
    }

    function $tload_TransientSlot_Uint256Slot(TransientSlot.Uint256Slot slot) external view returns (uint256 value) {
        (value) = TransientSlot.tload(slot);
    }

    function $tstore(TransientSlot.Uint256Slot slot,uint256 value) external payable {
        TransientSlot.tstore(slot,value);
    }

    function $tload_TransientSlot_Int256Slot(TransientSlot.Int256Slot slot) external view returns (int256 value) {
        (value) = TransientSlot.tload(slot);
    }

    function $tstore(TransientSlot.Int256Slot slot,int256 value) external payable {
        TransientSlot.tstore(slot,value);
    }

    receive() external payable {}
}
