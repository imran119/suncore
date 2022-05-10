using {edm as schema} from '../../db/schema';

annotate schema.ZENGDATA1a with {
    Tagno                 @title : 'Tag No';
    Tgroup                 @title : 'Tag Group';
    Tdesc                 @title : 'Tag Desc';
}