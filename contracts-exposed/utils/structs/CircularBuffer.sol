// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../contracts/utils/structs/CircularBuffer.sol";
import "../../../contracts/utils/math/Math.sol";
import "../../../contracts/utils/Arrays.sol";
import "../../../contracts/utils/Panic.sol";
import "../../../contracts/utils/math/SafeCast.sol";
import "../../../contracts/utils/Comparators.sol";
import "../../../contracts/utils/SlotDerivation.sol";
import "../../../contracts/utils/StorageSlot.sol";

contract $CircularBuffer {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    mapping(uint256 => CircularBuffer.Bytes32CircularBuffer) internal $v_CircularBuffer_Bytes32CircularBuffer;

    constructor() payable {
    }

    function $setup(uint256 self,uint256 size) external payable {
        CircularBuffer.setup($v_CircularBuffer_Bytes32CircularBuffer[self],size);
    }

    function $clear(uint256 self) external payable {
        CircularBuffer.clear($v_CircularBuffer_Bytes32CircularBuffer[self]);
    }

    function $push(uint256 self,bytes32 value) external payable {
        CircularBuffer.push($v_CircularBuffer_Bytes32CircularBuffer[self],value);
    }

    function $count(uint256 self) external view returns (uint256 ret0) {
        (ret0) = CircularBuffer.count($v_CircularBuffer_Bytes32CircularBuffer[self]);
    }

    function $length(uint256 self) external view returns (uint256 ret0) {
        (ret0) = CircularBuffer.length($v_CircularBuffer_Bytes32CircularBuffer[self]);
    }

    function $last(uint256 self,uint256 i) external view returns (bytes32 ret0) {
        (ret0) = CircularBuffer.last($v_CircularBuffer_Bytes32CircularBuffer[self],i);
    }

    function $includes(uint256 self,bytes32 value) external view returns (bool ret0) {
        (ret0) = CircularBuffer.includes($v_CircularBuffer_Bytes32CircularBuffer[self],value);
    }

    receive() external payable {}
}
