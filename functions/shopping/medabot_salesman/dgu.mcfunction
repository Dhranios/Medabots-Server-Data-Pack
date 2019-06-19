tag @s add success
execute if entity @s[advancements={medabots_server:wave_1/get_all_medabots/dondoguu={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/dondoguu={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 77"},"with":[{"translate":"medabots_server:entity.dondoguu","extra":[{"text":" "},{"translate":"medabots_server:item.dondoguu_dokan"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/dondoguu={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 78"},"with":[{"translate":"medabots_server:entity.dondoguu","extra":[{"text":" "},{"translate":"medabots_server:item.dondoguu_dohtattack"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/dondoguu={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 79"},"with":[{"translate":"medabots_server:entity.dondoguu","extra":[{"text":" "},{"translate":"medabots_server:item.dondoguu_dohtack"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/dondoguu={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 80"},"with":[{"translate":"medabots_server:entity.dondoguu","extra":[{"text":" "},{"translate":"medabots_server:item.dondoguu_dogu"}]},{"text":"100"}]}
tag @s add final