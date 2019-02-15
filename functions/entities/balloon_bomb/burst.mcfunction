summon minecraft:tnt ~ ~1 ~ {Fuse:100s,CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Tags:["bomb"]}
execute if entity @s[scores={ActionFloorNr=0..}] positioned ~ ~1 ~ run scoreboard players operation @e[distance=..0.7,type=minecraft:tnt,tag=bomb] ActionFloorNr = @s ActionFloorNr
tag @s add dead