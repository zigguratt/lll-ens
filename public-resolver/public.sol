contract PublicResolver {

    // Functions.
    function PublicResolver(address ensAddr);
    function has(bytes32 node, bytes32 kind) constant returns (bool);
    function addr(bytes32 node) constant returns (address ret);
    function content(bytes32 node) constant returns (bytes32 ret);
    function setAddr(bytes32 node, address addr);
    function setContent(bytes32 node, bytes32 addr);
}
