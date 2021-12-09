//ПОДПИСЫВАЙТЕ НА СОБЫТИЕ В СВОЕМ СКРИПТЕ И ПЕРЕДАВАЙ ТАМ ЗНАЧЕНИЯ

var veh_n = "";
var veh_price = 0;
//смени на свое
new client  = CefClientApiMessage(); //это тебе не надо ( мой скрипт )
client.event.subscribe("data:param", (veh_name, price) => {
      veh_n = veh_name;
      veh_price = price; 
});

//тут событие когда он нажал на кнопку, передаем в паблик

//на свое
client.event.send("btn:buy_veh", veh_n, price); 
