// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../contracts/utils/CAIP10.sol";
import "../../contracts/utils/Bytes.sol";
import "../../contracts/utils/Strings.sol";
import "../../contracts/utils/CAIP2.sol";
import "../../contracts/utils/math/Math.sol";
import "../../contracts/utils/math/SafeCast.sol";
import "../../contracts/utils/math/SignedMath.sol";
import "../../contracts/utils/Panic.sol";

contract $CAIP10 {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    function $local(address account) external view returns (string memory ret0) {
        (ret0) = CAIP10.local(account);
    }

    function $format(string calldata caip2,string calldata account) external pure returns (string memory ret0) {
        (ret0) = CAIP10.format(caip2,account);
    }

    function $parse(string calldata caip10) external pure returns (string memory caip2, string memory account) {
        (caip2, account) = CAIP10.parse(caip10);
    }

    receive() external payable {}
}
