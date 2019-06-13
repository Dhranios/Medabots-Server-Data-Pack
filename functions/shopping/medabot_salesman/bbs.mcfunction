tag @s add success
execute if entity @s[advancements={medabots_server:wave_1/get_all_medabots/basstroyer={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/basstroyer={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 45"},"with":[{"translate":"medabots_server:entity.basstroyer","extra":[{"text":" "},{"translate":"medabots_server:item.basstroyer_lakeduster"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/basstroyer={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 46"},"with":[{"translate":"medabots_server:entity.basstroyer","extra":[{"text":" "},{"translate":"medabots_server:item.basstroyer_srounding"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/basstroyer={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 47"},"with":[{"translate":"medabots_server:entity.basstroyer","extra":[{"text":" "},{"translate":"medabots_server:item.basstroyer_environment"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/basstroyer={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 48"},"with":[{"translate":"medabots_server:entity.basstroyer","extra":[{"text":" "},{"translate":"medabots_server:item.basstroyer_great_swallow"}]},{"text":"100"}]}
