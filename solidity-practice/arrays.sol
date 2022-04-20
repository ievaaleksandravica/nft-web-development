pragma solidity >=0.7.0 <0.9.0;

contract learnArrays {
    uint256[] public myArray;
    uint256[] public myArray2;
    uint256[200] public myFixedSizedArray;

    // push()
    function push(uint256 number) public {
        myArray.push(number);
    }

    function pop() public {
        myArray.pop();
    }
}
