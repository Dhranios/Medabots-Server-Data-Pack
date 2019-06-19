tag @s add success
execute if entity @s[advancements={medabots_server:wave_1/get_all_medabots/blackstag={legs=false,left_arm=false,right_arm=false,head=false},medabots_server:wave_1/get_all_medabots/dorcus={legs=false,left_arm=false,right_arm=false,head=false},medabots_server:wave_1/get_all_medabots/rokusho={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.medapart.several"}]}
tag @s remove out_of_stock
execute unless entity @s[advancements={medabots_server:wave_1/get_all_medabots/blackstag={legs=false,left_arm=false,right_arm=false,head=false}}] run tellraw @s {"clickEvent":{"action":"run_command","value":"/trigger ShopIndex4 set 5"},"translate":"medabots_server:entity.blackstag"}}
execute unless entity @s[advancements={medabots_server:wave_1/get_all_medabots/dorcus={legs=false,left_arm=false,right_arm=false,head=false}}] run tellraw @s {"clickEvent":{"action":"run_command","value":"/trigger ShopIndex4 set 6"},"translate":"medabots_server:entity.dorcus"}}
execute unless entity @s[advancements={medabots_server:wave_1/get_all_medabots/rokusho={legs=false,left_arm=false,right_arm=false,head=false}}] run tellraw @s {"clickEvent":{"action":"run_command","value":"/trigger ShopIndex4 set 9"},"translate":"medabots_server:entity.rokusho"}}
scoreboard players set @s ShopIndex4 -1
scoreboard players enable @s ShopIndex4