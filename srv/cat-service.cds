using {sap_s4_CE_BILLINGDOCUMENT_0001_v1 as external} from './external/sap-s4-CE_BILLINGDOCUMENT_0001-v1';

service Billing {
    @cds.persistence.skip
    entity Document as projection on external.BillingDocument;
}