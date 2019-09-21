tag @s add success
execute if entity @s[advancements={medabots_server:get_all_medabots/wave_1/magicalcard={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/magicalcard={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 149"},"with":[{"translate":"medabots_server:entity.magicalcard","extra":[{"text":" "},{"translate":"medabots_server:item.magicalcard_wandrack"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/magicalcard={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 150"},"with":[{"translate":"medabots_server:entity.magicalcard","extra":[{"text":" "},{"translate":"medabots_server:item.magicalcard_lookme"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/magicalcard={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 151"},"with":[{"translate":"medabots_server:entity.magicalcard","extra":[{"text":" "},{"translate":"medabots_server:item.magicalcard_onetwothree"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/magicalcard={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 152"},"with":[{"translate":"medabots_server:entity.magicalcard","extra":[{"text":" "},{"translate":"medabots_server:item.magicalcard_magitech"}]},{"text":"100"}]}
tag @s add final