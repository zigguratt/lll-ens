contract PublicResolver {

    // Functions.
    function PublicResolver(address ensAddr);
    function has(bytes32 node, bytes32 kind) constant returns (bool);
    function supportsInterface(bytes4 interfaceID) constant returns (bool);
    function addr(bytes32 node) constant returns (address ret);
    function setAddr(bytes32 node, address addr);
    function hash(bytes32 node) constant returns (bytes32 ret);
    function setHash(bytes32 node, bytes32 hash);
}
