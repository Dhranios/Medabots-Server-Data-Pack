tag @s add success
execute if entity @s[advancements={medabots_server:get_all_medabots/wave_1/rokusho={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman","color":"green"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman","color":"green"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/rokusho={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 225"},"with":[{"translate":"medabots_server:entity.rokusho","extra":[{"text":" "},{"translate":"medabots_server:item.rokusho_tatacker"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/rokusho={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 226"},"with":[{"translate":"medabots_server:entity.rokusho","extra":[{"text":" "},{"translate":"medabots_server:item.rokusho_pipo_hammer"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/rokusho={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 227"},"with":[{"translate":"medabots_server:entity.rokusho","extra":[{"text":" "},{"translate":"medabots_server:item.rokusho_sword"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/rokusho={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 228"},"with":[{"translate":"medabots_server:entity.rokusho","extra":[{"text":" "},{"translate":"medabots_server:item.rokusho_antenna"}]},{"text":"100"}]}
scoreboard players reset @s ShopIndex4