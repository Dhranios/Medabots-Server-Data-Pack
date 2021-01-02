tag @s add success
execute if entity @s[advancements={medabots_server:get_all_medabots/wave_1/pretty_prime={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman","color":"green"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman","color":"green"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/pretty_prime={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 204"},"with":[{"translate":"medabots_server:item.pretty_prime_reflectmirror.model","extra":[{"text":" "},{"translate":"medabots_server:entity.pretty_prime"},{"text":" "},{"translate":"medabots_server:item.pretty_prime_reflectmirror"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/pretty_prime={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 203"},"with":[{"translate":"medabots_server:item.pretty_prime_dont_move.model","extra":[{"text":" "},{"translate":"medabots_server:entity.pretty_prime"},{"text":" "},{"translate":"medabots_server:item.pretty_prime_dont_move"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/pretty_prime={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 202"},"with":[{"translate":"medabots_server:item.pretty_prime_shineshield.model","extra":[{"text":" "},{"translate":"medabots_server:entity.pretty_prime"},{"text":" "},{"translate":"medabots_server:item.pretty_prime_shineshield"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/pretty_prime={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 201"},"with":[{"translate":"medabots_server:item.pretty_prime_temple_master.model","extra":[{"text":" "},{"translate":"medabots_server:entity.pretty_prime"},{"text":" "},{"translate":"medabots_server:item.pretty_prime_temple_master"}]},{"text":"100"}]}