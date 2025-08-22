// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../../contracts/mocks/docs/account/MyAccountERC7702.sol";
import "../../../../contracts/token/ERC1155/utils/ERC1155Holder.sol";
import "../../../../contracts/token/ERC1155/IERC1155Receiver.sol";
import "../../../../contracts/utils/introspection/ERC165.sol";
import "../../../../contracts/utils/introspection/IERC165.sol";
import "../../../../contracts/token/ERC721/utils/ERC721Holder.sol";
import "../../../../contracts/token/ERC721/IERC721Receiver.sol";
import "../../../../contracts/account/extensions/draft-ERC7821.sol";
import "../../../../contracts/interfaces/draft-IERC7821.sol";
import "../../../../contracts/utils/cryptography/signers/SignerERC7702.sol";
import "../../../../contracts/account/Account.sol";
import "../../../../contracts/interfaces/draft-IERC4337.sol";
import "../../../../contracts/utils/cryptography/signers/AbstractSigner.sol";
import "../../../../contracts/account/utils/draft-ERC7579Utils.sol";
import "../../../../contracts/utils/cryptography/ECDSA.sol";
import "../../../../contracts/account/utils/draft-ERC4337Utils.sol";
import "../../../../contracts/interfaces/draft-IERC7579.sol";
import "../../../../contracts/utils/Packing.sol";
import "../../../../contracts/utils/Address.sol";
import "../../../../contracts/utils/math/Math.sol";
import "../../../../contracts/utils/Calldata.sol";
import "../../../../contracts/utils/Errors.sol";
import "../../../../contracts/utils/Panic.sol";
import "../../../../contracts/utils/math/SafeCast.sol";

contract $MyAccountERC7702 is MyAccountERC7702 {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    event return$_validateUserOp(uint256 ret0);

    constructor() payable {
    }

    function $onlyEntryPointOrSelf() external payable onlyEntryPointOrSelf() {}

    function $onlyEntryPoint() external payable onlyEntryPoint() {}

    function $_erc7821AuthorizedExecutor(address caller,bytes32 mode,bytes calldata executionData) external view returns (bool ret0) {
        (ret0) = super._erc7821AuthorizedExecutor(caller,mode,executionData);
    }

    function $_rawSignatureValidation(bytes32 hash,bytes calldata signature) external view returns (bool ret0) {
        (ret0) = super._rawSignatureValidation(hash,signature);
    }

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
