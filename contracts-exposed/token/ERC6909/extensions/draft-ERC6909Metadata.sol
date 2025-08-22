// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../../contracts/token/ERC6909/extensions/draft-ERC6909Metadata.sol";
import "../../../../contracts/interfaces/draft-IERC6909.sol";
import "../../../../contracts/token/ERC6909/draft-ERC6909.sol";
import "../../../../contracts/utils/introspection/ERC165.sol";
import "../../../../contracts/utils/introspection/IERC165.sol";
import "../../../../contracts/utils/Context.sol";

contract $ERC6909Metadata is ERC6909Metadata {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    function $_setName(uint256 id,string calldata newName) external payable {
        super._setName(id,newName);
    }

    function $_setSymbol(uint256 id,string calldata newSymbol) external payable {
        super._setSymbol(id,newSymbol);
    }

    function $_setDecimals(uint256 id,uint8 newDecimals) external payable {
        super._setDecimals(id,newDecimals);
    }

    function $_mint(address to,uint256 id,uint256 amount) external payable {
        super._mint(to,id,amount);
    }

    function $_transfer(address from,address to,uint256 id,uint256 amount) external payable {
        super._transfer(from,to,id,amount);
    }

    function $_burn(address from,uint256 id,uint256 amount) external payable {
        super._burn(from,id,amount);
    }

    function $_update(address from,address to,uint256 id,uint256 amount) external payable {
        super._update(from,to,id,amount);
    }

    function $_approve(address owner,address spender,uint256 id,uint256 amount) external payable {
        super._approve(owner,spender,id,amount);
    }

    function $_setOperator(address owner,address spender,bool approved) external payable {
        super._setOperator(owner,spender,approved);
    }

    function $_spendAllowance(address owner,address spender,uint256 id,uint256 amount) external payable {
        super._spendAllowance(owner,spender,id,amount);
    }

    function $_msgSender() external view returns (address ret0) {
        (ret0) = super._msgSender();
    }

    function $_msgData() external view returns (bytes memory ret0) {
        (ret0) = super._msgData();
    }

    function $_contextSuffixLength() external view returns (uint256 ret0) {
        (ret0) = super._contextSuffixLength();
    }

    receive() external payable {}
}
