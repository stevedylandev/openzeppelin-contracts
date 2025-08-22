// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../contracts/utils/structs/Heap.sol";
import "../../../contracts/utils/math/Math.sol";
import "../../../contracts/utils/math/SafeCast.sol";
import "../../../contracts/utils/Comparators.sol";
import "../../../contracts/utils/Arrays.sol";
import "../../../contracts/utils/Panic.sol";
import "../../../contracts/utils/StorageSlot.sol";
import "../../../contracts/utils/SlotDerivation.sol";

contract $Heap {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    mapping(uint256 => Heap.Uint256Heap) internal $v_Heap_Uint256Heap;

    event return$pop(uint256 ret0);

    event return$replace(uint256 ret0);

    constructor() payable {
    }

    function $peek(uint256 self) external view returns (uint256 ret0) {
        (ret0) = Heap.peek($v_Heap_Uint256Heap[self]);
    }

    function $pop(uint256 self) external payable returns (uint256 ret0) {
        (ret0) = Heap.pop($v_Heap_Uint256Heap[self]);
        emit return$pop(ret0);
    }

    function $insert(uint256 self,uint256 value) external payable {
        Heap.insert($v_Heap_Uint256Heap[self],value);
    }

    function $replace(uint256 self,uint256 newValue) external payable returns (uint256 ret0) {
        (ret0) = Heap.replace($v_Heap_Uint256Heap[self],newValue);
        emit return$replace(ret0);
    }

    function $length(uint256 self) external view returns (uint256 ret0) {
        (ret0) = Heap.length($v_Heap_Uint256Heap[self]);
    }

    function $clear(uint256 self) external payable {
        Heap.clear($v_Heap_Uint256Heap[self]);
    }

    receive() external payable {}
}
