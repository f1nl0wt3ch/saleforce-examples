@isTest
public class GiveawaySamsungWatchToNewOpportunityTest {
    @isTest static void GiveawaySamsungWatchToNewOpportunityTest() {
            Opportunity opp = new Opportunity();
            opp.Name = 'Giveaway Samsung Watch';
            opp.StageName = 'Prospecting';
            opp.CloseDate = Date.newInstance(2020, 05, 01);
            opp.Amount = 2500;
            insert opp;
    }
}
