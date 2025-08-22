// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../../contracts/mocks/account/modules/ERC7579Mock.sol";
import "../../../../contracts/interfaces/draft-IERC7579.sol";
import "../../../../contracts/utils/cryptography/SignatureChecker.sol";
import "../../../../contracts/interfaces/draft-IERC4337.sol";
import "../../../../contracts/interfaces/IERC1271.sol";
import "../../../../contracts/account/utils/draft-ERC4337Utils.sol";
import "../../../../contracts/utils/cryptography/ECDSA.sol";
import "../../../../contracts/interfaces/IERC7913.sol";
import "../../../../contracts/utils/Bytes.sol";
import "../../../../contracts/utils/math/Math.sol";
import "../../../../contracts/utils/Calldata.sol";
import "../../../../contracts/utils/Packing.sol";
import "../../../../contracts/utils/Panic.sol";
import "../../../../contracts/utils/math/SafeCast.sol";

contract $ERC7579ModuleMock is ERC7579ModuleMock {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor(uint256 moduleTypeId) ERC7579ModuleMock(moduleTypeId) payable {
    }

    receive() external payable {}
}

contract $ERC7579HookMock is ERC7579HookMock {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    receive() external payable {}
}

contract $ERC7579FallbackHandlerMock is ERC7579FallbackHandlerMock {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    function $_msgAccount() external view returns (address ret0) {
        (ret0) = super._msgAccount();
    }

    function $_msgSender() external pure returns (address ret0) {
        (ret0) = super._msgSender();
    }

    function $_msgData() external pure returns (bytes memory ret0) {
        (ret0) = super._msgData();
    }

    receive() external payable {}
}

contract $ERC7579ValidatorMock is ERC7579ValidatorMock {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    receive() external payable {}
}
