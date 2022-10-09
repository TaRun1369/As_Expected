// SPDX-License-Identifier: MIT;
pragma solidity ^0.8.7;

contract MyCalculator {
    string public creator = "Tarun";
    address public owner;

    constructor(){
        owner  =msg.sender;
    }
    modifier onlyOwner(){
        require(owner == msg.sender);
        _;
    }

    function sum(int x_,int y_) public pure returns(int ){
        return x_ + y_;
    }
    function subtract(int x_,int y_) public pure returns(int ){
        return x_ - y_;
    } 
    function multiply(int x_,int y_) public pure returns(int ){
        return x_ * y_;
    }
    function division(int x_,int y_) public pure returns(int ){
        return x_ / y_;
    }

    function personalDivision(int x_,int y_) public view onlyOwner returns(int ){
        return x_/y_;
    }

}