var Lottoreum = artifacts.require("./Lottoreum.sol");
 
module.exports = function(deployer) {
//deployer.deploy(SafeMath);
//deployer.link(SafeMath, Token);
deployer.deploy(Lottoreum);
};
