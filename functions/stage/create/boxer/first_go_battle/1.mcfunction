execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=1] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=1] run function medabots_server:stage/create/boxer/first_go_battle/1_cpu
summon minecraft:item -1859 44 -571 {Item:{id:"minecraft:lapis_lazuli",Count:10b,tag:{medabots_server:{stage_item:1b,id:"medabots_server:medallar_cent"},display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.medallar_cent\"}"}}},Tags:["hostile","do_not_teleport"],Age:-32768s}
summon minecraft:area_effect_cloud -1861 44 -573 {CustomName:"{\"translate\":\"medabots_server:entity.ice_block\"}",Tags:["ice_block","hostile","killerable"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:ice"},NoGravity:1b,Tags:["ice_block","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["ice_block","hostile","killerable"]}]}
summon minecraft:area_effect_cloud -1861 44 -570 {CustomName:"{\"translate\":\"medabots_server:entity.ice_block\"}",Tags:["ice_block","hostile","killerable"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:ice"},NoGravity:1b,Tags:["ice_block","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["ice_block","hostile","killerable"]}]}
summon minecraft:area_effect_cloud -1865 44 -577 {CustomName:"{\"translate\":\"medabots_server:entity.ice_block\"}",Tags:["ice_block","hostile","killerable"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:ice"},NoGravity:1b,Tags:["ice_block","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["ice_block","hostile","killerable"]}]}
summon minecraft:area_effect_cloud -1868 44 -577 {CustomName:"{\"translate\":\"medabots_server:entity.ice_block\"}",Tags:["ice_block","hostile","killerable"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:ice"},NoGravity:1b,Tags:["ice_block","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["ice_block","hostile","killerable"]}]}
summon minecraft:area_effect_cloud -1872 44 -573 {CustomName:"{\"translate\":\"medabots_server:entity.ice_block\"}",Tags:["ice_block","hostile","killerable"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:ice"},NoGravity:1b,Tags:["ice_block","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["ice_block","hostile","killerable"]}]}
summon minecraft:area_effect_cloud -1872 44 -570 {CustomName:"{\"translate\":\"medabots_server:entity.ice_block\"}",Tags:["ice_block","hostile","killerable"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:ice"},NoGravity:1b,Tags:["ice_block","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["ice_block","hostile","killerable"]}]}
summon minecraft:area_effect_cloud -1868 44 -566 {CustomName:"{\"translate\":\"medabots_server:entity.ice_block\"}",Tags:["ice_block","hostile","killerable"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:ice"},NoGravity:1b,Tags:["ice_block","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["ice_block","hostile","killerable"]}]}
summon minecraft:area_effect_cloud -1865 44 -566 {CustomName:"{\"translate\":\"medabots_server:entity.ice_block\"}",Tags:["ice_block","hostile","killerable"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:ice"},NoGravity:1b,Tags:["ice_block","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["ice_block","hostile","killerable"]}]}
summon minecraft:armor_stand -1861 44 -576 {CustomName:"{\"translate\":\"medabots_server:block.mirror\"}",Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[45.0f,0.0f]}
summon minecraft:armor_stand -1862 44 -577 {CustomName:"{\"translate\":\"medabots_server:block.mirror\"}",Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[45.0f,0.0f]}
summon minecraft:armor_stand -1871 44 -566 {CustomName:"{\"translate\":\"medabots_server:block.mirror\"}",Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[45.0f,0.0f]}
summon minecraft:armor_stand -1872 44 -567 {CustomName:"{\"translate\":\"medabots_server:block.mirror\"}",Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[45.0f,0.0f]}
summon minecraft:armor_stand -1871 44 -577 {CustomName:"{\"translate\":\"medabots_server:block.mirror\"}",Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[-45.0f,0.0f]}
summon minecraft:armor_stand -1872 44 -576 {CustomName:"{\"translate\":\"medabots_server:block.mirror\"}",Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[-45.0f,0.0f]}
summon minecraft:armor_stand -1861 44 -567 {CustomName:"{\"translate\":\"medabots_server:block.mirror\"}",Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[-45.0f,0.0f]}
summon minecraft:armor_stand -1862 44 -566 {CustomName:"{\"translate\":\"medabots_server:block.mirror\"}",Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[-45.0f,0.0f]}
setblock -1861 44 -576 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1862 44 -577 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1871 44 -566 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1872 44 -567 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1871 44 -577 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1872 44 -576 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1861 44 -567 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1862 44 -566 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1861 45 -576 minecraft:redstone_block
setblock -1862 45 -577 minecraft:redstone_block
setblock -1871 45 -566 minecraft:redstone_block
setblock -1872 45 -567 minecraft:redstone_block
setblock -1871 45 -577 minecraft:redstone_block
setblock -1872 45 -576 minecraft:redstone_block
setblock -1861 45 -567 minecraft:redstone_block
setblock -1862 45 -566 minecraft:redstone_block
setblock -1876 44 -571 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1865 44 -572
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=1] minecraft:night_vision 2 0 true
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=1] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=1] Battle 2
teleport @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=1] -1862 44 -571
summon minecraft:area_effect_cloud -1863 44 -572 {CustomName:"{\"translate\":\"medabots_server:message.stage.mission\"}",Tags:["mission","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:boxer/time value 3600
bossbar set medabots_server:boxer/time players @a[scores={Stage=80}]