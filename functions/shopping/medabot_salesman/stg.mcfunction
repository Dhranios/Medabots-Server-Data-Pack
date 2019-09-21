tag @s add success
execute if entity @s[advancements={medabots_server:get_all_medabots/wave_1/smilidonad={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/smilidonad={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 245"},"with":[{"translate":"medabots_server:entity.smilidonad","extra":[{"text":" "},{"translate":"medabots_server:item.smilidonad_sharp_edge"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/smilidonad={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 246"},"with":[{"translate":"medabots_server:entity.smilidonad","extra":[{"text":" "},{"translate":"medabots_server:item.smilidonad_straw_hammer"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/smilidonad={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 247"},"with":[{"translate":"medabots_server:entity.smilidonad","extra":[{"text":" "},{"translate":"medabots_server:item.smilidonad_flexor_sword"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/smilidonad={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 248"},"with":[{"translate":"medabots_server:entity.smilidonad","extra":[{"text":" "},{"translate":"medabots_server:item.smilidonad_hunter"}]},{"text":"100"}]}
tag @s add final