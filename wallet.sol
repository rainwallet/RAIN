contract RainCloud{
    
    uint8 number;
    uint8 fee 18;
    
    event SendFunds(address to, uint value);
    event ReceiveFunds(address from, uint value);
    event FundOracle(address from, uint value);
    event CollectUBI();

    function() {
        if (msg.value > 0)
            //send fee to oracle wallet FundOracle(thiswallet, msg.value * fee / 100);
            //store remainder ReceiveFunds(address msg.sender, msg.value);
    }
    
    function sendFunds(address to, uint8 value) {
        //if msg.sender is owner and wallet has suffcient funds then send funds
        SendFunds(to, value);
    }
    
    function CollectUBI(uint8 givenNumber) {
        //if last UBI was >= 12mo ago then ping the oracle
    }
}