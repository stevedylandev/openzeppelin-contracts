// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../contracts/mocks/AuthorityMock.sol";
import "../../contracts/access/manager/IAuthority.sol";
import "../../contracts/access/manager/IAccessManaged.sol";

contract $NotAuthorityMock is NotAuthorityMock {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    receive() external payable {}
}

contract $AuthorityNoDelayMock is AuthorityNoDelayMock {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    receive() external payable {}
}

contract $AuthorityDelayMock is AuthorityDelayMock {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    receive() external payable {}
}

contract $AuthorityNoResponse is AuthorityNoResponse {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    receive() external payable {}
}

contract $AuthorityObserveIsConsuming is AuthorityObserveIsConsuming {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    receive() external payable {}
}
