// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../contracts/utils/Bytes.sol";
import "../../contracts/utils/math/Math.sol";
import "../../contracts/utils/Panic.sol";
import "../../contracts/utils/math/SafeCast.sol";

contract $Bytes {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    function $indexOf(bytes calldata buffer,bytes1 s) external pure returns (uint256 ret0) {
        (ret0) = Bytes.indexOf(buffer,s);
    }

    function $indexOf(bytes calldata buffer,bytes1 s,uint256 pos) external pure returns (uint256 ret0) {
        (ret0) = Bytes.indexOf(buffer,s,pos);
    }

    function $lastIndexOf(bytes calldata buffer,bytes1 s) external pure returns (uint256 ret0) {
        (ret0) = Bytes.lastIndexOf(buffer,s);
    }

    function $lastIndexOf(bytes calldata buffer,bytes1 s,uint256 pos) external pure returns (uint256 ret0) {
        (ret0) = Bytes.lastIndexOf(buffer,s,pos);
    }

    function $slice(bytes calldata buffer,uint256 start) external pure returns (bytes memory ret0) {
        (ret0) = Bytes.slice(buffer,start);
    }

    function $slice(bytes calldata buffer,uint256 start,uint256 end) external pure returns (bytes memory ret0) {
        (ret0) = Bytes.slice(buffer,start,end);
    }

    function $splice(bytes calldata buffer,uint256 start) external pure returns (bytes memory ret0) {
        (ret0) = Bytes.splice(buffer,start);
    }

    function $splice(bytes calldata buffer,uint256 start,uint256 end) external pure returns (bytes memory ret0) {
        (ret0) = Bytes.splice(buffer,start,end);
    }

    function $equal(bytes calldata a,bytes calldata b) external pure returns (bool ret0) {
        (ret0) = Bytes.equal(a,b);
    }

    function $reverseBytes32(bytes32 value) external pure returns (bytes32 ret0) {
        (ret0) = Bytes.reverseBytes32(value);
    }

    function $reverseBytes16(bytes16 value) external pure returns (bytes16 ret0) {
        (ret0) = Bytes.reverseBytes16(value);
    }

    function $reverseBytes8(bytes8 value) external pure returns (bytes8 ret0) {
        (ret0) = Bytes.reverseBytes8(value);
    }

    function $reverseBytes4(bytes4 value) external pure returns (bytes4 ret0) {
        (ret0) = Bytes.reverseBytes4(value);
    }

    function $reverseBytes2(bytes2 value) external pure returns (bytes2 ret0) {
        (ret0) = Bytes.reverseBytes2(value);
    }

    function $clz(bytes calldata buffer) external pure returns (uint256 ret0) {
        (ret0) = Bytes.clz(buffer);
    }

    receive() external payable {}
}
