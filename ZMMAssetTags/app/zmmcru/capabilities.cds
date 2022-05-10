using CatalogService from '../../srv/schema_srv';

annotate CatalogService.ZENGDATA1 with @odata.draft.enabled; 
annotate service1.RootEntities with @(
    //Disables the delete option dependent of the fields value
    Capabilities.DeleteRestrictions : {
        Deletable   : false, //Search-Term: #DynamicCRUD
    },
     Capabilities.UpdateRestrictions : {
        Updatable : updatePossible, //UpdateRestrictions are ignored in determining if the edit button is visible or not, but it still affects wheather the fields are editable or not
    }
);
annotate CatalogService.ZENGDATA3 with @odata.draft.enabled;
annotate CatalogService.ZENGDATA7 with @odata.draft.enabled;
annotate CatalogService.ZENGDATA_LIN with @odata.draft.enabled;