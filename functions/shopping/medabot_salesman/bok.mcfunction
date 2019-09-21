tag @s add success
execute if entity @s[advancements={medabots_server:get_all_medabots/wave_1/doctor_study={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/doctor_study={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 73"},"with":[{"translate":"medabots_server:entity.doctor_study","extra":[{"text":" "},{"translate":"medabots_server:item.doctor_study_chairly"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/doctor_study={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 74"},"with":[{"translate":"medabots_server:entity.doctor_study","extra":[{"text":" "},{"translate":"medabots_server:item.doctor_study_cut_radar"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/doctor_study={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 75"},"with":[{"translate":"medabots_server:entity.doctor_study","extra":[{"text":" "},{"translate":"medabots_server:item.doctor_study_point_radar"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/doctor_study={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 76"},"with":[{"translate":"medabots_server:entity.doctor_study","extra":[{"text":" "},{"translate":"medabots_server:item.doctor_study_search_radar"}]},{"text":"100"}]}
tag @s add final