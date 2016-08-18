contract ENS {
    function ENS(address owner);
    function owner(bytes32 node) constant returns(address);
    function resolver(bytes32 node) constant returns(address);
    function setOwner(bytes32 node, bytes32 label, address owner);
    function setOwner(bytes32 node, address owner);
    function setResolver(bytes32 node, address resolver);
}
