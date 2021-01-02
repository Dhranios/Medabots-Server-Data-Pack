tag @s add success
execute if entity @s[advancements={medabots_server:get_all_medabots/wave_1/peppercat={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman","color":"green"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman","color":"green"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/peppercat={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 188"},"with":[{"translate":"medabots_server:item.peppercat_lightcircuit.model","extra":[{"text":" "},{"translate":"medabots_server:entity.peppercat"},{"text":" "},{"translate":"medabots_server:item.peppercat_lightcircuit"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/peppercat={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 187"},"with":[{"translate":"medabots_server:item.peppercat_lightjump.model","extra":[{"text":" "},{"translate":"medabots_server:entity.peppercat"},{"text":" "},{"translate":"medabots_server:item.peppercat_lightjump"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/peppercat={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 186"},"with":[{"translate":"medabots_server:item.peppercat_light_blow.model","extra":[{"text":" "},{"translate":"medabots_server:entity.peppercat"},{"text":" "},{"translate":"medabots_server:item.peppercat_light_blow"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/peppercat={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 185"},"with":[{"translate":"medabots_server:item.peppercat_quick_alert.model","extra":[{"text":" "},{"translate":"medabots_server:entity.peppercat"},{"text":" "},{"translate":"medabots_server:item.peppercat_quick_alert"}]},{"text":"100"}]}