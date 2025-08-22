// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../contracts/utils/cryptography/WebAuthn.sol";
import "../../../contracts/utils/cryptography/P256.sol";
import "../../../contracts/utils/Base64.sol";
import "../../../contracts/utils/Bytes.sol";
import "../../../contracts/utils/Strings.sol";
import "../../../contracts/utils/math/Math.sol";
import "../../../contracts/utils/Errors.sol";
import "../../../contracts/utils/math/SafeCast.sol";
import "../../../contracts/utils/math/SignedMath.sol";
import "../../../contracts/utils/Panic.sol";

contract $WebAuthn {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    function $AUTH_DATA_FLAGS_UP() external pure returns (bytes1) {
        return WebAuthn.AUTH_DATA_FLAGS_UP;
    }

    function $AUTH_DATA_FLAGS_UV() external pure returns (bytes1) {
        return WebAuthn.AUTH_DATA_FLAGS_UV;
    }

    function $AUTH_DATA_FLAGS_BE() external pure returns (bytes1) {
        return WebAuthn.AUTH_DATA_FLAGS_BE;
    }

    function $AUTH_DATA_FLAGS_BS() external pure returns (bytes1) {
        return WebAuthn.AUTH_DATA_FLAGS_BS;
    }

    function $verify(bytes calldata challenge,WebAuthn.WebAuthnAuth calldata auth,bytes32 qx,bytes32 qy) external view returns (bool ret0) {
        (ret0) = WebAuthn.verify(challenge,auth,qx,qy);
    }

    function $verify(bytes calldata challenge,WebAuthn.WebAuthnAuth calldata auth,bytes32 qx,bytes32 qy,bool requireUV) external view returns (bool ret0) {
        (ret0) = WebAuthn.verify(challenge,auth,qx,qy,requireUV);
    }

    function $tryDecodeAuth(bytes calldata input) external pure returns (bool success, WebAuthn.WebAuthnAuth memory auth) {
        (success, auth) = WebAuthn.tryDecodeAuth(input);
    }

    receive() external payable {}
}
