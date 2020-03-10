tag @s add success
execute if entity @s[advancements={medabots_server:get_all_medabots/wave_1/arcbeetle={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman","color":"green"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman","color":"green"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/arcbeetle={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 29"},"with":[{"translate":"medabots_server:entity.arcbeetle","extra":[{"text":" "},{"translate":"medabots_server:item.arcbeetle_firework"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/arcbeetle={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 30"},"with":[{"translate":"medabots_server:entity.arcbeetle","extra":[{"text":" "},{"translate":"medabots_server:item.arcbeetle_ignition"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/arcbeetle={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 31"},"with":[{"translate":"medabots_server:entity.arcbeetle","extra":[{"text":" "},{"translate":"medabots_server:item.arcbeetle_explode"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/arcbeetle={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 32"},"with":[{"translate":"medabots_server:entity.arcbeetle","extra":[{"text":" "},{"translate":"medabots_server:item.arcbeetle_prominence"}]},{"text":"100"}]}
scoreboard players reset @s ShopIndex4