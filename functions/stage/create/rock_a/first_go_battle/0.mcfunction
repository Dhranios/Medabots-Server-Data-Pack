execute unless entity @a[x=-1636,y=51,z=-180,dx=63,dy=4,dz=63,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1636,y=51,z=-180,dx=63,dy=4,dz=63,tag=0] run function medabots_server:stage/create/rock_a/first_go_battle/0_cpu
setblock -1616 45 -167 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1608 45 -171
effect give @a[x=-1636,y=51,z=-180,dx=63,dy=4,dz=63,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1636,y=51,z=-180,dx=63,dy=4,dz=63,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1636,y=51,z=-180,dx=63,dy=4,dz=63,tag=0] Battle 2
teleport @a[x=-1636,y=51,z=-180,dx=63,dy=4,dz=63,tag=0] -1604 45 -170
summon minecraft:armor_stand -1605 45 -172 {CustomName:"{\"translate\":\"medabots_server:entity.mr_referee\"}",Tags:["mr_referee"],Invisible:1b,Rotation:[45.0f,0.0f]}
bossbar set medabots_server:rock_a/time value 3600
bossbar set medabots_server:rock_a/time players @a[scores={Stage=5}]