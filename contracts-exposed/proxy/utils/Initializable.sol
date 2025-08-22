// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../contracts/proxy/utils/Initializable.sol";

contract $Initializable is Initializable {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    function $initializer() external payable initializer() {}

    function $reinitializer(uint64 version) external payable reinitializer(version) {}

    function $onlyInitializing() external payable onlyInitializing() {}

    function $_checkInitializing() external view {
        super._checkInitializing();
    }

    function $_disableInitializers() external payable {
        super._disableInitializers();
    }

    function $_getInitializedVersion() external view returns (uint64 ret0) {
        (ret0) = super._getInitializedVersion();
    }

    function $_isInitializing() external view returns (bool ret0) {
        (ret0) = super._isInitializing();
    }

    function $_initializableStorageSlot() external pure returns (bytes32 ret0) {
        (ret0) = super._initializableStorageSlot();
    }

    receive() external payable {}
}
