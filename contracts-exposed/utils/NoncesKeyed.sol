// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../contracts/utils/NoncesKeyed.sol";
import "../../contracts/utils/Nonces.sol";

contract $NoncesKeyed is NoncesKeyed {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    event return$_useNonce_address_uint192(uint256 ret0);

    event return$_useNonce_address(uint256 ret0);

    constructor() payable {
    }

    function $_useNonce(address owner,uint192 key) external payable returns (uint256 ret0) {
        (ret0) = super._useNonce(owner,key);
        emit return$_useNonce_address_uint192(ret0);
    }

    function $_useCheckedNonce(address owner,uint256 keyNonce) external payable {
        super._useCheckedNonce(owner,keyNonce);
    }

    function $_useCheckedNonce(address owner,uint192 key,uint64 nonce) external payable {
        super._useCheckedNonce(owner,key,nonce);
    }

    function $_useNonce(address owner) external payable returns (uint256 ret0) {
        (ret0) = super._useNonce(owner);
        emit return$_useNonce_address(ret0);
    }

    receive() external payable {}
}
