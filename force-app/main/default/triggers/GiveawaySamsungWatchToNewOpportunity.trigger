trigger GiveawaySamsungWatchToNewOpportunity on Opportunity (after insert) {
    for(Opportunity opp : Trigger.new) {
        System.debug('Opportunity name: '+ opp.Name);
        if(opp.Amount > 3000){
            Task t = new Task();
            t.Subject = 'Giveaway Samsung Watch';
            t.Description = 'Send them one ASAP';
            t.Priority = 'High';
            t.WhatId = opp.Id;
            insert t;
        }
    }
}