tag @s add success
execute if entity @s[advancements={medabots_server:wave_1/get_all_medabots/yuchitang={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/yuchitang={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 265"},"with":[{"translate":"medabots_server:entity.yuchitang","extra":[{"text":" "},{"translate":"medabots_server:item.yuchitang_smacker"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/yuchitang={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 266"},"with":[{"translate":"medabots_server:entity.yuchitang","extra":[{"text":" "},{"translate":"medabots_server:item.yuchitang_minus_diver"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/yuchitang={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 267"},"with":[{"translate":"medabots_server:entity.yuchitang","extra":[{"text":" "},{"translate":"medabots_server:item.yuchitang_plus_diver"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/yuchitang={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 268"},"with":[{"translate":"medabots_server:entity.yuchitang","extra":[{"text":" "},{"translate":"medabots_server:item.yuchitang_power_diver"}]},{"text":"100"}]}
tag @s add final