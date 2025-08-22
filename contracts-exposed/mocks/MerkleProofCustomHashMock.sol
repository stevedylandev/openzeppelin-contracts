// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../contracts/mocks/MerkleProofCustomHashMock.sol";
import "../../contracts/utils/cryptography/MerkleProof.sol";
import "../../contracts/utils/cryptography/Hashes.sol";

contract $MerkleProofCustomHashMock is MerkleProofCustomHashMock {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    function $customHash(bytes32 a,bytes32 b) external pure returns (bytes32 ret0) {
        (ret0) = super.customHash(a,b);
    }

    function $verify(bytes32[] calldata proof,bytes32 root,bytes32 leaf) external view returns (bool ret0) {
        (ret0) = super.verify(proof,root,leaf);
    }

    function $processProof(bytes32[] calldata proof,bytes32 leaf) external view returns (bytes32 ret0) {
        (ret0) = super.processProof(proof,leaf);
    }

    function $verifyCalldata(bytes32[] calldata proof,bytes32 root,bytes32 leaf) external view returns (bool ret0) {
        (ret0) = super.verifyCalldata(proof,root,leaf);
    }

    function $processProofCalldata(bytes32[] calldata proof,bytes32 leaf) external view returns (bytes32 ret0) {
        (ret0) = super.processProofCalldata(proof,leaf);
    }

    function $multiProofVerify(bytes32[] calldata proof,bool[] calldata proofFlags,bytes32 root,bytes32[] calldata leaves) external view returns (bool ret0) {
        (ret0) = super.multiProofVerify(proof,proofFlags,root,leaves);
    }

    function $processMultiProof(bytes32[] calldata proof,bool[] calldata proofFlags,bytes32[] calldata leaves) external view returns (bytes32 ret0) {
        (ret0) = super.processMultiProof(proof,proofFlags,leaves);
    }

    function $multiProofVerifyCalldata(bytes32[] calldata proof,bool[] calldata proofFlags,bytes32 root,bytes32[] calldata leaves) external view returns (bool ret0) {
        (ret0) = super.multiProofVerifyCalldata(proof,proofFlags,root,leaves);
    }

    function $processMultiProofCalldata(bytes32[] calldata proof,bool[] calldata proofFlags,bytes32[] calldata leaves) external view returns (bytes32 ret0) {
        (ret0) = super.processMultiProofCalldata(proof,proofFlags,leaves);
    }

    receive() external payable {}
}
