trigger UpdaterTrigger on Merchandise__c (before insert) {
	Merchandise__c[] merch = Trigger.new;
	MerchandiseUpdater.updatePrices(merch);
}