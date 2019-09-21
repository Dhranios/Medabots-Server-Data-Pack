tag @s add success
execute if entity @s[advancements={medabots_server:get_all_medabots/wave_1/pastel_fairy={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/pastel_fairy={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 181"},"with":[{"translate":"medabots_server:entity.pastel_fairy","extra":[{"text":" "},{"translate":"medabots_server:item.pastel_fairy_flower_fly"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/pastel_fairy={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 182"},"with":[{"translate":"medabots_server:entity.pastel_fairy","extra":[{"text":" "},{"translate":"medabots_server:item.pastel_fairy_force_barrier"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/pastel_fairy={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 183"},"with":[{"translate":"medabots_server:entity.pastel_fairy","extra":[{"text":" "},{"translate":"medabots_server:item.pastel_fairy_energy_barrier"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/pastel_fairy={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 184"},"with":[{"translate":"medabots_server:entity.pastel_fairy","extra":[{"text":" "},{"translate":"medabots_server:item.pastel_fairy_field_barrier"}]},{"text":"100"}]}
tag @s add final