 // SPDX-License-Identifier: MIT
 pragma solidity ^0.8.1;

 contract MoodDiary{
  string mood;
  
  // Function to set Mood
  function setMood(string memory _mood) public{
     mood = _mood;
    }
  
  //Function to Get Mood
  function getMood() public view returns(string memory){
     return mood;
    }

 }