tag @s add success
tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.medapart.several"}]}
tellraw @s {"clickEvent":{"action":"run_command","value":"/trigger ShopIndex4 set 7"},"translate":"medabots_server:entity.magolor"}}
tellraw @s {"clickEvent":{"action":"run_command","value":"/trigger ShopIndex4 set 8"},"translate":"medabots_server:entity.metal_general"}}
tellraw @s {"clickEvent":{"action":"run_command","value":"/trigger ShopIndex4 set 10"},"translate":"medabots_server:entity.sphere_doomers"}}
scoreboard players set @s ShopIndex4 -1
scoreboard players enable @s ShopIndex4