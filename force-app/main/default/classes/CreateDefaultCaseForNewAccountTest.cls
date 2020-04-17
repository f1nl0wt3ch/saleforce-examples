@isTest
public class CreateDefaultCaseForNewAccountTest {
    @isTest static void CreateDefaultCaseForNewAccountTest() {
        Account acc = new Account();
        acc.Name = 'The forth account';
        insert acc;
    }
}
