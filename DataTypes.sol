pragma solidity ^0.8.0;

contract DataTypes {
    // State Variables (Contract Scope)
    // Local Variables (Functional Scope) inside a function

//Data Types 
//Integer
    int public myInt = 1;
    uint public myUint = 1; 
    // Can't have a value less than 0.
    // Same as uint256.

    uint256 public myUint256 = 1; 
    // Bigger in size than uint8.

    uint8 public myUint8 = 1;

//Strings 

    string public myString = "Hello";
    bytes32 public myStr = "Hello";
    //More performance in some cases than string

//Wallet Address

    address public myAddress = 0x5Adf000000000000;

//Structures

    struct MyStruct {
        uint myInt;
        string myString;
    }

    MyStruct public myStruct = MyStruct(1, "Hello, World");

    function getVal() public pure returns(uint) {
        uint val = 1;
        return val;
    }


}