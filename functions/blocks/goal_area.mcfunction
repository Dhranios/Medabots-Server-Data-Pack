# Tags new goal areas with what block they'll replace
execute unless entity @s[scores={Time=0..}] run function medabots_server:blocks/goal_area/scores

# Remove when cleaning up a stage
execute if entity @s[tag=dead] run function medabots_server:blocks/goal_area/clean_up
