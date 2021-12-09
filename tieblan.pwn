public OnGameModeInit()
{
  cef_subscribe("btn:buy_veh", "AutoSalonButtonBuy");
}

forward AutoSalonButtonBuy(player_id, const arg[]);
public AutoSalonButtonBuy(player_id, const arg[])
{
   // тебе это не надо , не вырос еще extract arg -> new id_btn_vehicle;
   
   SCM(player_id, -1, "Тут покупка и делай че хочешь, но я те скажу что так работать не будет! т.к надо передавать ид машины и его цену в JS код, затем их отправлять сюда и делать покупку спасибо");
   return true;
}
//хз где будешь вызывать
stock SetDataVehicleInfo(player_id, veh_name[], const price)
{
    cef_emit_event(player_id, "data:param", CEFSTR(veh_name), CEFINT(price)); 

}
public OnPlayerSpawn(playerid)
{
  cef_create_browser(player_id, 1, "/*    */", false, true);
}
cmd:buycar(player_id)
{
   SetDataVehicleInfo(player_id, "Porsche Cain", 10000000);

}
