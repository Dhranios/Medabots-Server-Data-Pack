tag @s add success
execute if entity @s[advancements={medabots_server:get_all_medabots/wave_1/hellphoenix={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/hellphoenix={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 113"},"with":[{"translate":"medabots_server:entity.hellphoenix","extra":[{"text":" "},{"translate":"medabots_server:item.hellphoenix_red_tail"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/hellphoenix={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 114"},"with":[{"translate":"medabots_server:entity.hellphoenix","extra":[{"text":" "},{"translate":"medabots_server:item.hellphoenix_flame_gun"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/hellphoenix={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 115"},"with":[{"translate":"medabots_server:entity.hellphoenix","extra":[{"text":" "},{"translate":"medabots_server:item.hellphoenix_fire_gun"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/hellphoenix={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 116"},"with":[{"translate":"medabots_server:entity.hellphoenix","extra":[{"text":" "},{"translate":"medabots_server:item.hellphoenix_blast_gun"}]},{"text":"100"}]}
tag @s add final