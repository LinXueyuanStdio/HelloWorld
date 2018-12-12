pragma solidity ^0.5.0;

contract HelloWorld {

  mapping (address => string) helloworld;

  function sendHelloWorld(address hello, string memory world) public{
    helloworld[hello] = world;
  }

  function readHelloWorld() public view returns (string memory){
    return helloworld[msg.sender];
  }

}