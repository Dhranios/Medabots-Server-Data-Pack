tag @e[distance=..0.7,type=minecraft:villager] add traded_with
execute if entity @e[distance=..0.7,type=minecraft:villager,tag=shop] run tellraw @s {"translate":"medabots_server:message.shop.chat_setting","color":"green"}
scoreboard players add #temp Time 1
execute unless score #temp Time matches 7 unless entity @e[distance=..0.7,type=minecraft:villager] positioned ^ ^ ^1 run function medabots_server:shopping/target_villager
scoreboard players reset #temp Time