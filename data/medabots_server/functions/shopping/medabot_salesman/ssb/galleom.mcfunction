tag @s add success
execute if entity @s[advancements={medabots_server:get_all_medabots/wave_1/galleom={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman","color":"green"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman","color":"green"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/galleom={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 177"},"with":[{"translate":"medabots_server:entity.galleom","extra":[{"text":" "},{"translate":"medabots_server:item.galleom_subspace_crusader"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/galleom={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 178"},"with":[{"translate":"medabots_server:entity.galleom","extra":[{"text":" "},{"translate":"medabots_server:item.galleom_flaming_engine"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/galleom={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 179"},"with":[{"translate":"medabots_server:entity.galleom","extra":[{"text":" "},{"translate":"medabots_server:item.galleom_jet_engine"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/galleom={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 180"},"with":[{"translate":"medabots_server:entity.galleom","extra":[{"text":" "},{"translate":"medabots_server:item.galleom_armored_body"}]},{"text":"100"}]}
tag @s add final