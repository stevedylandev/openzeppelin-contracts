// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../contracts/account/extensions/draft-ERC7821.sol";
import "../../../contracts/interfaces/draft-IERC7821.sol";
import "../../../contracts/account/utils/draft-ERC7579Utils.sol";
import "../../../contracts/account/Account.sol";
import "../../../contracts/interfaces/draft-IERC7579.sol";
import "../../../contracts/utils/Packing.sol";
import "../../../contracts/utils/Address.sol";
import "../../../contracts/interfaces/draft-IERC4337.sol";
import "../../../contracts/account/utils/draft-ERC4337Utils.sol";
import "../../../contracts/utils/cryptography/signers/AbstractSigner.sol";
import "../../../contracts/utils/Errors.sol";
import "../../../contracts/utils/math/Math.sol";
import "../../../contracts/utils/Calldata.sol";
import "../../../contracts/utils/Panic.sol";
import "../../../contracts/utils/math/SafeCast.sol";

contract $ERC7821 is ERC7821 {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    function $_erc7821AuthorizedExecutor(address caller,bytes32 arg1,bytes calldata arg2) external view returns (bool ret0) {
        (ret0) = super._erc7821AuthorizedExecutor(caller,arg1,arg2);
    }

    receive() external payable {}
}
