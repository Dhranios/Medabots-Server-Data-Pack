tag @e[distance=..0.7,type=minecraft:villager] add traded_with
execute unless entity @e[distance=..0.7,type=minecraft:villager] positioned ^ ^ ^1 run function medabots_server:shopping/target_villager