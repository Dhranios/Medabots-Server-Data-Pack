tag @a[scores={StageBuild=35}] add success
tag @a[scores={StageBuild=35}] add bound
tellraw @a[scores={StageBuild=35}] {"translate":"medabots_server:message.stage.stage_builder.floor_switch.bound","with":[{"selector":"@s"}],"color":"green"}
execute at @e[tag=new,limit=1] store result score @e[distance=..0.7,tag=floor_switch,limit=1] HomeX run data get entity @s Pos[0]
execute at @e[tag=new,limit=1] store result score @e[distance=..0.7,tag=floor_switch,limit=1] HomeY run data get entity @s Pos[1]
execute at @e[tag=new,limit=1] store result score @e[distance=..0.7,tag=floor_switch,limit=1] HomeZ run data get entity @s Pos[2]