// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../contracts/account/Account.sol";
import "../../contracts/interfaces/draft-IERC4337.sol";
import "../../contracts/utils/cryptography/signers/AbstractSigner.sol";
import "../../contracts/account/utils/draft-ERC4337Utils.sol";
import "../../contracts/utils/math/Math.sol";
import "../../contracts/utils/Calldata.sol";
import "../../contracts/utils/Packing.sol";
import "../../contracts/utils/Panic.sol";
import "../../contracts/utils/math/SafeCast.sol";

abstract contract $Account is Account {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    event return$_validateUserOp(uint256 ret0);

    constructor() payable {
    }

    function $onlyEntryPointOrSelf() external payable onlyEntryPointOrSelf() {}

    function $onlyEntryPoint() external payable onlyEntryPoint() {}

    function $_validateUserOp(PackedUserOperation calldata userOp,bytes32 userOpHash) external payable returns (uint256 ret0) {
        (ret0) = super._validateUserOp(userOp,userOpHash);
        emit return$_validateUserOp(ret0);
    }

    function $_signableUserOpHash(PackedUserOperation calldata arg0,bytes32 userOpHash) external view returns (bytes32 ret0) {
        (ret0) = super._signableUserOpHash(arg0,userOpHash);
    }

    function $_payPrefund(uint256 missingAccountFunds) external payable {
        super._payPrefund(missingAccountFunds);
    }

    function $_checkEntryPoint() external view {
        super._checkEntryPoint();
    }

    function $_checkEntryPointOrSelf() external view {
        super._checkEntryPointOrSelf();
    }
}
