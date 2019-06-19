tag @s add success
execute if entity @s[advancements={medabots_server:wave_1/get_all_medabots/primity_baby={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/primity_baby={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 205"},"with":[{"translate":"medabots_server:entity.primity_baby","extra":[{"text":" "},{"translate":"medabots_server:item.primity_baby_umbilical"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/primity_baby={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 206"},"with":[{"translate":"medabots_server:entity.primity_baby","extra":[{"text":" "},{"translate":"medabots_server:item.primity_baby_past_feel"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/primity_baby={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 207"},"with":[{"translate":"medabots_server:entity.primity_baby","extra":[{"text":" "},{"translate":"medabots_server:item.primity_baby_past_touch"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/primity_baby={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 208"},"with":[{"translate":"medabots_server:entity.primity_baby","extra":[{"text":" "},{"translate":"medabots_server:item.primity_baby_fracture"}]},{"text":"100"}]}
tag @s add final