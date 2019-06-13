tag @s add success
execute if entity @s[advancements={medabots_server:wave_1/get_all_medabots/seven_colors={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/seven_colors={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 237"},"with":[{"translate":"medabots_server:entity.seven_colors","extra":[{"text":" "},{"translate":"medabots_server:item.seven_colors_twirl"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/seven_colors={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 238"},"with":[{"translate":"medabots_server:entity.seven_colors","extra":[{"text":" "},{"translate":"medabots_server:item.seven_colors_invisi_arm"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/seven_colors={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 239"},"with":[{"translate":"medabots_server:entity.seven_colors","extra":[{"text":" "},{"translate":"medabots_server:item.seven_colors_invisi_hand"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/seven_colors={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 240"},"with":[{"translate":"medabots_server:entity.seven_colors","extra":[{"text":" "},{"translate":"medabots_server:item.seven_colors_invisi_body"}]},{"text":"100"}]}
