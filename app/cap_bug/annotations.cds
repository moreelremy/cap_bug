using BillingService as service from '../../srv/cat-service';
annotate service.Document with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>BillingDocument}',
                Value : BillingDocument,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>SdDocumentCategory}',
                Value : SDDocumentCategory,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>BillingDocumentCategory}',
                Value : BillingDocumentCategory,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>BillingDocumentType}',
                Value : BillingDocumentType,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>CreatedByUser}',
                Value : CreatedByUser,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>PayerParty}',
                Value : PayerParty,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : '{i18n>GeneralInformation}',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Target: '_Item/@UI.LineItem',
            Label : '{i18n>FacetBillingDocumentItems}'
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>BillingDocument}',
            Value : BillingDocument,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>SdDocumentCategory}',
            Value : SDDocumentCategory,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>BillingDocumentCategory}',
            Value : BillingDocumentCategory,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>BillingDocumentType}',
            Value : BillingDocumentType,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>CreatedByUser}',
            Value : CreatedByUser,
        },
        {
            $Type : 'UI.DataField',
            Value : PayerParty,
            Label : '{i18n>PayerParty}',
        },
    ],
);

annotate service.DocumentItems with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>BillingDocument}',
            Value : BillingDocument,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>BillingDocumentItem}',
            Value : BillingDocumentItem,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>BillingDocumentItemIn}',
            Value : BillingDocumentItemInPartSgmt,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>BillingDocumentItemText}',
            Value : BillingDocumentItemText,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>CreatedByUser}',
            Value : CreatedByUser,
        },
    ],
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>GeneralInformation}',
            ID : 'i18nGeneralInformation',
            Target : '@UI.FieldGroup#i18nGeneralInformation',
        },
    ],
    UI.FieldGroup #i18nGeneralInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    },
);