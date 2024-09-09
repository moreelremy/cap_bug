using {sap_s4_CE_BILLINGDOCUMENT_0001_v1 as external} from './external/sap-s4-CE_BILLINGDOCUMENT_0001-v1';

service BillingService {
    entity Document as select from external.BillingDocument;
    entity DocumentItems as select from external.BillingDocumentItem {
        *,
        _BillingDocument : redirected to Document
    };
}

annotate BillingService with @(requires: 'admin');