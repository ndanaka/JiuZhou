pragma solidity 0.5.0;

//based on not-so-smart-contract

contract Overflow {
    uint private sellerBalance=0;
    
  constructor() public{
      
  }
    
    function add(uint value) public returns (bool){
        sellerBalance += value; 
    } 
}