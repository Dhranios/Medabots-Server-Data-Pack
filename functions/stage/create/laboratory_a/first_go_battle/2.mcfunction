execute unless entity @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=2] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=2] run function medabots_server:stage/create/laboratory_a/first_go_battle/2_cpu
summon minecraft:armor_stand -1764 44 -302 {CustomName:'{"translate":"medabots_server:block.mirror"}',Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[-45.0f,0.0f]}
summon minecraft:armor_stand -1766 44 -300 {CustomName:'{"translate":"medabots_server:block.mirror"}',Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[-45.0f,0.0f]}
summon minecraft:armor_stand -1768 44 -298 {CustomName:'{"translate":"medabots_server:block.mirror"}',Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[-45.0f,0.0f]}
summon minecraft:armor_stand -1770 44 -296 {CustomName:'{"translate":"medabots_server:block.mirror"}',Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[-45.0f,0.0f]}
summon minecraft:armor_stand -1772 44 -293 {CustomName:'{"translate":"medabots_server:block.mirror"}',Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[-45.0f,0.0f]}
summon minecraft:armor_stand -1773 44 -293 {CustomName:'{"translate":"medabots_server:block.mirror"}',Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[45.0f,0.0f]}
summon minecraft:armor_stand -1774 44 -295 {CustomName:'{"translate":"medabots_server:block.mirror"}',Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[45.0f,0.0f]}
summon minecraft:armor_stand -1776 44 -297 {CustomName:'{"translate":"medabots_server:block.mirror"}',Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[45.0f,0.0f]}
summon minecraft:armor_stand -1778 44 -299 {CustomName:'{"translate":"medabots_server:block.mirror"}',Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[45.0f,0.0f]}
summon minecraft:armor_stand -1780 44 -301 {CustomName:'{"translate":"medabots_server:block.mirror"}',Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[45.0f,0.0f]}
setblock -1764 44 -302 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1766 44 -300 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1768 44 -298 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1770 44 -296 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1772 44 -293 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1773 44 -293 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1774 44 -295 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1776 44 -297 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1778 44 -299 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1780 44 -301 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1764 45 -302 minecraft:redstone_block
setblock -1766 45 -300 minecraft:redstone_block
setblock -1768 45 -298 minecraft:redstone_block
setblock -1770 45 -296 minecraft:redstone_block
setblock -1772 45 -293 minecraft:redstone_block
setblock -1773 45 -293 minecraft:redstone_block
setblock -1774 45 -295 minecraft:redstone_block
setblock -1776 45 -297 minecraft:redstone_block
setblock -1778 45 -299 minecraft:redstone_block
setblock -1780 45 -301 minecraft:redstone_block
setblock -1772 44 -313 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/door",mode:"LOAD"}
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1772 44 -302
effect give @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=2] minecraft:night_vision 2 0 true
effect give @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=2] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=2] Battle 2
teleport @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=2] -1773 44 -298
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1771 44 -300 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1774 44 -300 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:laboratory_a/robattle value 3600
bossbar set medabots_server:laboratory_a/robattle players @a[scores={Stage=26}]