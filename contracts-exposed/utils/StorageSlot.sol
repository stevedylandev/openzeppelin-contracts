// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../contracts/utils/StorageSlot.sol";

contract $StorageSlot {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    mapping(uint256 => string) internal $v_string;

    mapping(uint256 => bytes) internal $v_bytes;

    constructor() payable {
    }

    function $getAddressSlot(bytes32 slot) external pure returns (StorageSlot.AddressSlot memory r) {
        (r) = StorageSlot.getAddressSlot(slot);
    }

    function $getBooleanSlot(bytes32 slot) external pure returns (StorageSlot.BooleanSlot memory r) {
        (r) = StorageSlot.getBooleanSlot(slot);
    }

    function $getBytes32Slot(bytes32 slot) external pure returns (StorageSlot.Bytes32Slot memory r) {
        (r) = StorageSlot.getBytes32Slot(slot);
    }

    function $getUint256Slot(bytes32 slot) external pure returns (StorageSlot.Uint256Slot memory r) {
        (r) = StorageSlot.getUint256Slot(slot);
    }

    function $getInt256Slot(bytes32 slot) external pure returns (StorageSlot.Int256Slot memory r) {
        (r) = StorageSlot.getInt256Slot(slot);
    }

    function $getStringSlot(bytes32 slot) external pure returns (StorageSlot.StringSlot memory r) {
        (r) = StorageSlot.getStringSlot(slot);
    }

    function $getStringSlot(uint256 store) external view returns (StorageSlot.StringSlot memory r) {
        (r) = StorageSlot.getStringSlot($v_string[store]);
    }

    function $getBytesSlot(bytes32 slot) external pure returns (StorageSlot.BytesSlot memory r) {
        (r) = StorageSlot.getBytesSlot(slot);
    }

    function $getBytesSlot(uint256 store) external view returns (StorageSlot.BytesSlot memory r) {
        (r) = StorageSlot.getBytesSlot($v_bytes[store]);
    }

    receive() external payable {}
}
