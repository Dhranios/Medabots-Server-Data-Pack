tag @s add success
execute if entity @s[advancements={medabots_server:wave_1/get_all_medabots/magolor={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/magolor={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 153"},"with":[{"translate":"medabots_server:entity.magolor","extra":[{"text":" "},{"translate":"medabots_server:item.magolor_darkmatter"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/magolor={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 154"},"with":[{"translate":"medabots_server:entity.magolor","extra":[{"text":" "},{"translate":"medabots_server:item.magolor_darkhand"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/magolor={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 155"},"with":[{"translate":"medabots_server:entity.magolor","extra":[{"text":" "},{"translate":"medabots_server:item.magolor_darkness"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/magolor={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 156"},"with":[{"translate":"medabots_server:entity.magolor","extra":[{"text":" "},{"translate":"medabots_server:item.magolor_master_crown"}]},{"text":"100"}]}
tag @s add final