tag @s add success
execute if entity @s[advancements={medabots_server:wave_1/get_all_medabots/shoot_spider={legs=false,left_arm=false,right_arm=false,head=false}}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.not_available"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.medapart"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/shoot_spider={legs=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 241"},"with":[{"translate":"medabots_server:entity.shoot_spider","extra":[{"text":" "},{"translate":"medabots_server:item.shoot_spider_multi_leg"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/shoot_spider={left_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 242"},"with":[{"translate":"medabots_server:entity.shoot_spider","extra":[{"text":" "},{"translate":"medabots_server:item.shoot_spider_cheaptrap"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/shoot_spider={right_arm=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 243"},"with":[{"translate":"medabots_server:entity.shoot_spider","extra":[{"text":" "},{"translate":"medabots_server:item.shoot_spider_cheapertrap"}]},{"text":"100"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/shoot_spider={head=true}}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger BuyMedapart set 244"},"with":[{"translate":"medabots_server:entity.shoot_spider","extra":[{"text":" "},{"translate":"medabots_server:item.shoot_spider_spydertrap"}]},{"text":"100"}]}
tag @s add final