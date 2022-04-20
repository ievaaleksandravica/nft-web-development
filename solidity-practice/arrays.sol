pragma solidity >=0.7.0 <0.9.0;

contract learnArrays {
    uint256[] public myArray;
    uint256[] public myArray2;
    uint256[200] public myFixedSizedArray;
    uint256[] public changeArray;

    // push()
    function push(uint256 number) public {
        myArray.push(number);
    }

    function pop() public {
        myArray.pop();
    }

    function getLength() public view returns (uint256) {
        return myArray.length;
    }

    function remove(uint256 i) public {
        delete myArray[i];
    }

    function removeElement(uint256 i) public {
        uint256 lastIndex = myArray.length - 1;
        myArray[i] = myArray[lastIndex];
        myArray[lastIndex] = myArray[i];
        myArray.pop();
    }

    function test() public {
        changeArray.push(1);
        changeArray.push(2);
        changeArray.push(3);
        changeArray.push(4);
    }
}
