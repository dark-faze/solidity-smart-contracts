pragma solidity ^0.8.0;

contract Ownable {
    address public owner;
    
     constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner , "Must be an Ownder");
        _;
    }
}

contract SecretVault {
    string secret;

    constructor(string memory _secret) public {
        secret = _secret;
    }

    function getSecret() public view returns(string memory) {
        return secret;
    }
}

contract Inheritance is Ownable{
    address secretvaultadd;
    
    constructor(string memory _secret) public {

        //Instantites the contract
        SecretVault _secretvault = new SecretVault(_secret);

        //Stores the address of where _secretvault is 
        secretvaultadd = address(_secretvault);
        super;
    }

    function getSecret() public view onlyOwner returns(string memory) {
        SecretVault _secretvault = SecretVault(secretvaultadd);
        return _secretvault.getSecret();
    }

}