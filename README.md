# Token Creation and Management Smart Contract

## Description

This is Solidity based smart contract defines a simple ERC-20- like token called **Berry**,whose abbreviation is **BRY**. It has functionalities like mint and burn the tokens, while maintaining the balance of addresses.

## Variables and Functions used

**Variables:**

1. `Token_Name` : Stores the name of the token.
   
   ```solidity
   string public Token_Namre = "Berry";
2. `Token_Abbrv` : Stores the abbreviation of the token.
   
   ```solidity
   string public Token_Abbrv = "BRY";
3. `Total_Supply` : Gives the total supply of the token.
    ```solidity
   uint public Total_Supply;
   
**Mapping**

 - `balances` :A mapping from addresses to their respective balances.
   
    ```solidity
   mapping(address => uint) public balances;

**Functions:**

1. `mint` : Increases the total supply and the balance of the given address by the given value.
   
   ```solidity
   function mint(address Address, uint value) public {
      Total_Supply += value;
      balances[Address] +=value;
    } 
3. `burn` : Increases the total supply and the balance of the given address by the given value if the sufficient amount is present.
    ```solidity
   function burn(address Address, uint value) public {
      Total_Supply -= value;
      balances[Address] -=value;
    } 
   
  `Parameters of the Functions:`
  1. `Address` : Address to which the tokens will be minted.
  2. `value` : Amount of token to mint.

## Functionalities

1. **Minting Tokens :**
  - Mint the given amount of the tokens to the given address.
2. **Burning Tokens :**
  - Burn the given amount of the tokens to the given address.
3. **Check Balances :**
  - Check the amount of token present at the given address.

## Getting Started

**Steps to run this code :** 

1. Open remix IDE.
2. Create a new file.
3. Copy the code from Token_Maker.sol.
4. Paste that code in your new file.
5. Compile the code.
6. Deploy the contract.

## License

This project is UNLICENSED.
