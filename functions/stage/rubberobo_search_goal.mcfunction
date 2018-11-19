execute if block ^ ^ ^1 minecraft:heavy_weighted_pressure_plate run tag @s add see_goal_area
scoreboard players add @s GoalSearch 1
execute unless entity @s[scores={GoalSearch=7}] rotated ~ 0 if block ^ ^ ^1 minecraft:air if block ^ ^ ^1 minecraft:air positioned ^ ^1 ^1 run function medabots_server:stage/rubberobo_search_goal