tag @s add success
execute if entity @s[advancements={medabots_server:get_all_medabots/wave_1/aimflash={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman","color":"green"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman","color":"green"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/aimflash={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 24"},"with":[{"translate":"medabots_server:item.aimflash_strobe.model","extra":[{"text":" "},{"translate":"medabots_server:entity.aimflash"},{"text":" "},{"translate":"medabots_server:item.aimflash_strobe"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/aimflash={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 23"},"with":[{"translate":"medabots_server:item.aimflash_zoom.model","extra":[{"text":" "},{"translate":"medabots_server:entity.aimflash"},{"text":" "},{"translate":"medabots_server:item.aimflash_zoom"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/aimflash={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 22"},"with":[{"translate":"medabots_server:item.aimflash_tripod.model","extra":[{"text":" "},{"translate":"medabots_server:entity.aimflash"},{"text":" "},{"translate":"medabots_server:item.aimflash_tripod"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/aimflash={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 21"},"with":[{"translate":"medabots_server:item.aimflash_carrybag.model","extra":[{"text":" "},{"translate":"medabots_server:entity.aimflash"},{"text":" "},{"translate":"medabots_server:item.aimflash_carrybag"}]},{"text":"100"}]}