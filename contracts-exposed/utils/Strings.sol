// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../contracts/utils/Strings.sol";
import "../../contracts/utils/math/Math.sol";
import "../../contracts/utils/math/SafeCast.sol";
import "../../contracts/utils/math/SignedMath.sol";
import "../../contracts/utils/Bytes.sol";
import "../../contracts/utils/Panic.sol";

contract $Strings {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    function $toString(uint256 value) external pure returns (string memory ret0) {
        (ret0) = Strings.toString(value);
    }

    function $toStringSigned(int256 value) external pure returns (string memory ret0) {
        (ret0) = Strings.toStringSigned(value);
    }

    function $toHexString(uint256 value) external pure returns (string memory ret0) {
        (ret0) = Strings.toHexString(value);
    }

    function $toHexString(uint256 value,uint256 length) external pure returns (string memory ret0) {
        (ret0) = Strings.toHexString(value,length);
    }

    function $toHexString(address addr) external pure returns (string memory ret0) {
        (ret0) = Strings.toHexString(addr);
    }

    function $toChecksumHexString(address addr) external pure returns (string memory ret0) {
        (ret0) = Strings.toChecksumHexString(addr);
    }

    function $toHexString(bytes calldata input) external pure returns (string memory ret0) {
        (ret0) = Strings.toHexString(input);
    }

    function $equal(string calldata a,string calldata b) external pure returns (bool ret0) {
        (ret0) = Strings.equal(a,b);
    }

    function $parseUint(string calldata input) external pure returns (uint256 ret0) {
        (ret0) = Strings.parseUint(input);
    }

    function $parseUint(string calldata input,uint256 begin,uint256 end) external pure returns (uint256 ret0) {
        (ret0) = Strings.parseUint(input,begin,end);
    }

    function $tryParseUint(string calldata input) external pure returns (bool success, uint256 value) {
        (success, value) = Strings.tryParseUint(input);
    }

    function $tryParseUint(string calldata input,uint256 begin,uint256 end) external pure returns (bool success, uint256 value) {
        (success, value) = Strings.tryParseUint(input,begin,end);
    }

    function $parseInt(string calldata input) external pure returns (int256 ret0) {
        (ret0) = Strings.parseInt(input);
    }

    function $parseInt(string calldata input,uint256 begin,uint256 end) external pure returns (int256 ret0) {
        (ret0) = Strings.parseInt(input,begin,end);
    }

    function $tryParseInt(string calldata input) external pure returns (bool success, int256 value) {
        (success, value) = Strings.tryParseInt(input);
    }

    function $tryParseInt(string calldata input,uint256 begin,uint256 end) external pure returns (bool success, int256 value) {
        (success, value) = Strings.tryParseInt(input,begin,end);
    }

    function $parseHexUint(string calldata input) external pure returns (uint256 ret0) {
        (ret0) = Strings.parseHexUint(input);
    }

    function $parseHexUint(string calldata input,uint256 begin,uint256 end) external pure returns (uint256 ret0) {
        (ret0) = Strings.parseHexUint(input,begin,end);
    }

    function $tryParseHexUint(string calldata input) external pure returns (bool success, uint256 value) {
        (success, value) = Strings.tryParseHexUint(input);
    }

    function $tryParseHexUint(string calldata input,uint256 begin,uint256 end) external pure returns (bool success, uint256 value) {
        (success, value) = Strings.tryParseHexUint(input,begin,end);
    }

    function $parseAddress(string calldata input) external pure returns (address ret0) {
        (ret0) = Strings.parseAddress(input);
    }

    function $parseAddress(string calldata input,uint256 begin,uint256 end) external pure returns (address ret0) {
        (ret0) = Strings.parseAddress(input,begin,end);
    }

    function $tryParseAddress(string calldata input) external pure returns (bool success, address value) {
        (success, value) = Strings.tryParseAddress(input);
    }

    function $tryParseAddress(string calldata input,uint256 begin,uint256 end) external pure returns (bool success, address value) {
        (success, value) = Strings.tryParseAddress(input,begin,end);
    }

    function $escapeJSON(string calldata input) external pure returns (string memory ret0) {
        (ret0) = Strings.escapeJSON(input);
    }

    receive() external payable {}
}
