data modify entity @e[tag=build_stage,limit=1] Item.tag.medabots_server.stage_data append value {position:[0,0,0],object:[""],nbt:{},additional_data:[0,0,0,0,0,0,0,0]}

teleport @s[tag=bomb] ~ ~1 ~
teleport @s[tag=balloon_bomb] ~ ~1 ~
teleport @s[tag=ice_block] ~ ~1 ~
teleport @s[tag=raft] ~ ~1 ~
teleport @s[tag=round_stone] ~ ~1 ~

execute store result entity @e[tag=build_stage,limit=1] Item.tag.medabots_server.stage_data[-1].position[0] int 1 run data get entity @s Pos[0]
execute store result entity @e[tag=build_stage,limit=1] Item.tag.medabots_server.stage_data[-1].position[1] int 1 run data get entity @s Pos[1]
execute store result entity @e[tag=build_stage,limit=1] Item.tag.medabots_server.stage_data[-1].position[2] int 1 run data get entity @s Pos[2]
data modify entity @e[tag=build_stage,limit=1] Item.tag.medabots_server.stage_data[-1].object set from entity @s Tags

execute if entity @s[tag=mission] run data modify entity @e[tag=build_stage,limit=1] Item.tag.medabots_server.stage_data[-1].nbt set from entity @s ArmorItems[3]
execute if entity @s[tag=enemy_medabot] run data modify entity @e[tag=build_stage,limit=1] Item.tag.medabots_server.stage_data[-1].nbt set from entity @s ArmorItems[3]

execute if entity @s[scores={HomeX=-2147483648..}] store result entity @e[tag=build_stage,limit=1] Item.tag.medabots_server.stage_data[-1].additional_data[0] int 1 run scoreboard players get @s HomeX
execute if entity @s[scores={HomeY=0..}] store result entity @e[tag=build_stage,limit=1] Item.tag.medabots_server.stage_data[-1].additional_data[1] int 1 run scoreboard players get @s HomeY
execute if entity @s[scores={HomeZ=-2147483648..}] store result entity @e[tag=build_stage,limit=1] Item.tag.medabots_server.stage_data[-1].additional_data[2] int 1 run scoreboard players get @s HomeZ
execute if entity @s[scores={Moving=0..}] store result entity @e[tag=build_stage,limit=1] Item.tag.medabots_server.stage_data[-1].additional_data[3] int 1 run scoreboard players get @s Moving
execute if entity @s[scores={Range=0..}] store result entity @e[tag=build_stage,limit=1] Item.tag.medabots_server.stage_data[-1].additional_data[4] int 1 run scoreboard players get @s Range
execute if entity @s[scores={DelayTime=0..}] store result entity @e[tag=build_stage,limit=1] Item.tag.medabots_server.stage_data[-1].additional_data[5] int 1 run scoreboard players get @s DelayTime
execute if entity @s[scores={PowerNeeded=0..}] store result entity @e[tag=build_stage,limit=1] Item.tag.medabots_server.stage_data[-1].additional_data[6] int 1 run scoreboard players get @s PowerNeeded
execute if entity @s[scores={Speed=0..}] store result entity @e[tag=build_stage,limit=1] Item.tag.medabots_server.stage_data[-1].additional_data[5] int 1 run scoreboard players get @s Speed