tag @s add success
execute if entity @s[advancements={medabots_server:get_all_medabots/wave_1/blackbeetle={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman","color":"green"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman","color":"green"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/blackbeetle={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 5"},"with":[{"translate":"medabots_server:entity.blackbeetle","extra":[{"text":" "},{"translate":"medabots_server:item.blackbeetle_blackplace"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/blackbeetle={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 6"},"with":[{"translate":"medabots_server:entity.blackbeetle","extra":[{"text":" "},{"translate":"medabots_server:item.blackbeetle_blackblaster"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/blackbeetle={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 7"},"with":[{"translate":"medabots_server:entity.blackbeetle","extra":[{"text":" "},{"translate":"medabots_server:item.blackbeetle_blackfuser"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/blackbeetle={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 8"},"with":[{"translate":"medabots_server:entity.blackbeetle","extra":[{"text":" "},{"translate":"medabots_server:item.blackbeetle_blackbalister"}]},{"text":"100"}]}
scoreboard players reset @s ShopIndex4