/*
  Author: BarboneDiLusso
  steam : http://steamcommunity.com/id/barbonedilusso
  gitHub : https://github.com/LucaM97/Arma3_BDL_Functions

  Description : open or close house doors

  param1 - obj : house
  param2 - int : 0 or 1  //0 = close
                         //1 = open

  Example :
    [cursorObject, 1] call BDL_openHouseDoors;
*/

BDL_openHouseDoors = {
  _target = _this select 0;
  _open = _this select 1;

  _config = configFile >> "CfgVehicles" >> (typeof cursorObject) >> "AnimationSources";
  {
   _target animateSource [((format["%1",_x] splitString "/") select 4),_open];
  }forEach configProperties [_config, "isClass _x"];
}
