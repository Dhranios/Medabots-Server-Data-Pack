tag @s add success
execute if entity @s[advancements={medabots_server:wave_1/get_all_medabots/metabee={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/metabee={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 9"},"with":[{"translate":"medabots_server:entity.metabee","extra":[{"text":" "},{"translate":"medabots_server:item.metabee_ochitsuka"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/metabee={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 10"},"with":[{"translate":"medabots_server:entity.metabee","extra":[{"text":" "},{"translate":"medabots_server:item.metabee_sub_machine_gun"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/metabee={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 11"},"with":[{"translate":"medabots_server:entity.metabee","extra":[{"text":" "},{"translate":"medabots_server:item.metabee_revolver"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/metabee={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 12"},"with":[{"translate":"medabots_server:entity.metabee","extra":[{"text":" "},{"translate":"medabots_server:item.metabee_missile"}]},{"text":"100"}]}
tag @s add final