public class MerchandiseUpdater {
	public static void updatePrices(Merchandise__c[] merch) {	
		for(Merchandise__c m: merch) {
			m.Price__c += 1;
		}
	}
}