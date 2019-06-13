tag @s add success
execute if entity @s[advancements={medabots_server:wave_1/get_all_medabots/mewtwo={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/mewtwo={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 173"},"with":[{"translate":"medabots_server:entity.mewtwo","extra":[{"text":" "},{"translate":"medabots_server:item.mewtwo_teleport"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/mewtwo={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 174"},"with":[{"translate":"medabots_server:entity.mewtwo","extra":[{"text":" "},{"translate":"medabots_server:item.mewtwo_pure_darkness"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/mewtwo={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 175"},"with":[{"translate":"medabots_server:entity.mewtwo","extra":[{"text":" "},{"translate":"medabots_server:item.mewtwo_shadow_ball"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/mewtwo={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 176"},"with":[{"translate":"medabots_server:entity.mewtwo","extra":[{"text":" "},{"translate":"medabots_server:item.mewtwo_confuse"}]},{"text":"100"}]}
