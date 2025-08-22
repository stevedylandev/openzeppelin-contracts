// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../contracts/utils/cryptography/RSA.sol";
import "../../../contracts/utils/math/Math.sol";
import "../../../contracts/utils/Panic.sol";
import "../../../contracts/utils/math/SafeCast.sol";

contract $RSA {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    function $pkcs1Sha256(bytes calldata data,bytes calldata s,bytes calldata e,bytes calldata n) external view returns (bool ret0) {
        (ret0) = RSA.pkcs1Sha256(data,s,e,n);
    }

    function $pkcs1Sha256(bytes32 digest,bytes calldata s,bytes calldata e,bytes calldata n) external view returns (bool ret0) {
        (ret0) = RSA.pkcs1Sha256(digest,s,e,n);
    }

    receive() external payable {}
}
