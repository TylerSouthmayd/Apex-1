@isTest
private class TestCase {
	static testMethod void validateTestClass() {
		Merchandise__c m = new Merchandise__c(Name='Train', 
			Price__c=200000, Total_Inventory__c=40);
		
		System.debug('Price before update: ' + m.Price__c);
		
		insert m;
		m = [Select Price__c From Merchandise__c WHERE Id = :m.Id];
		
		System.debug('Price after update: ' + m.Price__c);
		
		System.assertEquals(200001, m.Price__c);
	}
}