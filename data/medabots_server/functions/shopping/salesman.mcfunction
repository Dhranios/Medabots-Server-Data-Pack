tellraw @s {"translate":"medabots_server:message.medallar_count","color":"green","with":[{"score":{"objective":"Money","name":"@s"}}]}
tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:message.shop.greeting"}]}
tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:message.shop.ask"}]}
tellraw @s {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger Shopping set 1"},"with":[{"translate":"medabots_server:item.sunglasses"},{"text":"64"}]}
tellraw @s {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger Shopping set 2"},"with":[{"translate":"medabots_server:item.espresso","hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:item.espresso.description"}}},{"text":"50"}]}
tellraw @s[advancements={medabots_server:special_items/passes/dimensional=false}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger Shopping set 3"},"with":[{"translate":"medabots_server:item.unknown_crown","hoverEvent":{"action":"show_text","value":[{"translate":"medabots_server:item.unknown_crown.description.1"},{"text":"\n"},{"translate":"medabots_server:item.unknown_crown.description.2"}]}},{"text":"12800"}]}
tellraw @s[advancements={medabots_server:story_progression/infinity={vs_squidguts_battle=true},medabots_server:story_progression/other={salesman_knight_medal=false}}] {"translate":"medabots_server:message.salesman.quest","with":[{"translate":"medabots_server:item.knight_medal"}],"clickEvent":{"action":"run_command","value":"/trigger ShopIndex0 set 1"}}
tellraw @s[advancements={medabots_server:story_progression/infinity={vs_squidguts_battle=true},medabots_server:story_progression/other={salesman_spider_medal=false}}] {"translate":"medabots_server:message.salesman.quest","with":[{"translate":"medabots_server:item.spider_medal"}],"clickEvent":{"action":"run_command","value":"/trigger ShopIndex0 set 2"}}
tellraw @s[advancements={medabots_server:story_progression/infinity={vs_gillgirl_battle=true},medabots_server:story_progression/other={salesman_ghost_medal=false,salesman_knight_medal=true}}] {"translate":"medabots_server:message.salesman.quest","with":[{"translate":"medabots_server:item.ghost_medal"}],"clickEvent":{"action":"run_command","value":"/trigger ShopIndex0 set 3"}}
tellraw @s[advancements={medabots_server:story_progression/infinity={vs_gillgirl_battle=true},medabots_server:story_progression/other={salesman_unicorn_medal=false,salesman_spider_medal=true}}] {"translate":"medabots_server:message.salesman.quest","with":[{"translate":"medabots_server:item.unicorn_medal"}],"clickEvent":{"action":"run_command","value":"/trigger ShopIndex0 set 4"}}
tellraw @s[advancements={medabots_server:story_progression/infinity={shrimplips_is_recruiting=true},medabots_server:story_progression/other={salesman_monkey_medal=false,salesman_ghost_medal=true,salesman_unicorn_medal=true}}] {"translate":"medabots_server:message.salesman.quest","with":[{"translate":"medabots_server:item.monkey_medal"}],"clickEvent":{"action":"run_command","value":"/trigger ShopIndex0 set 5"}}
tellraw @s[advancements={medabots_server:story_progression/infinity={seaslug_eliminated=true},medabots_server:story_progression/other={salesman_chameleon_medal=false,salesman_monkey_medal=true}}] {"translate":"medabots_server:message.salesman.quest","with":[{"translate":"medabots_server:item.chameleon_medal"}],"clickEvent":{"action":"run_command","value":"/trigger ShopIndex0 set 6"}}
tellraw @s[advancements={medabots_server:story_progression/infinity={seaslug_eliminated=true},medabots_server:story_progression/other={salesman_mermaid_medal=false,salesman_monkey_medal=true}}] {"translate":"medabots_server:message.salesman.quest","with":[{"translate":"medabots_server:item.mermaid_medal"}],"clickEvent":{"action":"run_command","value":"/trigger ShopIndex0 set 7"}}
scoreboard players set @s ShopIndex0 -1
scoreboard players enable @s ShopIndex0
tag @s add trading_with_salesman