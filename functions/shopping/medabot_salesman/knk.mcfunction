tag @s add success
execute if entity @s[advancements={medabots_server:wave_1/get_all_medabots/kasou_touchu={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/kasou_touchu={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 129"},"with":[{"translate":"medabots_server:entity.kasou_touchu","extra":[{"text":" "},{"translate":"medabots_server:item.kasou_touchu_fungoton"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/kasou_touchu={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 130"},"with":[{"translate":"medabots_server:entity.kasou_touchu","extra":[{"text":" "},{"translate":"medabots_server:item.kasou_touchu_maitake"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/kasou_touchu={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 131"},"with":[{"translate":"medabots_server:entity.kasou_touchu","extra":[{"text":" "},{"translate":"medabots_server:item.kasou_touchu_shitake"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/kasou_touchu={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 132"},"with":[{"translate":"medabots_server:entity.kasou_touchu","extra":[{"text":" "},{"translate":"medabots_server:item.kasou_touchu_mushroom"}]},{"text":"100"}]}
tag @s add final