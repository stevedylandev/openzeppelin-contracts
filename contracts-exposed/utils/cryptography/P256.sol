// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../contracts/utils/cryptography/P256.sol";
import "../../../contracts/utils/math/Math.sol";
import "../../../contracts/utils/Errors.sol";
import "../../../contracts/utils/Panic.sol";
import "../../../contracts/utils/math/SafeCast.sol";

contract $P256 {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    function $GX() external pure returns (uint256) {
        return P256.GX;
    }

    function $GY() external pure returns (uint256) {
        return P256.GY;
    }

    function $P() external pure returns (uint256) {
        return P256.P;
    }

    function $N() external pure returns (uint256) {
        return P256.N;
    }

    function $A() external pure returns (uint256) {
        return P256.A;
    }

    function $B() external pure returns (uint256) {
        return P256.B;
    }

    function $verify(bytes32 h,bytes32 r,bytes32 s,bytes32 qx,bytes32 qy) external view returns (bool ret0) {
        (ret0) = P256.verify(h,r,s,qx,qy);
    }

    function $verifyNative(bytes32 h,bytes32 r,bytes32 s,bytes32 qx,bytes32 qy) external view returns (bool ret0) {
        (ret0) = P256.verifyNative(h,r,s,qx,qy);
    }

    function $verifySolidity(bytes32 h,bytes32 r,bytes32 s,bytes32 qx,bytes32 qy) external view returns (bool ret0) {
        (ret0) = P256.verifySolidity(h,r,s,qx,qy);
    }

    function $recovery(bytes32 h,uint8 v,bytes32 r,bytes32 s) external view returns (bytes32 x, bytes32 y) {
        (x, y) = P256.recovery(h,v,r,s);
    }

    function $isValidPublicKey(bytes32 x,bytes32 y) external pure returns (bool result) {
        (result) = P256.isValidPublicKey(x,y);
    }

    receive() external payable {}
}
