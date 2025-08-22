// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../../../contracts/mocks/account/utils/ERC7579UtilsMock.sol";
import "../../../../contracts/account/utils/draft-ERC7579Utils.sol";
import "../../../../contracts/interfaces/draft-IERC7579.sol";
import "../../../../contracts/utils/Packing.sol";
import "../../../../contracts/utils/Address.sol";
import "../../../../contracts/interfaces/draft-IERC4337.sol";
import "../../../../contracts/utils/Errors.sol";

contract $ERC7579UtilsGlobalMock is ERC7579UtilsGlobalMock {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    function $eqCallTypeGlobal(CallType callType1,CallType callType2) external pure returns (bool ret0) {
        (ret0) = super.eqCallTypeGlobal(callType1,callType2);
    }

    function $eqExecTypeGlobal(ExecType execType1,ExecType execType2) external pure returns (bool ret0) {
        (ret0) = super.eqExecTypeGlobal(execType1,execType2);
    }

    function $eqModeSelectorGlobal(ModeSelector modeSelector1,ModeSelector modeSelector2) external pure returns (bool ret0) {
        (ret0) = super.eqModeSelectorGlobal(modeSelector1,modeSelector2);
    }

    function $eqModePayloadGlobal(ModePayload modePayload1,ModePayload modePayload2) external pure returns (bool ret0) {
        (ret0) = super.eqModePayloadGlobal(modePayload1,modePayload2);
    }

    receive() external payable {}
}
