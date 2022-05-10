using {edm as schema} from '../../db/schema';

annotate schema.ZENGDATA1a with {
        Tgroup @(Common : {
        ValueListWithFixedValues: true,
        ValueList       : {
            Label          : 'TagGroup',
            CollectionPath : 'ZENGDATA1',
            Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Tgroup',
                    LocalDataProperty   : 'Tgroup'
                }
                
            ]
        }
    });
} 