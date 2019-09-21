tag @s add success
execute if entity @s[advancements={medabots_server:get_all_medabots/wave_1/marine_killer={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/marine_killer={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 157"},"with":[{"translate":"medabots_server:entity.marine_killer","extra":[{"text":" "},{"translate":"medabots_server:item.marine_killer_fishtail"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/marine_killer={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 158"},"with":[{"translate":"medabots_server:entity.marine_killer","extra":[{"text":" "},{"translate":"medabots_server:item.marine_killer_nibble_wave"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/marine_killer={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 159"},"with":[{"translate":"medabots_server:entity.marine_killer","extra":[{"text":" "},{"translate":"medabots_server:item.marine_killer_clinch_wave"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/marine_killer={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 160"},"with":[{"translate":"medabots_server:entity.marine_killer","extra":[{"text":" "},{"translate":"medabots_server:item.marine_killer_new_wave"}]},{"text":"100"}]}
tag @s add final