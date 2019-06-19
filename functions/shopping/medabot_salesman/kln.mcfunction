tag @s add success
execute if entity @s[advancements={medabots_server:wave_1/get_all_medabots/warbonnet={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/warbonnet={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 261"},"with":[{"translate":"medabots_server:entity.warbonnet","extra":[{"text":" "},{"translate":"medabots_server:item.warbonnet_abduction"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/warbonnet={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 262"},"with":[{"translate":"medabots_server:entity.warbonnet","extra":[{"text":" "},{"translate":"medabots_server:item.warbonnet_range_shooter"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/warbonnet={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 263"},"with":[{"translate":"medabots_server:entity.warbonnet","extra":[{"text":" "},{"translate":"medabots_server:item.warbonnet_shoot_barrel"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/warbonnet={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 264"},"with":[{"translate":"medabots_server:entity.warbonnet","extra":[{"text":" "},{"translate":"medabots_server:item.warbonnet_tension_up"}]},{"text":"100"}]}
tag @s add final