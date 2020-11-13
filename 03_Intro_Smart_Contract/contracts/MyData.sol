pragma solidity ^0.5.16;

contract MyData {
  uint myVariable;

  function set(uint x) public {
    myVariable = x;
  }

  function get() view public returns (uint) {
    return myVariable;
  }
}