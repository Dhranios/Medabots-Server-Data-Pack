tag @e[distance=..5,tag=hostile] add possible_targets
execute if entity @s[tag=ally_team] run tag @a[tag=ally_medabot,tag=possible_targets] remove possible_targets
execute if entity @s[tag=enemy_team] run tag @e[tag=enemy_medabot,tag=possible_targets] remove possible_targets
execute at @e[tag=possible_targets,sort=nearest,limit=1] run function medabots_server:items/medapart/missile/honing
tag @e remove possible_targets