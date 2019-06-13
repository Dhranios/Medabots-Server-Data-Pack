tag @s add success
tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.medapart.several"}]}
tellraw @s {"clickEvent":{"action":"run_command","value":"/trigger ShopIndex4 set 11"},"translate":"medabots_server:entity.darknut"}}
tellraw @s {"clickEvent":{"action":"run_command","value":"/trigger ShopIndex4 set 12"},"translate":"medabots_server:entity.zant"}}
scoreboard players set @s ShopIndex4 -1
scoreboard players enable @s ShopIndex4