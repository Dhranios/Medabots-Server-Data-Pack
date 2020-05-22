execute store result score @s Damage run data get entity @s AbsorptionAmount
scoreboard players operation @s Damage -= @s Health
playsound medabots_server:entity.rubberobo.hurt neutral @a ~ ~ ~ 1
tag @s add hurt
tag @s[tag=!walking] add walking
tag @s[tag=walk_1_block] remove walk_1_block
tag @s[tag=toggle_turn_left] remove toggle_turn_left
tag @s[tag=follow_wall] remove follow_wall
tag @s[tag=see_goal_area] remove see_goal_area
tag @s[tag=seen_goal_area] remove seen_goal_area
tag @s[tag=!turn_left,scores={Time=41..}] add toggle_turn_left
tag @s[tag=turn_left,tag=!toggle_turn_left,scores={Time=41..}] remove turn_left
tag @s[tag=toggle_turn_left] add turn_left
tag @s[tag=toggle_turn_left] remove downed
execute align xz run teleport @s[y_rotation=-45..45] ~0.5 ~ ~0.5 0 ~
execute align xz run teleport @s[y_rotation=-135..-45] ~0.5 ~ ~0.5 -90 ~
execute align xz run teleport @s[y_rotation=135..-135] ~0.5 ~ ~0.5 -180 ~
execute align xz run teleport @s[y_rotation=45..135] ~0.5 ~ ~0.5 90 ~
scoreboard players set @s Sound 0
stopsound @a neutral medabots_server:entity.rubberobo.walk
stopsound @a neutral medabots_server:entity.rubberobo.walk_downed
scoreboard players set @s[scores={Damage=-20..}] Time 60
scoreboard players set @s[scores={Damage=..-20}] Time 100
tag @s[tag=downed,scores={Damage=..-20}] remove downed