tag @s add success
execute if entity @s[advancements={medabots_server:get_all_medabots/wave_1/rhinorush={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman","color":"green"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman","color":"green"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/rhinorush={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 220"},"with":[{"translate":"medabots_server:item.rhinorush_rhinone.model","extra":[{"text":" "},{"translate":"medabots_server:entity.rhinorush"},{"text":" "},{"translate":"medabots_server:item.rhinorush_rhinone"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/rhinorush={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 219"},"with":[{"translate":"medabots_server:item.rhinorush_rhinogone.model","extra":[{"text":" "},{"translate":"medabots_server:entity.rhinorush"},{"text":" "},{"translate":"medabots_server:item.rhinorush_rhinogone"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/rhinorush={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 218"},"with":[{"translate":"medabots_server:item.rhinorush_rhinoburn.model","extra":[{"text":" "},{"translate":"medabots_server:entity.rhinorush"},{"text":" "},{"translate":"medabots_server:item.rhinorush_rhinoburn"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/rhinorush={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 217"},"with":[{"translate":"medabots_server:item.rhinorush_jaguarnote.model","extra":[{"text":" "},{"translate":"medabots_server:entity.rhinorush"},{"text":" "},{"translate":"medabots_server:item.rhinorush_jaguarnote"}]},{"text":"100"}]}