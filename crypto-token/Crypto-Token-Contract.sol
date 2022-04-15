// pragma solidity defines our compiler version for Solidity
// the uptick arrow defines a range compile version after the non zero digit upwards to the next increment of the non zero number
pragma solidity ^0.8.4;

// in Solidity everyhing is explicitly declared
contract Token {
    uint256 private tokens = 400;
    address public minter;
    mapping(address => uint256) public balances;

    constructor() {
        minter = msg.sender;
    }

    event Sent(address from, address to, uint256 amount);

    function mint(address receiver, uint256 amount) public {
        require(msg.sender == minter);

        balances[receiver] += amount;
    }

    function send(address receiver, uint256 amount) public {
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit Sent(msg.sender, receiver, amount);
    }
}
