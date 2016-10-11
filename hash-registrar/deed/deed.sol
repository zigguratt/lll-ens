contract Deed {

    // Functions.
    function Deed();
    function setOwner(address newOwner) onlyRegistrar;
    function setBalance(uint newValue) onlyRegistrar onlyActive;
    function closeDeed(uint refundRatio) onlyRegistrar onlyActive;
    function destroyDeed();

    // Events.
    event OwnerChanged(address newOwner);
    event DeedClosed();
}
