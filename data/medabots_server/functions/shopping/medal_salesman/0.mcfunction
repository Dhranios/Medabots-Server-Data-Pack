tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman","color":"green"},{"translate":"medabots_server:message.shop.medal"}]}
tellraw @s [{"text":"A","clickEvent":{"action":"run_command","value":"/trigger ShopIndex1 set 1"}},{"text":" "},{"text":"B","clickEvent":{"action":"run_command","value":"/trigger ShopIndex1 set 2"}},{"text":" "},{"text":"C","clickEvent":{"action":"run_command","value":"/trigger ShopIndex1 set 3"}},{"text":" "},{"text":"D","clickEvent":{"action":"run_command","value":"/trigger ShopIndex1 set 4"}},{"text":" "},{"text":"E","clickEvent":{"action":"run_command","value":"/trigger ShopIndex1 set 5"}},{"text":" "},{"text":"F","clickEvent":{"action":"run_command","value":"/trigger ShopIndex1 set 6"}},{"text":" "},{"text":"G","clickEvent":{"action":"run_command","value":"/trigger ShopIndex1 set 7"}},{"text":" "},{"text":"H","clickEvent":{"action":"run_command","value":"/trigger ShopIndex1 set 8"}},{"text":" "},{"text":"I","clickEvent":{"action":"run_command","value":"/trigger ShopIndex1 set 9"}},{"text":" "},{"text":"J","clickEvent":{"action":"run_command","value":"/trigger ShopIndex1 set 10"}},{"text":" "},{"text":"K","clickEvent":{"action":"run_command","value":"/trigger ShopIndex1 set 11"}},{"text":" "},{"text":"L","clickEvent":{"action":"run_command","value":"/trigger ShopIndex1 set 12"}},{"text":" "},{"text":"M","clickEvent":{"action":"run_command","value":"/trigger ShopIndex1 set 13"}},{"text":" "},{"text":"N","clickEvent":{"action":"run_command","value":"/trigger ShopIndex1 set 14"}},{"text":" "},{"text":"O","clickEvent":{"action":"run_command","value":"/trigger ShopIndex1 set 15"}},{"text":" "},{"text":"P","clickEvent":{"action":"run_command","value":"/trigger ShopIndex1 set 16"}},{"text":" "},{"text":"Q","clickEvent":{"action":"run_command","value":"/trigger ShopIndex1 set 17"}},{"text":" "},{"text":"R","clickEvent":{"action":"run_command","value":"/trigger ShopIndex1 set 18"}},{"text":" "},{"text":"S","clickEvent":{"action":"run_command","value":"/trigger ShopIndex1 set 19"}},{"text":" "},{"text":"T","clickEvent":{"action":"run_command","value":"/trigger ShopIndex1 set 20"}},{"text":" "},{"text":"U","clickEvent":{"action":"run_command","value":"/trigger ShopIndex1 set 21"}},{"text":" "},{"text":"V","clickEvent":{"action":"run_command","value":"/trigger ShopIndex1 set 22"}},{"text":" "},{"text":"W","clickEvent":{"action":"run_command","value":"/trigger ShopIndex1 set 23"}},{"text":" "},{"text":"X","clickEvent":{"action":"run_command","value":"/trigger ShopIndex1 set 24"}},{"text":" "},{"text":"Y","clickEvent":{"action":"run_command","value":"/trigger ShopIndex1 set 25"}},{"text":" "},{"text":"Z","clickEvent":{"action":"run_command","value":"/trigger ShopIndex1 set 26"}},{"text":" "},{"text":"!","clickEvent":{"action":"run_command","value":"/trigger ShopIndex1 set 27"}},{"text":" "},{"text":"?","clickEvent":{"action":"run_command","value":"/trigger ShopIndex1 set 28"}}]
scoreboard players set @s ShopIndex1 -1
scoreboard players set @s ShopIndex2 -1
scoreboard players enable @s ShopIndex1