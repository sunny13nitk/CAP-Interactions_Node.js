using app.interactions from '../db/interactions';
//Adding Calculation view Source ref
using V_INTERACTION from '../db/interactions';

service CatalogService 
{

    @requires: 'authenticated-user'
    entity Interactions_Header
        as projection on interactions.Interactions_Header;

    @requires: 'Admin'
    @restrict: [{ grant: 'READ', where: 'LANGU = ''DE'''}]
    entity Interactions_Items
        as projection on  interactions.Interactions_Items;

    @readonly
    entity V_interaction  as projection on V_INTERACTION;    

    function sleep() returns Boolean;

}
