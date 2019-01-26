execute unless entity @a[x=-1668,y=51,z=-247,dx=105,dy=4,dz=63,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1668,y=51,z=-247,dx=105,dy=4,dz=63,tag=0] run function medabots_server:stage/create/snowfield_a/first_go_battle/0_cpu
summon minecraft:area_effect_cloud -1634 45 -201 {CustomName:"{\"translate\":\"medabots_server:entity.ice_block\"}",Tags:["ice_block","hostile","killerable"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:ice"},NoGravity:1b,Tags:["ice_block","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["ice_block","hostile","killerable"]}]}
summon minecraft:area_effect_cloud -1631 45 -203 {CustomName:"{\"translate\":\"medabots_server:entity.ice_block\"}",Tags:["ice_block","hostile","killerable"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:ice"},NoGravity:1b,Tags:["ice_block","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["ice_block","hostile","killerable"]}]}
summon minecraft:area_effect_cloud -1627 45 -204 {CustomName:"{\"translate\":\"medabots_server:entity.ice_block\"}",Tags:["ice_block","hostile","killerable"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:ice"},NoGravity:1b,Tags:["ice_block","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["ice_block","hostile","killerable"]}]}
summon minecraft:area_effect_cloud -1625 45 -207 {CustomName:"{\"translate\":\"medabots_server:entity.ice_block\"}",Tags:["ice_block","hostile","killerable"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:ice"},NoGravity:1b,Tags:["ice_block","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["ice_block","hostile","killerable"]}]}
summon minecraft:area_effect_cloud -1624 45 -211 {CustomName:"{\"translate\":\"medabots_server:entity.ice_block\"}",Tags:["ice_block","hostile","killerable"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:ice"},NoGravity:1b,Tags:["ice_block","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["ice_block","hostile","killerable"]}]}
summon minecraft:area_effect_cloud -1628 45 -212 {CustomName:"{\"translate\":\"medabots_server:entity.ice_block\"}",Tags:["ice_block","hostile","killerable"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:ice"},NoGravity:1b,Tags:["ice_block","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["ice_block","hostile","killerable"]}]}
summon minecraft:area_effect_cloud -1632 45 -210 {CustomName:"{\"translate\":\"medabots_server:entity.ice_block\"}",Tags:["ice_block","hostile","killerable"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:ice"},NoGravity:1b,Tags:["ice_block","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["ice_block","hostile","killerable"]}]}
summon minecraft:area_effect_cloud -1634 45 -208 {CustomName:"{\"translate\":\"medabots_server:entity.ice_block\"}",Tags:["ice_block","hostile","killerable"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:ice"},NoGravity:1b,Tags:["ice_block","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["ice_block","hostile","killerable"]}]}
setblock -1623 45 -203 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1629 45 -205
effect give @a[x=-1668,y=51,z=-247,dx=105,dy=4,dz=63,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1668,y=51,z=-247,dx=105,dy=4,dz=63,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1668,y=51,z=-247,dx=105,dy=4,dz=63,tag=0] Battle 2
teleport @a[x=-1668,y=51,z=-247,dx=105,dy=4,dz=63,tag=0] -1630 45 -208
summon minecraft:area_effect_cloud -1629 45 -207 {CustomName:"{\"translate\":\"medabots_server:message.stage.mission\"}",Tags:["mission","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:snowfield_a/time value 3600
bossbar set medabots_server:snowfield_a/time players @a[scores={Stage=14}]