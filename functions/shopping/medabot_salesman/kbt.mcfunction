tag @s add success
tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.medapart.several"}]}
tellraw @s {"clickEvent":{"action":"run_command","value":"/trigger ShopIndex4 set 4"},"translate":"medabots_server:entity.arcbeetle"}}
tellraw @s {"clickEvent":{"action":"run_command","value":"/trigger ShopIndex4 set 2"},"translate":"medabots_server:entity.blackbeetle"}}
tellraw @s {"clickEvent":{"action":"run_command","value":"/trigger ShopIndex4 set 3"},"translate":"medabots_server:entity.metabee"}}
tellraw @s {"clickEvent":{"action":"run_command","value":"/trigger ShopIndex4 set 1"},"translate":"medabots_server:entity.saikachis"}}
scoreboard players set @s ShopIndex4 -1
scoreboard players enable @s ShopIndex4