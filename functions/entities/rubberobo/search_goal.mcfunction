execute if block ^ ^-1 ^1 minecraft:bricks if block ^ ^3 ^1 minecraft:brick_slab run tag @s add see_goal_area
scoreboard players add @s GoalSearch 1
execute unless entity @s[scores={GoalSearch=7},tag=!see_goal_area] if block ^ ^ ^1 minecraft:air if block ^ ^1 ^1 minecraft:air positioned ^ ^ ^1 run function medabots_server:entities/rubberobo/search_goal