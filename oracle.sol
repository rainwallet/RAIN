
contract RainCloud{
    
    uint8 number;
    uint8 fee 18;
    
    event PayUBI(address to, uint value);
    event ReceiveFee(address from, uint value);

    function() {
        if (msg.value > 0)
            ReceiveFee(address msg.sender, msg.value);
    } 
    
    function collectUBI(address requestor) {
        //if last UBI was >= 12mo ago then fund the address
    }
}