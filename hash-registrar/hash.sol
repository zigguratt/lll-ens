contract Deed;
    function Deed();
    function setOwner(address newOwner) onlyRegistrar;
    function setBalance(uint newValue) onlyRegistrar onlyActive;
    function closeDeed(uint refundRatio) onlyRegistrar onlyActive;
    function destroyDeed();
}

contract Registrar;
    function Registrar(address _ens, bytes32 _rootNode);
    function max(uint a, uint b) internal constant returns (uint max);
    function min(uint a, uint b) internal constant returns (uint min);
    function startAuction(bytes32 _hash);
    function startAuctions(bytes32[] _hashes);
    function shaBid(bytes32 hash, address owner, uint value, bytes32 salt) constant returns (bytes32 sealedBid);
    function newBid(bytes32 sealedBid) payable;
    function unsealBid(bytes32 _hash, address _owner, uint _value, bytes32 _salt) ;
    function cancelBid(bytes32 seal);
    function finalizeAuction(bytes32 _hash);
    function updatedValue(bytes32 _hash) constant returns (uint updatedPrice);
    function renewDeed(bytes32 _hash) payable;
    function transfer(bytes32 _hash, address newOwner) onlyOwner(_hash);
    function releaseDeed(bytes32 _hash) onlyOwner(_hash);
}
