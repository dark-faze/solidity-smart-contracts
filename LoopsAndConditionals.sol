pragma solidity ^0.8.0;

contract LoopsAndConditionals {
    // If-Else

    function isEvenNumber(uint _number) public view returns(bool) {
        if(_number & 2 == 0) {
            return true;
        }else{
            return false;
        }
    }

    uint[] public arr = [1,2,3,4,5,6];
    
    function addnums() public view returns (uint) {
       uint count = 0;
       for(uint i = 0 ; i < arr.length; i++){
           count = count + arr[i];
       }
       return count;
    }
    
}