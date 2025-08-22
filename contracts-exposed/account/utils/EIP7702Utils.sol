// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../contracts/account/utils/EIP7702Utils.sol";

contract $EIP7702Utils {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    function $EIP7702_PREFIX() external pure returns (bytes3) {
        return EIP7702Utils.EIP7702_PREFIX;
    }

    function $fetchDelegate(address account) external view returns (address ret0) {
        (ret0) = EIP7702Utils.fetchDelegate(account);
    }

    receive() external payable {}
}
