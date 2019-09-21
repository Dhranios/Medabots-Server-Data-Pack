tag @s add success
execute if entity @s[advancements={medabots_server:get_all_medabots/wave_1/ka_o_lantern={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/ka_o_lantern={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 121"},"with":[{"translate":"medabots_server:entity.ka_o_lantern","extra":[{"text":" "},{"translate":"medabots_server:item.ka_o_lantern_squash_basher"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/ka_o_lantern={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 122"},"with":[{"translate":"medabots_server:entity.ka_o_lantern","extra":[{"text":" "},{"translate":"medabots_server:item.ka_o_lantern_keen"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/ka_o_lantern={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 123"},"with":[{"translate":"medabots_server:entity.ka_o_lantern","extra":[{"text":" "},{"translate":"medabots_server:item.ka_o_lantern_pun"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/ka_o_lantern={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 124"},"with":[{"translate":"medabots_server:entity.ka_o_lantern","extra":[{"text":" "},{"translate":"medabots_server:item.ka_o_lantern_pan"}]},{"text":"100"}]}
tag @s add final