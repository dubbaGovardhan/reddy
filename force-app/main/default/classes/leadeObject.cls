public class leadeObject {
    public static void creationOfLeade(list<lead> listId){
        map<id,string> mapId = new map<id,string>();
        for(lead ld:listId){
            mapId.put(ld.Email,ld.Email);
        }
        list<contact> conList = new list<contact>();
        conList=[select id,Email from contact where Email in :mapId.values()];
        if(conList.size()>0){
            
        }
    }
}