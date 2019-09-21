tag @s add success
execute if entity @s[advancements={medabots_server:get_all_medabots/wave_1/abyss_greater={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/abyss_greater={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 13"},"with":[{"translate":"medabots_server:entity.abyss_greater","extra":[{"text":" "},{"translate":"medabots_server:item.abyss_greater_depth_sole"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/abyss_greater={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 14"},"with":[{"translate":"medabots_server:entity.abyss_greater","extra":[{"text":" "},{"translate":"medabots_server:item.abyss_greater_pro_fence"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/abyss_greater={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 15"},"with":[{"translate":"medabots_server:entity.abyss_greater","extra":[{"text":" "},{"translate":"medabots_server:item.abyss_greater_burst"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/abyss_greater={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 16"},"with":[{"translate":"medabots_server:entity.abyss_greater","extra":[{"text":" "},{"translate":"medabots_server:item.abyss_greater_enticed"}]},{"text":"100"}]}
tag @s add final