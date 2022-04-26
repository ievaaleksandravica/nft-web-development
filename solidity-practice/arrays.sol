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
        changeArray[i] = changeArray[changeArray.length - 1];
        changeArray.pop();
    }

    function test() public {
        for (uint256 i = 1; i <= 4; i++) {
            changeArray.push(i);
        }
    }

    function getChangeArray() public view returns (uint256[] memory) {
        return changeArray;
    }
}
