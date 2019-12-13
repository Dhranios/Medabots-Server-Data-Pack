
execute if entity @s[scores={ArenaType=0}] run teleport @s -1991 43 -221 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[x=-2011,y=43,z=-197,dx=53,dy=3,dz=3,scores={StageIndex=0}] -1979 43 -221 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus] positioned -1979 43 -221 run function medabots_server:stage/create/final_destination_2/enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s -1991 43 -221 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-2011,y=43,z=-197,dx=53,dy=3,dz=3,scores={StageIndex=0}] -1979 43 -221 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-2011,y=43,z=-197,dx=53,dy=3,dz=3,scores={StageIndex=1}] -1978 43 -223 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-2011,y=43,z=-197,dx=53,dy=3,dz=3,scores={StageIndex=2}] -1977 43 -219 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1979 43 -221 run function medabots_server:stage/create/final_destination_2/enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1978 43 -223 run function medabots_server:stage/create/final_destination_2/enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1977 43 -219 run function medabots_server:stage/create/final_destination_2/enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s -1991 43 -221 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-2011,y=43,z=-197,dx=53,dy=3,dz=3,scores={StageIndex=0}] -1991 43 -219 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-2011,y=43,z=-197,dx=53,dy=3,dz=3,scores={StageIndex=1}] -1979 43 -221 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-2011,y=43,z=-197,dx=53,dy=3,dz=3,scores={StageIndex=2}] -1979 43 -223 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1991 43 -219 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1979 43 -221 run function medabots_server:stage/create/final_destination_2/enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1979 43 -223 run function medabots_server:stage/create/final_destination_2/enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s -1991 43 -221 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-2011,y=43,z=-197,dx=53,dy=3,dz=3,scores={StageIndex=0}] -1979 43 -221 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-2011,y=43,z=-197,dx=53,dy=3,dz=3,scores={StageIndex=1}] -1985 43 -217 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-2011,y=43,z=-197,dx=53,dy=3,dz=3,scores={StageIndex=2}] -1985 43 -225 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1979 43 -221 run function medabots_server:stage/create/final_destination_2/neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1985 43 -217 run function medabots_server:stage/create/final_destination_2/neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1985 43 -225 run function medabots_server:stage/create/final_destination_2/neutral

summon minecraft:armor_stand -1985 43 -223 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[0.0f,0.0f]}

scoreboard players set @a[x=-2011,y=0,z=-247,dx=53,dy=53,dz=53,tag=medabot] Stage 62
scoreboard players set @a[x=-2011,y=0,z=-247,dx=53,dy=53,dz=53,tag=medabot] MusicType 53
execute as @a[x=-2011,y=0,z=-247,dx=53,dy=53,dz=53,tag=medabot] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-2011,y=0,z=-247,dx=53,dy=53,dz=53,tag=medabot] Battle 1