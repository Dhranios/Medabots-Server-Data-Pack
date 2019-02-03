execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=4] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=4] run function medabots_server:stage/create/boxer/second_go_battle/4_cpu
setblock -1902 44 -585 minecraft:stone_slab
setblock -1904 44 -583 minecraft:stone_slab
setblock -1906 44 -581 minecraft:stone_slab
setblock -1908 44 -584 minecraft:stone_slab
setblock -1911 44 -583 minecraft:stone_slab
setblock -1911 44 -586 minecraft:stone_slab
setblock -1913 44 -587 minecraft:stone_slab
setblock -1911 44 -590 minecraft:stone_slab
setblock -1911 44 -592 minecraft:stone_slab
setblock -1909 44 -595 minecraft:stone_slab
setblock -1906 44 -593 minecraft:stone_slab
setblock -1903 44 -594 minecraft:stone_slab
setblock -1902 44 -592 minecraft:stone_slab
setblock -1900 44 -590 minecraft:stone_slab
setblock -1900 44 -587 minecraft:stone_slab
setblock -1901 44 -582 minecraft:structure_block[mode=load]{name:"medabots_server:stage/door",mode:"LOAD"}
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1901 44 -588
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=4] minecraft:night_vision 2 0 true
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=4] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=4] Battle 2
teleport @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=4] -1912 44 -588
summon minecraft:area_effect_cloud -1907 44 -589 {CustomName:"{\"translate\":\"medabots_server:message.stage.mission\"}",Tags:["mission","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:boxer/time value 3600
bossbar set medabots_server:boxer/time players @a[scores={Stage=80}]