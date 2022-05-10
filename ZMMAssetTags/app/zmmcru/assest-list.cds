using CatalogService from '../../srv/schema_srv';
using CatalogService.ZENGDATA1 as heat from './heat';

annotate CatalogService.ZENGDATA1 with @( 
    UI.LineItem : {
        $value : [
            {
                $Type               :   'UI.DataField',
                Value               :   Tagno
            },
            {
                $Type               :   'UI.DataField',
                Value               :   Tgroup
            },
            {
                $Type               :   'UI.DataField',
                Value               :   Tdesc
            },
        ]
    }
);

/**
    UI.SelectionFields
    Search-Term: #VisibleFilters
 */
annotate CatalogService.ZENGDATA1 with @(
    //Shown filters for the given fields after opening the application
    UI.SelectionFields : [
        Tagno,
        Tgroup
    ],
);

/**
    UI.HeaderInfo
    Search-Term: #HeaderInfo
 */
annotate CatalogService.ZENGDATA1 with @(
    UI.HeaderInfo :{
        TypeName        : 'AssetTag',
        TypeNamePlural  : 'Asset Tags',
        Title           : {
            $Type : 'UI.DataField',
            Value : Tgroup,
        },
        Description     : {
            $Type : 'UI.DataField',
            Value : Tdesc,
        }
    },
);

/**
    UI.Facets
    Search-Term: #OPContentArea
 */
annotate CatalogService.ZENGDATA1 with @(
    UI.Facets : [
        {
            $Type   : 'UI.CollectionFacet',
            ID      : 'CollectionFacet1',
            Label   : 'Core Data',
            Facets  : [
                
            ],
        },
        {
            $Type   : 'UI.CollectionFacet',
            ID      : 'collectionFacetSection',
            Label   : 'Heat',
            Facets  : [
                {
                    $Type   : 'UI.ReferenceFacet',
                    Target  : '@UI.FieldGroup#section1'
                },
                {
                    $Type   : 'UI.ReferenceFacet',
                    Target  : '@UI.FieldGroup#section2'
                },
                {
                    $Type   : 'UI.ReferenceFacet',
                    Target  : '@UI.FieldGroup#section3'
                },
                {
                    $Type   : 'UI.ReferenceFacet',
                    Target  : '@UI.FieldGroup#section4'
                },
               /* {
                    $Type   : 'UI.ReferenceFacet',
                    Target  : 'lines/@UI.LineItem',
                    Label   : 'Lines',
                }*/
            ],
        },
        {
            $Type   : 'UI.CollectionFacet',
            ID      : 'CollectionFacet3',
            Label   : 'Document Xrefs',
            Facets  : [
                
            ],
        },
        {
            $Type   : 'UI.CollectionFacet',
            ID      : 'CollectionFacet4',
            Label   : 'Administrative Data',
            Facets  : [
                
            ],
        },
    ]
);