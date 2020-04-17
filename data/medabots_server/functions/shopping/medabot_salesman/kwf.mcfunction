tag @s add success
execute if entity @s[advancements={medabots_server:get_all_medabots/wave_1/ashton={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman","color":"green"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman","color":"green"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/ashton={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 36"},"with":[{"translate":"medabots_server:item.ashton_booster_head.model","extra":[{"text":" "},{"translate":"medabots_server:entity.ashton"},{"text":" "},{"translate":"medabots_server:item.ashton_booster_head"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/ashton={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 35"},"with":[{"translate":"medabots_server:item.ashton_ash_breaker.model","extra":[{"text":" "},{"translate":"medabots_server:entity.ashton"},{"text":" "},{"translate":"medabots_server:item.ashton_ash_breaker"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/ashton={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 34"},"with":[{"translate":"medabots_server:item.ashton_ash_buster.model","extra":[{"text":" "},{"translate":"medabots_server:entity.ashton"},{"text":" "},{"translate":"medabots_server:item.ashton_ash_buster"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/ashton={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 33"},"with":[{"translate":"medabots_server:item.ashton_ash_leg.model","extra":[{"text":" "},{"translate":"medabots_server:entity.ashton"},{"text":" "},{"translate":"medabots_server:item.ashton_ash_leg"}]},{"text":"100"}]}
tag @s add final