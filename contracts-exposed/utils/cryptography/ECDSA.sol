// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../contracts/utils/cryptography/ECDSA.sol";

contract $ECDSA {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    function $tryRecover(bytes32 hash,bytes calldata signature) external pure returns (address recovered, ECDSA.RecoverError err, bytes32 errArg) {
        (recovered, err, errArg) = ECDSA.tryRecover(hash,signature);
    }

    function $tryRecoverCalldata(bytes32 hash,bytes calldata signature) external pure returns (address recovered, ECDSA.RecoverError err, bytes32 errArg) {
        (recovered, err, errArg) = ECDSA.tryRecoverCalldata(hash,signature);
    }

    function $recover(bytes32 hash,bytes calldata signature) external pure returns (address ret0) {
        (ret0) = ECDSA.recover(hash,signature);
    }

    function $recoverCalldata(bytes32 hash,bytes calldata signature) external pure returns (address ret0) {
        (ret0) = ECDSA.recoverCalldata(hash,signature);
    }

    function $tryRecover(bytes32 hash,bytes32 r,bytes32 vs) external pure returns (address recovered, ECDSA.RecoverError err, bytes32 errArg) {
        (recovered, err, errArg) = ECDSA.tryRecover(hash,r,vs);
    }

    function $recover(bytes32 hash,bytes32 r,bytes32 vs) external pure returns (address ret0) {
        (ret0) = ECDSA.recover(hash,r,vs);
    }

    function $tryRecover(bytes32 hash,uint8 v,bytes32 r,bytes32 s) external pure returns (address recovered, ECDSA.RecoverError err, bytes32 errArg) {
        (recovered, err, errArg) = ECDSA.tryRecover(hash,v,r,s);
    }

    function $recover(bytes32 hash,uint8 v,bytes32 r,bytes32 s) external pure returns (address ret0) {
        (ret0) = ECDSA.recover(hash,v,r,s);
    }

    function $parse(bytes calldata signature) external pure returns (uint8 v, bytes32 r, bytes32 s) {
        (v, r, s) = ECDSA.parse(signature);
    }

    function $parseCalldata(bytes calldata signature) external pure returns (uint8 v, bytes32 r, bytes32 s) {
        (v, r, s) = ECDSA.parseCalldata(signature);
    }

    receive() external payable {}
}
