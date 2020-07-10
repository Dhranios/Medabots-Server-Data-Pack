
execute if entity @s[scores={ArenaType=0}] run teleport @s 28 55 34 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=46}] 117 60 16 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus] positioned 117 60 16 run function medabots_server:stage/create/ricco_harbor/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s 28 55 34 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=46}] 117 60 16 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=46}] 118 60 14 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=46}] 119 60 18 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 117 60 16 run function medabots_server:stage/create/ricco_harbor/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 118 60 14 run function medabots_server:stage/create/ricco_harbor/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 119 60 18 run function medabots_server:stage/create/ricco_harbor/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s 28 55 34 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=46}] 28 55 36 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=46}] 117 60 16 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=46}] 117 60 14 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 28 55 36 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 117 60 16 run function medabots_server:stage/create/ricco_harbor/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 117 60 14 run function medabots_server:stage/create/ricco_harbor/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s 28 55 34 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=46}] 117 60 16 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=46}] 73 57 58 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=46}] 65 69 13 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 117 60 16 run function medabots_server:stage/create/ricco_harbor/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 73 57 58 run function medabots_server:stage/create/ricco_harbor/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 65 69 13 run function medabots_server:stage/create/ricco_harbor/random_neutral

summon minecraft:armor_stand 78 79 51 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[-180.0f,0.0f]}

execute if entity @s[advancements={medabots_server:main/salesman_quest/knight_medal={start_the_quest=true,find_the_item=false}}] positioned 24 54 66 run function medabots_server:spawn_entities/item/salesman_quest/lost_cargo

scoreboard players set @a[x=0,y=49,z=0,dx=275,dy=41,dz=93] Stage 46
scoreboard players set @a[x=0,y=49,z=0,dx=275,dy=41,dz=93] State 1
loot spawn -1443 16 -157 loot medabots_server:gameplay/random_chance/1_in_84
execute as @a[x=0,y=49,z=0,dx=275,dy=41,dz=93] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
execute unless entity @e[x=61.5,y=57,z=53.5,distance=..0.7,type=minecraft:item,nbt={Item:{tag:{Success:1b}}}] run scoreboard players set @a[x=0,y=49,z=0,dx=275,dy=41,dz=93] MusicType 24
execute if entity @e[x=61.5,y=57,z=53.5,distance=..0.7,type=minecraft:item,nbt={Item:{tag:{Success:1b}}}] run scoreboard players set @a[x=0,y=49,z=0,dx=275,dy=41,dz=93] MusicType 25
execute if entity @e[x=61.5,y=57,z=53.5,distance=..0.7,type=minecraft:item,nbt={Item:{tag:{Success:1b}}}] run advancement grant @a[x=0,y=49,z=0,dx=275,dy=41,dz=93] only medabots_server:easter_eggs/this_is_not_delfino_plaza
kill @e[x=61.5,y=57,z=53.5,distance=..0.7,type=minecraft:item,nbt={Item:{tag:{Success:1b}}}]