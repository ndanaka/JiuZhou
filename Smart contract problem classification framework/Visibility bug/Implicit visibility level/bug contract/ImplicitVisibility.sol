pragma solidity 0.4.24;

//based on swc

contract NoVisitLevel {
    uint storeduint1 = 15;
    uint constant constuint = 16;
    uint32 investmentsDeadlineTimeStamp = uint32(now); 

    bytes16 string1 = "test1"; 
    bytes32 string2 = "test1236"; 
    string  string3 = "lets string something"; 

    mapping (address => uint)  uints1; 
    mapping (address => DeviceData) structs1; 

    uint[] uintarray; 
    DeviceData[] deviceDataArray; 

    struct DeviceData {
        string deviceBrand;
        string deviceYear;
        string batteryWearLevel;
    }
    
    constructor() public{
        
    }
    
    function getConstuint() returns(uint256){
        return constuint;
    }
}
