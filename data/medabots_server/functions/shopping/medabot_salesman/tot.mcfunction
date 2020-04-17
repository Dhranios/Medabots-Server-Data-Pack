tag @s add success
execute if entity @s[advancements={medabots_server:get_all_medabots/wave_1/keithturtle={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman","color":"green"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman","color":"green"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/keithturtle={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 136"},"with":[{"translate":"medabots_server:item.keithturtle_tyranolaser.model","extra":[{"text":" "},{"translate":"medabots_server:entity.keithturtle"},{"text":" "},{"translate":"medabots_server:item.keithturtle_tyranolaser"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/keithturtle={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 135"},"with":[{"translate":"medabots_server:item.keithturtle_megalaser.model","extra":[{"text":" "},{"translate":"medabots_server:entity.keithturtle"},{"text":" "},{"translate":"medabots_server:item.keithturtle_megalaser"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/keithturtle={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 134"},"with":[{"translate":"medabots_server:item.keithturtle_gigalaser.model","extra":[{"text":" "},{"translate":"medabots_server:entity.keithturtle"},{"text":" "},{"translate":"medabots_server:item.keithturtle_gigalaser"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/keithturtle={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 133"},"with":[{"translate":"medabots_server:item.keithturtle_rollertank.model","extra":[{"text":" "},{"translate":"medabots_server:entity.keithturtle"},{"text":" "},{"translate":"medabots_server:item.keithturtle_rollertank"}]},{"text":"100"}]}
tag @s add final