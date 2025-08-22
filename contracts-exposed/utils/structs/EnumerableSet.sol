// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../contracts/utils/structs/EnumerableSet.sol";
import "../../../contracts/utils/Arrays.sol";
import "../../../contracts/utils/math/Math.sol";
import "../../../contracts/utils/Comparators.sol";
import "../../../contracts/utils/SlotDerivation.sol";
import "../../../contracts/utils/StorageSlot.sol";
import "../../../contracts/utils/Panic.sol";
import "../../../contracts/utils/math/SafeCast.sol";

contract $EnumerableSet {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    mapping(uint256 => EnumerableSet.Bytes32Set) internal $v_EnumerableSet_Bytes32Set;

    mapping(uint256 => EnumerableSet.AddressSet) internal $v_EnumerableSet_AddressSet;

    mapping(uint256 => EnumerableSet.UintSet) internal $v_EnumerableSet_UintSet;

    mapping(uint256 => EnumerableSet.StringSet) internal $v_EnumerableSet_StringSet;

    mapping(uint256 => EnumerableSet.BytesSet) internal $v_EnumerableSet_BytesSet;

    event return$add_EnumerableSet_Bytes32Set_bytes32(bool ret0);

    event return$remove_EnumerableSet_Bytes32Set_bytes32(bool ret0);

    event return$add_EnumerableSet_AddressSet_address(bool ret0);

    event return$remove_EnumerableSet_AddressSet_address(bool ret0);

    event return$add_EnumerableSet_UintSet_uint256(bool ret0);

    event return$remove_EnumerableSet_UintSet_uint256(bool ret0);

    event return$add_EnumerableSet_StringSet_string(bool ret0);

    event return$remove_EnumerableSet_StringSet_string(bool ret0);

    event return$add_EnumerableSet_BytesSet_bytes(bool ret0);

    event return$remove_EnumerableSet_BytesSet_bytes(bool ret0);

    constructor() payable {
    }

    function $add(uint256 set,bytes32 value) external payable returns (bool ret0) {
        (ret0) = EnumerableSet.add($v_EnumerableSet_Bytes32Set[set],value);
        emit return$add_EnumerableSet_Bytes32Set_bytes32(ret0);
    }

    function $remove(uint256 set,bytes32 value) external payable returns (bool ret0) {
        (ret0) = EnumerableSet.remove($v_EnumerableSet_Bytes32Set[set],value);
        emit return$remove_EnumerableSet_Bytes32Set_bytes32(ret0);
    }

    function $clear_EnumerableSet_Bytes32Set(uint256 set) external payable {
        EnumerableSet.clear($v_EnumerableSet_Bytes32Set[set]);
    }

    function $contains(uint256 set,bytes32 value) external view returns (bool ret0) {
        (ret0) = EnumerableSet.contains($v_EnumerableSet_Bytes32Set[set],value);
    }

    function $length_EnumerableSet_Bytes32Set(uint256 set) external view returns (uint256 ret0) {
        (ret0) = EnumerableSet.length($v_EnumerableSet_Bytes32Set[set]);
    }

    function $at_EnumerableSet_Bytes32Set(uint256 set,uint256 index) external view returns (bytes32 ret0) {
        (ret0) = EnumerableSet.at($v_EnumerableSet_Bytes32Set[set],index);
    }

    function $values_EnumerableSet_Bytes32Set(uint256 set) external view returns (bytes32[] memory ret0) {
        (ret0) = EnumerableSet.values($v_EnumerableSet_Bytes32Set[set]);
    }

    function $values_EnumerableSet_Bytes32Set(uint256 set,uint256 start,uint256 end) external view returns (bytes32[] memory ret0) {
        (ret0) = EnumerableSet.values($v_EnumerableSet_Bytes32Set[set],start,end);
    }

    function $add(uint256 set,address value) external payable returns (bool ret0) {
        (ret0) = EnumerableSet.add($v_EnumerableSet_AddressSet[set],value);
        emit return$add_EnumerableSet_AddressSet_address(ret0);
    }

    function $remove(uint256 set,address value) external payable returns (bool ret0) {
        (ret0) = EnumerableSet.remove($v_EnumerableSet_AddressSet[set],value);
        emit return$remove_EnumerableSet_AddressSet_address(ret0);
    }

    function $clear_EnumerableSet_AddressSet(uint256 set) external payable {
        EnumerableSet.clear($v_EnumerableSet_AddressSet[set]);
    }

    function $contains(uint256 set,address value) external view returns (bool ret0) {
        (ret0) = EnumerableSet.contains($v_EnumerableSet_AddressSet[set],value);
    }

    function $length_EnumerableSet_AddressSet(uint256 set) external view returns (uint256 ret0) {
        (ret0) = EnumerableSet.length($v_EnumerableSet_AddressSet[set]);
    }

    function $at_EnumerableSet_AddressSet(uint256 set,uint256 index) external view returns (address ret0) {
        (ret0) = EnumerableSet.at($v_EnumerableSet_AddressSet[set],index);
    }

    function $values_EnumerableSet_AddressSet(uint256 set) external view returns (address[] memory ret0) {
        (ret0) = EnumerableSet.values($v_EnumerableSet_AddressSet[set]);
    }

    function $values_EnumerableSet_AddressSet(uint256 set,uint256 start,uint256 end) external view returns (address[] memory ret0) {
        (ret0) = EnumerableSet.values($v_EnumerableSet_AddressSet[set],start,end);
    }

    function $add(uint256 set,uint256 value) external payable returns (bool ret0) {
        (ret0) = EnumerableSet.add($v_EnumerableSet_UintSet[set],value);
        emit return$add_EnumerableSet_UintSet_uint256(ret0);
    }

    function $remove(uint256 set,uint256 value) external payable returns (bool ret0) {
        (ret0) = EnumerableSet.remove($v_EnumerableSet_UintSet[set],value);
        emit return$remove_EnumerableSet_UintSet_uint256(ret0);
    }

    function $clear_EnumerableSet_UintSet(uint256 set) external payable {
        EnumerableSet.clear($v_EnumerableSet_UintSet[set]);
    }

    function $contains(uint256 set,uint256 value) external view returns (bool ret0) {
        (ret0) = EnumerableSet.contains($v_EnumerableSet_UintSet[set],value);
    }

    function $length_EnumerableSet_UintSet(uint256 set) external view returns (uint256 ret0) {
        (ret0) = EnumerableSet.length($v_EnumerableSet_UintSet[set]);
    }

    function $at_EnumerableSet_UintSet(uint256 set,uint256 index) external view returns (uint256 ret0) {
        (ret0) = EnumerableSet.at($v_EnumerableSet_UintSet[set],index);
    }

    function $values_EnumerableSet_UintSet(uint256 set) external view returns (uint256[] memory ret0) {
        (ret0) = EnumerableSet.values($v_EnumerableSet_UintSet[set]);
    }

    function $values_EnumerableSet_UintSet(uint256 set,uint256 start,uint256 end) external view returns (uint256[] memory ret0) {
        (ret0) = EnumerableSet.values($v_EnumerableSet_UintSet[set],start,end);
    }

    function $add(uint256 set,string calldata value) external payable returns (bool ret0) {
        (ret0) = EnumerableSet.add($v_EnumerableSet_StringSet[set],value);
        emit return$add_EnumerableSet_StringSet_string(ret0);
    }

    function $remove(uint256 set,string calldata value) external payable returns (bool ret0) {
        (ret0) = EnumerableSet.remove($v_EnumerableSet_StringSet[set],value);
        emit return$remove_EnumerableSet_StringSet_string(ret0);
    }

    function $clear_EnumerableSet_StringSet(uint256 set) external payable {
        EnumerableSet.clear($v_EnumerableSet_StringSet[set]);
    }

    function $contains(uint256 set,string calldata value) external view returns (bool ret0) {
        (ret0) = EnumerableSet.contains($v_EnumerableSet_StringSet[set],value);
    }

    function $length_EnumerableSet_StringSet(uint256 set) external view returns (uint256 ret0) {
        (ret0) = EnumerableSet.length($v_EnumerableSet_StringSet[set]);
    }

    function $at_EnumerableSet_StringSet(uint256 set,uint256 index) external view returns (string memory ret0) {
        (ret0) = EnumerableSet.at($v_EnumerableSet_StringSet[set],index);
    }

    function $values_EnumerableSet_StringSet(uint256 set) external view returns (string[] memory ret0) {
        (ret0) = EnumerableSet.values($v_EnumerableSet_StringSet[set]);
    }

    function $values_EnumerableSet_StringSet(uint256 set,uint256 start,uint256 end) external view returns (string[] memory ret0) {
        (ret0) = EnumerableSet.values($v_EnumerableSet_StringSet[set],start,end);
    }

    function $add(uint256 set,bytes calldata value) external payable returns (bool ret0) {
        (ret0) = EnumerableSet.add($v_EnumerableSet_BytesSet[set],value);
        emit return$add_EnumerableSet_BytesSet_bytes(ret0);
    }

    function $remove(uint256 set,bytes calldata value) external payable returns (bool ret0) {
        (ret0) = EnumerableSet.remove($v_EnumerableSet_BytesSet[set],value);
        emit return$remove_EnumerableSet_BytesSet_bytes(ret0);
    }

    function $clear_EnumerableSet_BytesSet(uint256 set) external payable {
        EnumerableSet.clear($v_EnumerableSet_BytesSet[set]);
    }

    function $contains(uint256 set,bytes calldata value) external view returns (bool ret0) {
        (ret0) = EnumerableSet.contains($v_EnumerableSet_BytesSet[set],value);
    }

    function $length_EnumerableSet_BytesSet(uint256 set) external view returns (uint256 ret0) {
        (ret0) = EnumerableSet.length($v_EnumerableSet_BytesSet[set]);
    }

    function $at_EnumerableSet_BytesSet(uint256 set,uint256 index) external view returns (bytes memory ret0) {
        (ret0) = EnumerableSet.at($v_EnumerableSet_BytesSet[set],index);
    }

    function $values_EnumerableSet_BytesSet(uint256 set) external view returns (bytes[] memory ret0) {
        (ret0) = EnumerableSet.values($v_EnumerableSet_BytesSet[set]);
    }

    function $values_EnumerableSet_BytesSet(uint256 set,uint256 start,uint256 end) external view returns (bytes[] memory ret0) {
        (ret0) = EnumerableSet.values($v_EnumerableSet_BytesSet[set],start,end);
    }

    receive() external payable {}
}
