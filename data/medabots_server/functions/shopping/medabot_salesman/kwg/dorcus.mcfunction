tag @s add success
execute if entity @s[advancements={medabots_server:get_all_medabots/wave_1/dorcus={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman","color":"green"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman","color":"green"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/dorcus={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 84"},"with":[{"translate":"medabots_server:item.dorcus_twinincome.model","extra":[{"text":" "},{"translate":"medabots_server:entity.dorcus"},{"text":" "},{"translate":"medabots_server:item.dorcus_twinincome"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/dorcus={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 83"},"with":[{"translate":"medabots_server:item.dorcus_fourvice.model","extra":[{"text":" "},{"translate":"medabots_server:entity.dorcus"},{"text":" "},{"translate":"medabots_server:item.dorcus_fourvice"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/dorcus={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 82"},"with":[{"translate":"medabots_server:item.dorcus_intensebeat.model","extra":[{"text":" "},{"translate":"medabots_server:entity.dorcus"},{"text":" "},{"translate":"medabots_server:item.dorcus_intensebeat"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/dorcus={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 81"},"with":[{"translate":"medabots_server:item.dorcus_windfluke.model","extra":[{"text":" "},{"translate":"medabots_server:entity.dorcus"},{"text":" "},{"translate":"medabots_server:item.dorcus_windfluke"}]},{"text":"100"}]}
scoreboard players reset @s ShopIndex4