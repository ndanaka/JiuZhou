pragma solidity 0.5.0;


/*
Although the contract specifies the whitelist for the delegate call, 
the data for the delegate call is externally controlled. The principal 
can call any function he specifies.
*/


contract delegateInjection {
  address public owner;

  constructor() public payable{
    owner = msg.sender;  
    require(msg.value > 0);
  }
  
  modifier onlyOwner{
      require(msg.sender == owner);
      _;
  }
  

  function forward(bytes memory data) public {
    owner.delegatecall(data);
  }
  
  function withdraw() external{
      require(msg.sender == owner);
      msg.sender.transfer(address(this).balance);
  }

}
