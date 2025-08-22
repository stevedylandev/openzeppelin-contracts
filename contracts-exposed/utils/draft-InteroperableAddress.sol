// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../contracts/utils/draft-InteroperableAddress.sol";
import "../../contracts/utils/math/Math.sol";
import "../../contracts/utils/math/SafeCast.sol";
import "../../contracts/utils/Bytes.sol";
import "../../contracts/utils/Calldata.sol";
import "../../contracts/utils/Panic.sol";

contract $InteroperableAddress {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    function $formatV1(bytes2 chainType,bytes calldata chainReference,bytes calldata addr) external pure returns (bytes memory ret0) {
        (ret0) = InteroperableAddress.formatV1(chainType,chainReference,addr);
    }

    function $formatEvmV1(uint256 chainid,address addr) external pure returns (bytes memory ret0) {
        (ret0) = InteroperableAddress.formatEvmV1(chainid,addr);
    }

    function $formatEvmV1(uint256 chainid) external pure returns (bytes memory ret0) {
        (ret0) = InteroperableAddress.formatEvmV1(chainid);
    }

    function $formatEvmV1(address addr) external pure returns (bytes memory ret0) {
        (ret0) = InteroperableAddress.formatEvmV1(addr);
    }

    function $parseV1(bytes calldata self) external pure returns (bytes2 chainType, bytes memory chainReference, bytes memory addr) {
        (chainType, chainReference, addr) = InteroperableAddress.parseV1(self);
    }

    function $parseV1Calldata(bytes calldata self) external pure returns (bytes2 chainType, bytes memory chainReference, bytes memory addr) {
        (chainType, chainReference, addr) = InteroperableAddress.parseV1Calldata(self);
    }

    function $tryParseV1(bytes calldata self) external pure returns (bool success, bytes2 chainType, bytes memory chainReference, bytes memory addr) {
        (success, chainType, chainReference, addr) = InteroperableAddress.tryParseV1(self);
    }

    function $tryParseV1Calldata(bytes calldata self) external pure returns (bool success, bytes2 chainType, bytes memory chainReference, bytes memory addr) {
        (success, chainType, chainReference, addr) = InteroperableAddress.tryParseV1Calldata(self);
    }

    function $parseEvmV1(bytes calldata self) external pure returns (uint256 chainId, address addr) {
        (chainId, addr) = InteroperableAddress.parseEvmV1(self);
    }

    function $parseEvmV1Calldata(bytes calldata self) external pure returns (uint256 chainId, address addr) {
        (chainId, addr) = InteroperableAddress.parseEvmV1Calldata(self);
    }

    function $tryParseEvmV1(bytes calldata self) external pure returns (bool success, uint256 chainId, address addr) {
        (success, chainId, addr) = InteroperableAddress.tryParseEvmV1(self);
    }

    function $tryParseEvmV1Calldata(bytes calldata self) external pure returns (bool success, uint256 chainId, address addr) {
        (success, chainId, addr) = InteroperableAddress.tryParseEvmV1Calldata(self);
    }

    receive() external payable {}
}
