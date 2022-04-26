pragma solidity >=0.7.0 <0.9.0;

contract X {
    function y() public view virtual returns (string memory) {}
}

contract Z is X {
    function y() public view override returns (string memory) {
        return "hello";
    }
}
