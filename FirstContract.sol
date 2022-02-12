pragma solidity ^0.8.0;

contract FirstContract {

    //uint is unsigned integer
    uint count;
    
    // Runs only once when the contract will be deployed 
    // to the Blockchain. We can also not use a constructor
    // and just initialise the count as "count = 0"
    constructor() public {
       count = 0;
    }
    
    
    // public means it's accessible from outside the contract
    // View means that we can only view and not change
    // returns has an data type specifier.
    function getCount() public view returns(uint) {
        return count;
    }

    function incrementCount() public {
        count = count + 1;
    }
}
