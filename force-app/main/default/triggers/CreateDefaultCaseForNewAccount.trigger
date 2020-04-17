trigger CreateDefaultCaseForNewAccount on Account (after insert) {
    for(Account acc : Trigger.new){
        Case c = new Case();
        c.Subject = 'On boarding course for new employee';
        c.OwnerId = '0055I000000u7qEQAQ';
        c.AccountId = acc.Id;
        insert c;
    }
}