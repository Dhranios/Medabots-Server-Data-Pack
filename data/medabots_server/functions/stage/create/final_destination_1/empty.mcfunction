
execute if entity @s[scores={ArenaType=0}] run teleport @s -2047 43 -220 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[x=-2066,y=43,z=-197,dx=51,dy=3,dz=3,scores={StageIndex=0}] -2035 43 -220 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus] positioned -2035 43 -220 run function medabots_server:stage/create/final_destination_1/enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s -2047 43 -220 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-2066,y=43,z=-197,dx=51,dy=3,dz=3,scores={StageIndex=0}] -2035 43 -220 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-2066,y=43,z=-197,dx=51,dy=3,dz=3,scores={StageIndex=1}] -2034 43 -222 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-2066,y=43,z=-197,dx=51,dy=3,dz=3,scores={StageIndex=2}] -2033 43 -218 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -2035 43 -220 run function medabots_server:stage/create/final_destination_1/enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -2034 43 -222 run function medabots_server:stage/create/final_destination_1/enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -2033 43 -218 run function medabots_server:stage/create/final_destination_1/enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s -2047 43 -220 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-2066,y=43,z=-197,dx=51,dy=3,dz=3,scores={StageIndex=0}] -2047 43 -218 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-2066,y=43,z=-197,dx=51,dy=3,dz=3,scores={StageIndex=1}] -2035 43 -220 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-2066,y=43,z=-197,dx=51,dy=3,dz=3,scores={StageIndex=2}] -2035 43 -222 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -2047 43 -218 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -2035 43 -220 run function medabots_server:stage/create/final_destination_1/enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -2035 43 -222 run function medabots_server:stage/create/final_destination_1/enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s -2047 43 -220 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-2066,y=43,z=-197,dx=51,dy=3,dz=3,scores={StageIndex=0}] -2035 43 -220 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-2066,y=43,z=-197,dx=51,dy=3,dz=3,scores={StageIndex=1}] -2041 43 -217 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-2066,y=43,z=-197,dx=51,dy=3,dz=3,scores={StageIndex=2}] -2041 43 -223 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -2035 43 -220 run function medabots_server:stage/create/final_destination_1/neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -2041 43 -217 run function medabots_server:stage/create/final_destination_1/neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -2041 43 -223 run function medabots_server:stage/create/final_destination_1/neutral

summon minecraft:armor_stand -2041 43 -223 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[0.0f,0.0f]}

scoreboard players set @a[x=-2066,y=0,z=-245,dx=51,dy=53,dz=51,tag=medabot] Stage 61
scoreboard players set @a[x=-2066,y=0,z=-245,dx=51,dy=53,dz=51,tag=medabot] MusicType 51
execute as @a[x=-2066,y=0,z=-245,dx=51,dy=53,dz=51,tag=medabot] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-2066,y=0,z=-245,dx=51,dy=53,dz=51,tag=medabot] Battle 1