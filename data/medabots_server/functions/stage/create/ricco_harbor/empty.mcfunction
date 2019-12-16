
execute if entity @s[scores={ArenaType=0}] run teleport @s -1476 14 -176 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=46}] -1387 19 -194 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus] positioned -1387 19 -194 run function medabots_server:stage/create/ricco_harbor/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s -1476 14 -176 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=46}] -1387 19 -194 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=46}] -1386 19 -196 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=46}] -1385 19 -192 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1387 19 -194 run function medabots_server:stage/create/ricco_harbor/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1386 19 -196 run function medabots_server:stage/create/ricco_harbor/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1385 19 -192 run function medabots_server:stage/create/ricco_harbor/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s -1476 14 -176 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=46}] -1476 14 -174 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=46}] -1387 19 -194 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=46}] -1387 19 -196 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1476 14 -174 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1387 19 -194 run function medabots_server:stage/create/ricco_harbor/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1387 19 -196 run function medabots_server:stage/create/ricco_harbor/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s -1476 14 -176 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=46}] -1387 19 -194 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=46}] -1431 16 -152 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=46}] -1439 28 -197 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1387 19 -194 run function medabots_server:stage/create/ricco_harbor/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1431 16 -152 run function medabots_server:stage/create/ricco_harbor/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1439 28 -197 run function medabots_server:stage/create/ricco_harbor/random_neutral

summon minecraft:armor_stand -1426 38 -159 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[-180.0f,0.0f]}

scoreboard players set @a[x=-1504,y=8,z=-210,dx=275,dy=41,dz=93] Stage 46
scoreboard players set @a[x=-1504,y=8,z=-210,dx=275,dy=41,dz=93] State 1
loot spawn -1443 16 -157 loot medabots_server:gameplay/random_chance/1_in_84
execute as @a[x=-1504,y=8,z=-210,dx=275,dy=41,dz=93] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
execute unless entity @e[x=-1442.5,y=16,z=-156.5,distance=..0.7,type=minecraft:item,nbt={Item:{tag:{Success:1b}}}] run scoreboard players set @a[x=-1504,y=8,z=-210,dx=275,dy=41,dz=93] MusicType 24
execute if entity @e[x=-1442.5,y=16,z=-156.5,distance=..0.7,type=minecraft:item,nbt={Item:{tag:{Success:1b}}}] run scoreboard players set @a[x=-1504,y=8,z=-210,dx=275,dy=41,dz=93] MusicType 25
execute if entity @e[x=-1442.5,y=16,z=-156.5,distance=..0.7,type=minecraft:item,nbt={Item:{tag:{Success:1b}}}] run advancement grant @a[x=-1504,y=8,z=-210,dx=275,dy=41,dz=93] only medabots_server:easter_eggs/this_is_not_delfino_plaza
kill @e[x=-1442.5,y=16,z=-156.5,distance=..0.7,type=minecraft:item,nbt={Item:{tag:{Success:1b}}}]