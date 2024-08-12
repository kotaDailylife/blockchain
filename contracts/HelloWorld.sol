// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract HelloWorld {
  string defaultMessage;
  constructor() public{
    defaultMessage = 'Hello World';
  }
  function getMessage() public view returns(string memory){
    return defaultMessage;
  }
  function transfer(address payable _to,uint256 _amount)public payable{
    require(msg.value == _amount,"Amount sent dose not match the request amount.");
    _to.transfer(_amount);
  }
}
