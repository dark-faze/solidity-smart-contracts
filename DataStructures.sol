pragma solidity ^0.8.0;

contract DataStructures {


//Arrays And Strings

   uint[] public arr = [1,2,3];
   string[] public stringArr = ["Naruto" , "Levi" , "Gojo"];
   string[] public stringNew ;
   //2D Arrays

   uint[][] public array2D = [ [1,2,3] , [4,5,6] ];

   function addValue(string memory _value) public {
       stringArr.push(_value);
   } 

// Maps

   mapping(uint => Anime) public animeMap;

   struct Anime {
       string name;
       string mc;
   }
   
   function addAnime(uint _i , string memory _name , string memory _mc) public{
       animeMap[_i] = Anime(_name , _mc);
   }

// Nested Maping

   mapping(address => mapping(uint => Anime)) public AnimeSeq;

   function addAnimeSeq(uint _i , string memory _name , string memory _mc) public{
       AnimeSeq[msg.sender][_i] = Anime(_name , _mc);
   }

}