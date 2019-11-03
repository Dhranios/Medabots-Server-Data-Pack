# Steal life
tag @s add me
execute if entity @s[tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^3 as @e[tag=hostile,distance=..6,tag=!me] run tag @s add drain_life
execute if entity @s[tag=ally_medabot] positioned ^ ^ ^3 as @e[tag=hostile,distance=..6,tag=!ally_medabot,tag=!me] run tag @s add drain_life
execute if entity @s[tag=enemy_medabot] positioned ^ ^ ^3 as @e[tag=hostile,distance=..6,tag=!enemy_medabot,tag=!me] run tag @s add drain_life
execute unless entity @s[scores={ScoutEffect=1..}] as @e[tag=drain_life] run function medabots_server:items/medapart/life_drain/hit
execute if entity @s[scores={ScoutEffect=1..}] as @e[tag=drain_life] run function medabots_server:items/medapart/life_drain/strong_hit
scoreboard players operation @s HeadArmor += #temp HeadArmor
execute if score @s HeadArmor > @s MaxHeadArmor run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
scoreboard players reset #temp HeadArmor
tag @e remove drain_life
tag @s remove me