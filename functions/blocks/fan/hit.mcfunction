execute positioned ~-1 ~ ~ if entity @e[distance=..1,tag=destroy] run scoreboard players add @s Moving 1
execute positioned ~ ~ ~-1 if entity @e[distance=..1,tag=destroy] run scoreboard players add @s Moving 1
execute positioned ~1 ~ ~ if entity @e[distance=..1,tag=destroy] run scoreboard players add @s Moving 1
execute positioned ~ ~ ~1 if entity @e[distance=..1,tag=destroy] run scoreboard players add @s Moving 1
execute positioned ~-1 ~ ~ if entity @e[distance=..1,tag=press] run scoreboard players add @s Moving 1
execute positioned ~ ~ ~-1 if entity @e[distance=..1,tag=press] run scoreboard players add @s Moving 1
execute positioned ~1 ~ ~ if entity @e[distance=..1,tag=press] run scoreboard players add @s Moving 1
execute positioned ~ ~ ~1 if entity @e[distance=..1,tag=press] run scoreboard players add @s Moving 1
execute positioned ~-1 ~ ~ if entity @e[distance=..1,scores={Hammer=1..}] run scoreboard players add @s Moving 1
execute positioned ~ ~ ~-1 if entity @e[distance=..1,scores={Hammer=1..}] run scoreboard players add @s Moving 1
execute positioned ~1 ~ ~ if entity @e[distance=..1,scores={Hammer=1..}] run scoreboard players add @s Moving 1
execute positioned ~ ~ ~1 if entity @e[distance=..1,scores={Hammer=1..}] run scoreboard players add @s Moving 1