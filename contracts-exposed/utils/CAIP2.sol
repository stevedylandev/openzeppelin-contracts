// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../contracts/utils/CAIP2.sol";
import "../../contracts/utils/Bytes.sol";
import "../../contracts/utils/Strings.sol";
import "../../contracts/utils/math/Math.sol";
import "../../contracts/utils/math/SafeCast.sol";
import "../../contracts/utils/math/SignedMath.sol";
import "../../contracts/utils/Panic.sol";

contract $CAIP2 {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    function $local() external view returns (string memory ret0) {
        (ret0) = CAIP2.local();
    }

    function $format(string calldata namespace,string calldata ref) external pure returns (string memory ret0) {
        (ret0) = CAIP2.format(namespace,ref);
    }

    function $parse(string calldata caip2) external pure returns (string memory namespace, string memory ref) {
        (namespace, ref) = CAIP2.parse(caip2);
    }

    receive() external payable {}
}
