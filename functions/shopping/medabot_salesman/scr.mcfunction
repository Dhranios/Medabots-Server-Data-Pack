tag @s add success
execute if entity @s[advancements={medabots_server:get_all_medabots/wave_1/poison_scorpi={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/poison_scorpi={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 193"},"with":[{"translate":"medabots_server:entity.poison_scorpi","extra":[{"text":" "},{"translate":"medabots_server:item.poison_scorpi_zigzag"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/poison_scorpi={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 194"},"with":[{"translate":"medabots_server:entity.poison_scorpi","extra":[{"text":" "},{"translate":"medabots_server:item.poison_scorpi_scorpion_rat"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/poison_scorpi={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 195"},"with":[{"translate":"medabots_server:entity.poison_scorpi","extra":[{"text":" "},{"translate":"medabots_server:item.poison_scorpi_scorpion_cat"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/poison_scorpi={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 196"},"with":[{"translate":"medabots_server:entity.poison_scorpi","extra":[{"text":" "},{"translate":"medabots_server:item.poison_scorpi_scorpion_dog"}]},{"text":"100"}]}
tag @s add final