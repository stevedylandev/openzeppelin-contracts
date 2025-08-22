// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../contracts/proxy/Clones.sol";
import "../../contracts/utils/Create2.sol";
import "../../contracts/utils/Errors.sol";

contract $Clones {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    event return$clone_address(address instance);

    event return$clone_address_uint256(address instance);

    event return$cloneDeterministic_address_bytes32(address instance);

    event return$cloneDeterministic_address_bytes32_uint256(address instance);

    event return$cloneWithImmutableArgs_address_bytes(address instance);

    event return$cloneWithImmutableArgs_address_bytes_uint256(address instance);

    event return$cloneDeterministicWithImmutableArgs_address_bytes_bytes32(address instance);

    event return$cloneDeterministicWithImmutableArgs_address_bytes_bytes32_uint256(address instance);

    constructor() payable {
    }

    function $clone(address implementation) external payable returns (address instance) {
        (instance) = Clones.clone(implementation);
        emit return$clone_address(instance);
    }

    function $clone(address implementation,uint256 value) external payable returns (address instance) {
        (instance) = Clones.clone(implementation,value);
        emit return$clone_address_uint256(instance);
    }

    function $cloneDeterministic(address implementation,bytes32 salt) external payable returns (address instance) {
        (instance) = Clones.cloneDeterministic(implementation,salt);
        emit return$cloneDeterministic_address_bytes32(instance);
    }

    function $cloneDeterministic(address implementation,bytes32 salt,uint256 value) external payable returns (address instance) {
        (instance) = Clones.cloneDeterministic(implementation,salt,value);
        emit return$cloneDeterministic_address_bytes32_uint256(instance);
    }

    function $predictDeterministicAddress(address implementation,bytes32 salt,address deployer) external pure returns (address predicted) {
        (predicted) = Clones.predictDeterministicAddress(implementation,salt,deployer);
    }

    function $predictDeterministicAddress(address implementation,bytes32 salt) external view returns (address predicted) {
        (predicted) = Clones.predictDeterministicAddress(implementation,salt);
    }

    function $cloneWithImmutableArgs(address implementation,bytes calldata args) external payable returns (address instance) {
        (instance) = Clones.cloneWithImmutableArgs(implementation,args);
        emit return$cloneWithImmutableArgs_address_bytes(instance);
    }

    function $cloneWithImmutableArgs(address implementation,bytes calldata args,uint256 value) external payable returns (address instance) {
        (instance) = Clones.cloneWithImmutableArgs(implementation,args,value);
        emit return$cloneWithImmutableArgs_address_bytes_uint256(instance);
    }

    function $cloneDeterministicWithImmutableArgs(address implementation,bytes calldata args,bytes32 salt) external payable returns (address instance) {
        (instance) = Clones.cloneDeterministicWithImmutableArgs(implementation,args,salt);
        emit return$cloneDeterministicWithImmutableArgs_address_bytes_bytes32(instance);
    }

    function $cloneDeterministicWithImmutableArgs(address implementation,bytes calldata args,bytes32 salt,uint256 value) external payable returns (address instance) {
        (instance) = Clones.cloneDeterministicWithImmutableArgs(implementation,args,salt,value);
        emit return$cloneDeterministicWithImmutableArgs_address_bytes_bytes32_uint256(instance);
    }

    function $predictDeterministicAddressWithImmutableArgs(address implementation,bytes calldata args,bytes32 salt,address deployer) external pure returns (address predicted) {
        (predicted) = Clones.predictDeterministicAddressWithImmutableArgs(implementation,args,salt,deployer);
    }

    function $predictDeterministicAddressWithImmutableArgs(address implementation,bytes calldata args,bytes32 salt) external view returns (address predicted) {
        (predicted) = Clones.predictDeterministicAddressWithImmutableArgs(implementation,args,salt);
    }

    function $fetchCloneArgs(address instance) external view returns (bytes memory ret0) {
        (ret0) = Clones.fetchCloneArgs(instance);
    }

    receive() external payable {}
}
