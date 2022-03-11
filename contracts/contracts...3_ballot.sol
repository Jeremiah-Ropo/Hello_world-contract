// SPDX-License-Identifier:MIT

pragma solidity >=0.7.0 <0.9.0;

contract Greeting {
    string public name;
    string public greeting = "Hello world ";

    constructor(string memory firstName){
        name = firstName;
    }

    function setName(string memory newName) public {
        name = newName;
    }

    function result() public view returns (string memory){
        return string(abi.encodePacked(greeting, name));
    }
}