using CatalogService from '../../srv/schema_srv';

annotate CatalogService.ZENGDATA1 with @(
    UI.FieldGroup #section1         : {
        Data    : [
            {
                $Type             : 'UI.DataField',
                Label			  : 'Line Length (m)',
                Value             : data7.Linlgth,
            },
            {
                $Type             : 'UI.DataField',
                Label			  : 'Insulation Thickness (mm)',
                Value             : data3.Insthk,
            },
        ]
    }
);

annotate CatalogService.ZENGDATA1 with @(
    UI.FieldGroup #section2         : {
        Data    : [
            {
                $Type             : 'UI.DataField',
                Label			  : 'Maintain Temperature (C)',
                Value             : data3.Tmpmain,
            },
            {
                $Type             : 'UI.DataField',
                Label			  : 'Pipe Heat Loss',
                Value             : data7.Piphtls,
            },
        ]
    }
);

annotate CatalogService.ZENGDATA1 with @(
    UI.FieldGroup #section3         : {
        Data    : [
            {
                $Type             : 'UI.DataField',
                Label			  : 'Cable Type',
                Value             : data3.Cbltyp,
            },
            {
                $Type             : 'UI.DataField',
                Label			  : 'Number of Passes',
                Value             : data3.Nopass,
            },
            {
                $Type             : 'UI.DataField',
                Label			  : 'Operating Current (A)',
                Value             : data3.Operc,
            },
            {
                $Type             : 'UI.DataField',
                Label			  : 'Breaker Group Factor',
                Value             : data3.Bkgrp,
            }
        ]
    }
);
annotate CatalogService.ZENGDATA1 with @(
    UI.FieldGroup #section4         : {
        Data    : [
            {
                $Type             : 'UI.DataField',
                Label			  : 'Heat Output (W/m)',
                Value             : data7.Heatout,
            },
            {
                $Type             : 'UI.DataField',
                Label			  : 'Total Circuit Length (m)',
                Value             : data3.Totcircl,
            },
            {
                $Type             : 'UI.DataField',
                Label			  : 'Inrush Current (A)',
                Value             : data3.Inrcur,
            },
            {
                $Type             : 'UI.DataField',
                Label			  : 'Power PT on Pipe',
                Value             : data3.Pwrpt,
            }
        ]
    }
);
annotate CatalogService.ZENGDATA_LIN with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : Linno
        },
        {
            $Type : 'UI.DataField',
            Value : Etno
        },
    ],
);
