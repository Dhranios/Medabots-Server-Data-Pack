tag @s add success
execute if entity @s[advancements={medabots_server:get_all_medabots/wave_1/acehorn={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman","color":"green"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman","color":"green"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/acehorn={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 20"},"with":[{"translate":"medabots_server:item.acehorn_guardian.model","extra":[{"text":" "},{"translate":"medabots_server:entity.acehorn"},{"text":" "},{"translate":"medabots_server:item.acehorn_guardian"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/acehorn={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 19"},"with":[{"translate":"medabots_server:item.acehorn_canceller.model","extra":[{"text":" "},{"translate":"medabots_server:entity.acehorn"},{"text":" "},{"translate":"medabots_server:item.acehorn_canceller"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/acehorn={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 18"},"with":[{"translate":"medabots_server:item.acehorn_recovery.model","extra":[{"text":" "},{"translate":"medabots_server:entity.acehorn"},{"text":" "},{"translate":"medabots_server:item.acehorn_recovery"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/acehorn={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 17"},"with":[{"translate":"medabots_server:item.acehorn_ace_hooves.model","extra":[{"text":" "},{"translate":"medabots_server:entity.acehorn"},{"text":" "},{"translate":"medabots_server:item.acehorn_ace_hooves"}]},{"text":"100"}]}
tag @s add final