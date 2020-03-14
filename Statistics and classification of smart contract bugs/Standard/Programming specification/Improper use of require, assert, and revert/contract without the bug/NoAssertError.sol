pragma solidity 0.6.4;

//from https://swcregistry.io/docs/SWC-123#requirement-simplesol


contract NoGasModel{
    uint x = 100;
    function check() external{
        uint a = gasleft();
        x = x + 1;
        uint b = gasleft();
        assert(b < a);
    }
}
