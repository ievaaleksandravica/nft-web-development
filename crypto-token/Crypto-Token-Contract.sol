// pragma solidity defines our compiler version for Solidity
// the uptick arrow defines a range compile version after the non zero digit upwards to the next increment of the non zero number
pragma solidity ^0.8.4;

// in Solidity everyhing is explicitly declared
contract Token {
    uint256 private tokens = 400;
    address public minter;

    constructor() {
        minter = msg.sender;
    }
}
