pragma solidity 0.5.0;

contract WrongName{
    uint256 public constant betprice = 0.1 ether;   //should be uppercase and use _ to connect two words
    address[] public users;
    event bet(address indexed _user);   //the 1st char should be uppercase 
    
    //the 1st char should be lowercase
    function Bet() external payable{
        require(msg.value == betprice);
        users.push(msg.sender);
        emit bet(msg.sender);
    }
}