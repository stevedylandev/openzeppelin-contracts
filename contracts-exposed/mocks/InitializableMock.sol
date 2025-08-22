// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../contracts/mocks/InitializableMock.sol";
import "../../contracts/proxy/utils/Initializable.sol";

contract $InitializableMock is InitializableMock {
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

contract $ConstructorInitializableMock is ConstructorInitializableMock {
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

contract $ChildConstructorInitializableMock is ChildConstructorInitializableMock {
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

contract $ReinitializerMock is ReinitializerMock {
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

contract $DisableNew is DisableNew {
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

contract $DisableOld is DisableOld {
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

contract $DisableBad1 is DisableBad1 {
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

contract $DisableBad2 is DisableBad2 {
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

contract $DisableOk is DisableOk {
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
