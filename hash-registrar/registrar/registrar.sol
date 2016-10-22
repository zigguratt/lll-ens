contract Registrar {

    // Functions.
    function Registrar(address _ens, bytes32 _rootNode);
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

    // Events.
    event AuctionStarted(bytes32 hash, uint auctionExpiryDate);
    event NewBid(bytes32 hash, uint deposit);
    event BidRevealed(bytes32 hash, address owner, uint value, uint8 status);
    event HashRegistered(bytes32 hash, address owner, uint value, uint averagePrice, uint averagePeriod);
    event HashRenewed(bytes32 hash, uint oldValue, uint newValue, uint renewalDate);
    event HashReleased(bytes32 hash, uint value);
}
