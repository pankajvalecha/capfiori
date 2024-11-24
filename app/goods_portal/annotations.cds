using CatalogService as service from '../../srv/schema';

annotate service.Materials with @odata.draft.enabled;

annotate service.Materials with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'stock',
                Value : stock,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'title',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'stock',
            Value : stock,
        },
        {
            $Type : 'UI.DataField',
            Value : supplier.name,
            Label : 'name',
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'CatalogService.addStockQuantity',
            Label : '{i18n>Addstockquantity}',
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'CatalogService.removeStockQuantity',
            Label : '{i18n>Removestockquantity}',
        },
    ],
    UI.SelectionFields : [
        stock,
        title,
    ],
);

annotate service.Materials with {
    supplier @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Suppliers',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : supplier_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name',
            },
        ],
    }
};

annotate service.Materials with {
    stock @Common.Label : '{i18n>Stock}'
};

annotate service.Materials with {
    title @Common.Label : 'title'
};

annotate service.Materials with @UI: {
    CreateHidden: false,
    DeleteHidden: false,
};

annotate service.Suppliers with @(
    UI.LineItem #tableMacro : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : name,
            Label : 'name',
        },
    ]
);

