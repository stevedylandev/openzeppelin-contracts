// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../contracts/mocks/Stateless.sol";
import "../../contracts/utils/Address.sol";
import "../../contracts/utils/Arrays.sol";
import "../../contracts/access/manager/AuthorityUtils.sol";
import "../../contracts/utils/Base64.sol";
import "../../contracts/utils/structs/BitMaps.sol";
import "../../contracts/utils/Blockhash.sol";
import "../../contracts/utils/Bytes.sol";
import "../../contracts/utils/CAIP2.sol";
import "../../contracts/utils/CAIP10.sol";
import "../../contracts/utils/structs/Checkpoints.sol";
import "../../contracts/utils/structs/CircularBuffer.sol";
import "../../contracts/proxy/Clones.sol";
import "../../contracts/utils/Create2.sol";
import "../../contracts/utils/structs/DoubleEndedQueue.sol";
import "../../contracts/utils/cryptography/ECDSA.sol";
import "../../contracts/account/utils/EIP7702Utils.sol";
import "../../contracts/utils/structs/EnumerableMap.sol";
import "../../contracts/utils/structs/EnumerableSet.sol";
import "../../contracts/utils/introspection/ERC165.sol";
import "../../contracts/utils/introspection/ERC165Checker.sol";
import "../../contracts/token/ERC721/utils/ERC721Holder.sol";
import "../../contracts/token/ERC1155/utils/ERC1155Holder.sol";
import "../../contracts/proxy/ERC1967/ERC1967Utils.sol";
import "../../contracts/account/utils/draft-ERC4337Utils.sol";
import "../../contracts/account/utils/draft-ERC7579Utils.sol";
import "../../contracts/utils/cryptography/verifiers/ERC7913P256Verifier.sol";
import "../../contracts/utils/cryptography/verifiers/ERC7913RSAVerifier.sol";
import "../../contracts/utils/structs/Heap.sol";
import "../../contracts/utils/draft-InteroperableAddress.sol";
import "../../contracts/utils/math/Math.sol";
import "../../contracts/utils/cryptography/MerkleProof.sol";
import "../../contracts/utils/cryptography/MessageHashUtils.sol";
import "../../contracts/utils/Nonces.sol";
import "../../contracts/utils/NoncesKeyed.sol";
import "../../contracts/utils/cryptography/P256.sol";
import "../../contracts/utils/Packing.sol";
import "../../contracts/utils/Panic.sol";
import "../../contracts/utils/cryptography/RSA.sol";
import "../../contracts/utils/math/SafeCast.sol";
import "../../contracts/token/ERC20/utils/SafeERC20.sol";
import "../../contracts/utils/ShortStrings.sol";
import "../../contracts/utils/cryptography/SignatureChecker.sol";
import "../../contracts/utils/math/SignedMath.sol";
import "../../contracts/utils/StorageSlot.sol";
import "../../contracts/utils/Strings.sol";
import "../../contracts/utils/Memory.sol";
import "../../contracts/utils/types/Time.sol";
import "../../contracts/utils/Errors.sol";
import "../../contracts/utils/Comparators.sol";
import "../../contracts/utils/SlotDerivation.sol";
import "../../contracts/access/manager/IAuthority.sol";
import "../../contracts/utils/introspection/IERC165.sol";
import "../../contracts/token/ERC721/IERC721Receiver.sol";
import "../../contracts/token/ERC1155/IERC1155Receiver.sol";
import "../../contracts/proxy/beacon/IBeacon.sol";
import "../../contracts/interfaces/IERC1967.sol";
import "../../contracts/interfaces/draft-IERC4337.sol";
import "../../contracts/utils/Calldata.sol";
import "../../contracts/interfaces/draft-IERC7579.sol";
import "../../contracts/interfaces/IERC7913.sol";
import "../../contracts/utils/cryptography/Hashes.sol";
import "../../contracts/token/ERC20/IERC20.sol";
import "../../contracts/interfaces/IERC1363.sol";
import "../../contracts/interfaces/IERC1271.sol";
import "../../contracts/interfaces/IERC20.sol";
import "../../contracts/interfaces/IERC165.sol";

contract $Dummy1234 is Dummy1234 {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    receive() external payable {}
}
