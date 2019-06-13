tag @s add success
execute if entity @s[advancements={medabots_server:wave_1/get_all_medabots/nin_ninja={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/nin_ninja={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 177"},"with":[{"translate":"medabots_server:entity.nin_ninja","extra":[{"text":" "},{"translate":"medabots_server:item.nin_ninja_tiptoe"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/nin_ninja={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 178"},"with":[{"translate":"medabots_server:entity.nin_ninja","extra":[{"text":" "},{"translate":"medabots_server:item.nin_ninja_ninja_sword"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/nin_ninja={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 179"},"with":[{"translate":"medabots_server:entity.nin_ninja","extra":[{"text":" "},{"translate":"medabots_server:item.nin_ninja_ninja_dagger"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/nin_ninja={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 180"},"with":[{"translate":"medabots_server:entity.nin_ninja","extra":[{"text":" "},{"translate":"medabots_server:item.nin_ninja_cover_up"}]},{"text":"100"}]}
