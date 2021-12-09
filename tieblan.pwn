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
