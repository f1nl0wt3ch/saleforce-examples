@isTest
public class TheFirstTestClass {

    @isTest static void TheFirstTestClass() {
        Lead lead = new Lead();
        lead.FirstName = 'Thinh';
        lead.LastName = 'Dinh';
        lead.Company = 'Capgemini';
        insert lead;

        lead.Company = 'Telia';
        update lead;
    }

}
