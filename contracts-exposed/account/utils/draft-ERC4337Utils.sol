// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../contracts/account/utils/draft-ERC4337Utils.sol";
import "../../../contracts/interfaces/draft-IERC4337.sol";
import "../../../contracts/utils/math/Math.sol";
import "../../../contracts/utils/Calldata.sol";
import "../../../contracts/utils/Packing.sol";
import "../../../contracts/utils/Panic.sol";
import "../../../contracts/utils/math/SafeCast.sol";

contract $ERC4337Utils {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    function $ENTRYPOINT_V07() external pure returns (IEntryPoint) {
        return ERC4337Utils.ENTRYPOINT_V07;
    }

    function $ENTRYPOINT_V08() external pure returns (IEntryPoint) {
        return ERC4337Utils.ENTRYPOINT_V08;
    }

    function $SIG_VALIDATION_SUCCESS() external pure returns (uint256) {
        return ERC4337Utils.SIG_VALIDATION_SUCCESS;
    }

    function $SIG_VALIDATION_FAILED() external pure returns (uint256) {
        return ERC4337Utils.SIG_VALIDATION_FAILED;
    }

    function $parseValidationData(uint256 validationData) external pure returns (address aggregator, uint48 validAfter, uint48 validUntil) {
        (aggregator, validAfter, validUntil) = ERC4337Utils.parseValidationData(validationData);
    }

    function $packValidationData(address aggregator,uint48 validAfter,uint48 validUntil) external pure returns (uint256 ret0) {
        (ret0) = ERC4337Utils.packValidationData(aggregator,validAfter,validUntil);
    }

    function $packValidationData(bool sigSuccess,uint48 validAfter,uint48 validUntil) external pure returns (uint256 ret0) {
        (ret0) = ERC4337Utils.packValidationData(sigSuccess,validAfter,validUntil);
    }

    function $combineValidationData(uint256 validationData1,uint256 validationData2) external pure returns (uint256 ret0) {
        (ret0) = ERC4337Utils.combineValidationData(validationData1,validationData2);
    }

    function $getValidationData(uint256 validationData) external view returns (address aggregator, bool outOfTimeRange) {
        (aggregator, outOfTimeRange) = ERC4337Utils.getValidationData(validationData);
    }

    function $hash(PackedUserOperation calldata self,address entrypoint) external view returns (bytes32 ret0) {
        (ret0) = ERC4337Utils.hash(self,entrypoint);
    }

    function $factory(PackedUserOperation calldata self) external pure returns (address ret0) {
        (ret0) = ERC4337Utils.factory(self);
    }

    function $factoryData(PackedUserOperation calldata self) external pure returns (bytes memory ret0) {
        (ret0) = ERC4337Utils.factoryData(self);
    }

    function $verificationGasLimit(PackedUserOperation calldata self) external pure returns (uint256 ret0) {
        (ret0) = ERC4337Utils.verificationGasLimit(self);
    }

    function $callGasLimit(PackedUserOperation calldata self) external pure returns (uint256 ret0) {
        (ret0) = ERC4337Utils.callGasLimit(self);
    }

    function $maxPriorityFeePerGas(PackedUserOperation calldata self) external pure returns (uint256 ret0) {
        (ret0) = ERC4337Utils.maxPriorityFeePerGas(self);
    }

    function $maxFeePerGas(PackedUserOperation calldata self) external pure returns (uint256 ret0) {
        (ret0) = ERC4337Utils.maxFeePerGas(self);
    }

    function $gasPrice(PackedUserOperation calldata self) external view returns (uint256 ret0) {
        (ret0) = ERC4337Utils.gasPrice(self);
    }

    function $paymaster(PackedUserOperation calldata self) external pure returns (address ret0) {
        (ret0) = ERC4337Utils.paymaster(self);
    }

    function $paymasterVerificationGasLimit(PackedUserOperation calldata self) external pure returns (uint256 ret0) {
        (ret0) = ERC4337Utils.paymasterVerificationGasLimit(self);
    }

    function $paymasterPostOpGasLimit(PackedUserOperation calldata self) external pure returns (uint256 ret0) {
        (ret0) = ERC4337Utils.paymasterPostOpGasLimit(self);
    }

    function $paymasterData(PackedUserOperation calldata self) external pure returns (bytes memory ret0) {
        (ret0) = ERC4337Utils.paymasterData(self);
    }

    receive() external payable {}
}
