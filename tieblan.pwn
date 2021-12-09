public OnGameModeInit()
{
  cef_subscribe("btn:buy_veh", "AutoSalonButtonBuy");
}

forward AutoSalonButtonBuy(player_id, const arg[]);
public AutoSalonButtonBuy(player_id, const arg[])
{
   extract arg -> new string:name_car[50], price, id_btn_vehicle;
   
    //тут покупка по данным 
   return true;
}
//хз где будешь вызывать
stock SetDataVehicleInfo(player_id, veh_name[], veh_id, const price)
{
    cef_emit_event(player_id, "data:param", CEFSTR(veh_name), CEFINT(veh_id), CEFINT(price)); 

}
public OnPlayerSpawn(playerid)
{
  cef_create_browser(player_id, 1, "/*    */", false, true);
}
cmd:buycar(player_id)
{
   SetDataVehicleInfo(player_id, "Porsche Cain", 411, 10000000);

}
