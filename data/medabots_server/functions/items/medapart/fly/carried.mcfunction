execute unless block ~ ~ ~-0.3 minecraft:air run tag @s add let_go
execute unless block ~ ~ ~0.3 minecraft:air run tag @s add let_go
execute unless block ~-0.3 ~ ~ minecraft:air run tag @s add let_go
execute unless block ~0.3 ~ ~ minecraft:air run tag @s add let_go
execute unless block ~ ~1.8 ~-0.3 minecraft:air run tag @s add let_go
execute unless block ~ ~1.8 ~0.3 minecraft:air run tag @s add let_go
execute unless block ~-0.3 ~1.8 ~ minecraft:air run tag @s add let_go
execute unless block ~0.3 ~1.8 ~ minecraft:air run tag @s add let_go
execute unless block ~ ~0.9 ~-0.3 minecraft:air run tag @s add let_go
execute unless block ~ ~0.9 ~0.3 minecraft:air run tag @s add let_go
execute unless block ~-0.3 ~0.9 ~ minecraft:air run tag @s add let_go
execute unless block ~0.3 ~0.9 ~ minecraft:air run tag @s add let_go
execute unless block ~ ~-0.5 ~ minecraft:air run tag @s add let_go
tag @s[tag=sneak_pos] add let_go
tag @s[tag=dying] add let_go
tag @s[tag=left_arm_activated,scores={Damage=1..}] add let_go
tag @s[tag=right_arm_activated,scores={Damage=1..}] add let_go
execute positioned ~ ~2 ~ if entity @e[tag=carrying,sort=nearest,limit=1,tag=ally_medabot,tag=dying] run tag @s[tag=ally_medabot] add let_go
execute positioned ~ ~2 ~ if entity @e[tag=carrying,sort=nearest,limit=1,tag=enemy_medabot,tag=dying] run tag @s[tag=enemy_medabot] add let_go

execute if entity @s[tag=let_go,tag=ally_medabot] positioned ~ ~2 ~ run tag @e[tag=carrying,sort=nearest,limit=1,tag=ally_medabot] remove carrying
execute if entity @s[tag=let_go,tag=enemy_medabot] positioned ~ ~2 ~ run tag @e[tag=carrying,sort=nearest,limit=1,tag=enemy_medabot] remove carrying
execute if block ~ ~-0.5 ~ minecraft:air run teleport @s[tag=let_go] ~ ~-0.5 ~
tag @s[tag=let_go] remove carried
tag @s[tag=let_go] remove let_go
