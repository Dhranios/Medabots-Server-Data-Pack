# Tag clearing players
execute store result score #temp Stage run scoreboard players get @s Stage
execute as @e[tag=rubberobo] if score @s Stage = #temp Stage run tag @e[distance=..0.7,tag=goal_area] add stop
execute as @e[tag=jammy] if score @s Stage = #temp Stage run tag @e[distance=..0.7,tag=goal_area] add stop
execute as @e[tag=mission] if score @s Stage = #temp Stage run tag @e[distance=..0.7,tag=goal_area] add stop
scoreboard players reset #temp Stage
execute if entity @s[tag=!stop] align xz run tag @a[dy=4,tag=hostile] add clear_stage
tag @s remove stop

# Remove when cleaning up a stage
execute if entity @s[tag=dead] run function medabots_server:blocks/goal_area/clean_up