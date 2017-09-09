pragma solidity ^0.4.13;

contract MyContract {
    address creator;
    uint256 myNumber;

    function MyContract() {
        creator = msg.sender;
        myNumber = 3;
    }

    function getCreator() constant returns(address) {
        return creator;
    }

    function getNumber() constant returns(uint256) {
        return myNumber;
    }

    function setMyNumber(uint256 myNewNumber) {
        myNumber = myNewNumber;
    }

    function kill() {
        if (msg.sender == creator) {
            selfdestruct(creator);
        }
    }
}