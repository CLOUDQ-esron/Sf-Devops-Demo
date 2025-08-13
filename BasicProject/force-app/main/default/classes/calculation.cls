public with sharing class calculation {
    @AuraEnabled(cacheable=true)
    public static Decimal calculateTotal(Decimal price, Integer quantity) {
        if (price == null || quantity == null || quantity < 0) {
            throw new AuraHandledException('Invalid input values');
        }
        return price * quantity;
    }

    @AuraEnabled(cacheable=true)
    public static Decimal calculateDiscount(Decimal total, Decimal discountRate) {
        if (total == null || discountRate < 0 || discountRate > 100) {
            throw new AuraHandledException('Invalid values give proper attrivutes');
        }
    }

}
