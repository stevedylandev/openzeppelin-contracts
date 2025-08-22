// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../../contracts/token/ERC20/utils/ERC1363Utils.sol";
import "../../../../contracts/interfaces/IERC1363Receiver.sol";
import "../../../../contracts/interfaces/IERC1363Spender.sol";

contract $ERC1363Utils {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    function $checkOnERC1363TransferReceived(address operator,address from,address to,uint256 value,bytes calldata data) external payable {
        ERC1363Utils.checkOnERC1363TransferReceived(operator,from,to,value,data);
    }

    function $checkOnERC1363ApprovalReceived(address operator,address spender,uint256 value,bytes calldata data) external payable {
        ERC1363Utils.checkOnERC1363ApprovalReceived(operator,spender,value,data);
    }

    receive() external payable {}
}
