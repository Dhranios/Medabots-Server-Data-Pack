tag @s add success
execute if entity @s[advancements={medabots_server:get_all_medabots/wave_1/fly_falcon={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman","color":"green"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman","color":"green"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/fly_falcon={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 97"},"with":[{"translate":"medabots_server:entity.fly_falcon","extra":[{"text":" "},{"translate":"medabots_server:item.fly_falcon_flyphone"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/fly_falcon={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 98"},"with":[{"translate":"medabots_server:entity.fly_falcon","extra":[{"text":" "},{"translate":"medabots_server:item.fly_falcon_burncapsule"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/fly_falcon={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 99"},"with":[{"translate":"medabots_server:entity.fly_falcon","extra":[{"text":" "},{"translate":"medabots_server:item.fly_falcon_burntube"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/fly_falcon={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 100"},"with":[{"translate":"medabots_server:entity.fly_falcon","extra":[{"text":" "},{"translate":"medabots_server:item.fly_falcon_burn_head"}]},{"text":"100"}]}
tag @s add final