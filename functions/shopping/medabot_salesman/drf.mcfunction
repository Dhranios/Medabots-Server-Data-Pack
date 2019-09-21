tag @s add success
execute if entity @s[advancements={medabots_server:get_all_medabots/wave_1/dragonbeetle={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/dragonbeetle={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 85"},"with":[{"translate":"medabots_server:entity.dragonbeetle","extra":[{"text":" "},{"translate":"medabots_server:item.dragonbeetle_flyfly"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/dragonbeetle={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 86"},"with":[{"translate":"medabots_server:entity.dragonbeetle","extra":[{"text":" "},{"translate":"medabots_server:item.dragonbeetle_veryweighter"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/dragonbeetle={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 87"},"with":[{"translate":"medabots_server:entity.dragonbeetle","extra":[{"text":" "},{"translate":"medabots_server:item.dragonbeetle_heavyweighter"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/dragonbeetle={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 88"},"with":[{"translate":"medabots_server:entity.dragonbeetle","extra":[{"text":" "},{"translate":"medabots_server:item.dragonbeetle_hardweighter"}]},{"text":"100"}]}
tag @s add final