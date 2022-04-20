pragma solidity >=0.7.0 <0.9.0;

contract decisionMaking {
    uint256 public oranges = 5;
    uint256 public stakingWallet = 10;

    function validateOranges() public view returns (bool) {
        if (oranges == 5) {
            return true;
        } else {
            return false;
        }
    }

    function airDrop() public view nonpayable returns (uint256) {
        if (stakingWallet == 10) {
            stakingWallet = stakingWallet + 10;
            return stakingWallet;
        } else {
            stakingWallet = stakingWallet + 1;
            return stakingWallet;
        }
    }
}
