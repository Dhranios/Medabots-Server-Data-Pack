execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=7] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=7] run function medabots_server:stage/create/boxer/second_go_battle/7_cpu
summon minecraft:area_effect_cloud -1892 44 -561 {CustomName:"{\"translate\":\"medabots_server:block.gas_floor\"}",Tags:["gas_floor","confuse","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1887 44 -561 {CustomName:"{\"translate\":\"medabots_server:block.gas_floor\"}",Tags:["gas_floor","no_defend","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1900 44 -569 {CustomName:"{\"translate\":\"medabots_server:block.gas_floor\"}",Tags:["gas_floor","confuse","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1900 44 -574 {CustomName:"{\"translate\":\"medabots_server:block.gas_floor\"}",Tags:["gas_floor","ineffective","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1892 44 -582 {CustomName:"{\"translate\":\"medabots_server:block.gas_floor\"}",Tags:["gas_floor","ineffective","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1887 44 -582 {CustomName:"{\"translate\":\"medabots_server:block.gas_floor\"}",Tags:["gas_floor","no_defend","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1879 44 -574 {CustomName:"{\"translate\":\"medabots_server:block.gas_floor\"}",Tags:["gas_floor","no_defend","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1879 44 -569 {CustomName:"{\"translate\":\"medabots_server:block.gas_floor\"}",Tags:["gas_floor","falling_effect","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1887 44 -569 {CustomName:"{\"translate\":\"medabots_server:block.gas_floor\"}",Tags:["gas_floor","falling_effect","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1892 44 -569 {CustomName:"{\"translate\":\"medabots_server:block.gas_floor\"}",Tags:["gas_floor","no_defend","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1892 44 -574 {CustomName:"{\"translate\":\"medabots_server:block.gas_floor\"}",Tags:["gas_floor","ineffective","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1887 44 -574 {CustomName:"{\"translate\":\"medabots_server:block.gas_floor\"}",Tags:["gas_floor","confuse","enabled"],Duration:2147483647}
setblock -1890 44 -558 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/door",mode:"LOAD"}
setblock -1879 44 -562 minecraft:structure_block[mode=load]{name:"medabots_server:stage/door",mode:"LOAD"}
setblock -1876 44 -571 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
setblock -1880 44 -582 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
setblock -1889 44 -585 minecraft:structure_block[mode=load]{name:"medabots_server:stage/door",mode:"LOAD"}
setblock -1900 44 -581 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/door",mode:"LOAD"}
setblock -1903 44 -572 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
setblock -1899 44 -561 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1889 44 -565
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=7] minecraft:night_vision 2 0 true
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=7] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=7] Battle 2
teleport @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=7] -1890 44 -578
summon minecraft:armor_stand -1892 44 -572 {Invisible:1b,Marker:1b,Small:1b,CustomName:"{\"translate\":\"medabots_server:entity.mr_referee\"}",Tags:["mr_referee"],Rotation:[-90.0f,0.0f]}
bossbar set medabots_server:boxer/time value 3600
bossbar set medabots_server:boxer/time players @a[scores={Stage=80}]