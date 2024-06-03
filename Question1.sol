// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PrimeOwner {
    address public owner;
    
    event OwnerChanged(address indexed newOwner);

    function changeOwnerIfPrime(uint256 _number) public {
        require(_number >0 , "Number must be greater than 0");
        
        if(isPrime(_number)){
        
        owner = msg.sender;
        
        emit OwnerChanged(msg.sender);
        }
    }

   function isPrime(uint256 _number) private pure returns (bool) {
        if (_number <= 1) {
            return false;
        }
        if (_number <= 3) {
            return true;
        }
        if (_number % 2 == 0 || _number % 3 == 0) {
            return false;
        }
        for (uint256 i = 5; i * i <= _number; i = i + 6) {
            if (_number % i == 0 || _number % (i + 2) == 0) {
                return false;
            }
        }
        return true;
    }
}

      
