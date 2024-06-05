// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyToken {

    string public Token_Namre = "Berry";
    string public Token_Abbrv = "BRY";
    uint public Total_Supply;

    mapping(address => uint) public balances;

   function mint(address Address, uint value) public {
      Total_Supply += value;
      balances[Address] +=value;
    }

    function burn(address Address, uint value) public {
      if(balances[Address]>= value) {
      Total_Supply -= value;
      balances[Address] -=value;
      }
      
    }

}
