// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../contracts/utils/Blockhash.sol";

contract $Blockhash {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    function $HISTORY_STORAGE_ADDRESS() external pure returns (address) {
        return Blockhash.HISTORY_STORAGE_ADDRESS;
    }

    function $blockHash(uint256 blockNumber) external view returns (bytes32 ret0) {
        (ret0) = Blockhash.blockHash(blockNumber);
    }

    receive() external payable {}
}
