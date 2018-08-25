pragma solidity ^0.4.24;


contract  Lottoreum {
    uint balance;
    struct Lotto{
        uint id; //เลขหวย
        uint gain; // อัตราต่อรอง
        uint balance ; //งวดที่
        bool avaiable;
    }
    
    Lotto[]  lottos;   
    uint nonce = 0;
    
    
    function rand(uint min, uint max) returns (uint){
        nonce++;
        return uint(sha3(nonce))%(min+max)-min;
    }

    constructor() public { // constructure is called once it is deployed to blockchain
        balance = 100; //initial balance
        generateLottos(5);

    }
    
    function setBalance(uint newBalance) public {
        balance = newBalance;
    }
    
    function getBalance() public view returns (uint) {
        return balance;
    }
    
    
    function generateLottos(uint maxLotto) public{
        for(uint i=1;i<maxLotto;i++){
            Lotto lot; 
            lot.id = i;
            lot.gain = i*10;
            lot.balance = i*100;
            lot.avaiable = true;
            lottos.push(lot);
        }
        
    }
    
    function getLottobyID(uint i) public returns(uint id, uint gain, uint balance,bool avaiable ){

           return (lottos[i].id,lottos[i].gain,lottos[i].balance,lottos[i].avaiable);
    }
    
}
 


