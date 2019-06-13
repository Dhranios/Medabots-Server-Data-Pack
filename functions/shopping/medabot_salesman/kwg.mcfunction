tag @s add success
tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.medapart.several"}]}
tellraw @s {"clickEvent":{"action":"run_command","value":"/trigger ShopIndex4 set 5"},"translate":"medabots_server:entity.blackstag"}}
tellraw @s {"clickEvent":{"action":"run_command","value":"/trigger ShopIndex4 set 6"},"translate":"medabots_server:entity.dorcus"}}
tellraw @s {"clickEvent":{"action":"run_command","value":"/trigger ShopIndex4 set 9"},"translate":"medabots_server:entity.rokusho"}}
scoreboard players set @s ShopIndex4 -1
scoreboard players enable @s ShopIndex4