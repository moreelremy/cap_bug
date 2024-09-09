using {sap_s4_CE_BILLINGDOCUMENT_0001_v1 as external} from './external/sap-s4-CE_BILLINGDOCUMENT_0001-v1';

service BillingService {
    entity Document      as
        projection on external.BillingDocument {
            *,
            _Item : redirected to DocumentItems
        };

    entity DocumentItems as projection on external.BillingDocumentItem {
        *,
        _BillingDocument : redirected to Document
    };

    annotate Document with @(restrict: [{
        grant: ['READ'],
        to   : 'CustomerBasic',
        where: 'PayerParty = $user.customerId'
    }]);

    annotate DocumentItems with @(restrict: [{
        grant: ['READ'],
        to   : 'CustomerBasic',
        where: '_BillingDocument.PayerParty = $user.customerId'
    }]);

}
