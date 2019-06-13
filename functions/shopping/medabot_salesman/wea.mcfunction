tag @s add success
execute if entity @s[advancements={medabots_server:wave_1/get_all_medabots/god_emperor={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/god_emperor={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 105"},"with":[{"translate":"medabots_server:entity.god_emperor","extra":[{"text":" "},{"translate":"medabots_server:item.god_emperor_death_crawler"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/god_emperor={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 106"},"with":[{"translate":"medabots_server:entity.god_emperor","extra":[{"text":" "},{"translate":"medabots_server:item.god_emperor_death_laser"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/god_emperor={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 107"},"with":[{"translate":"medabots_server:entity.god_emperor","extra":[{"text":" "},{"translate":"medabots_server:item.god_emperor_death_missile"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/god_emperor={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 108"},"with":[{"translate":"medabots_server:entity.god_emperor","extra":[{"text":" "},{"translate":"medabots_server:item.god_emperor_death_break"}]},{"text":"100"}]}
