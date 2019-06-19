tag @s add success
execute if entity @s[advancements={medabots_server:wave_1/get_all_medabots/baroncastle={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/baroncastle={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 41"},"with":[{"translate":"medabots_server:entity.baroncastle","extra":[{"text":" "},{"translate":"medabots_server:item.baroncastle_tyrantower"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/baroncastle={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 42"},"with":[{"translate":"medabots_server:entity.baroncastle","extra":[{"text":" "},{"translate":"medabots_server:item.baroncastle_gatemonarch"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/baroncastle={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 43"},"with":[{"translate":"medabots_server:entity.baroncastle","extra":[{"text":" "},{"translate":"medabots_server:item.baroncastle_sentineldy"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/baroncastle={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 44"},"with":[{"translate":"medabots_server:entity.baroncastle","extra":[{"text":" "},{"translate":"medabots_server:item.baroncastle_king_balcony"}]},{"text":"100"}]}
tag @s add final