trigger CreateDefaultOpportunityAndCaseToNewAccount on Account (after insert) {
    for(Account acc : Trigger.new) {
        Opportunity opp = new Opportunity();
        opp.Amount = 3500.00;
        opp.Name = 'Depute this opportunity';
        opp.AccountId = acc.Id;
        opp.OwnerId = '0055I000000u7qEQAQ';
        opp.StageName = 'Closed';
        opp.CloseDate = DATE.newInstance(2020, 04, 20);
        insert opp;
        
        Case c = new Case();
        c.Subject = 'Dedupe this account';
        c.AccountId = acc.Id;
        c.OwnerId = '0055I000000u7qEQAQ';
        insert c;
    }
}