summon minecraft:area_effect_cloud -1944 44 -554 {CustomName:'{"translate":"medabots_server:entity.raft"}',Tags:["raft"],Duration:2147483647}
summon minecraft:area_effect_cloud -1938 44 -543 {CustomName:'{"translate":"medabots_server:entity.raft"}',Tags:["raft"],Duration:2147483647}
summon minecraft:area_effect_cloud -1927 44 -549 {CustomName:'{"translate":"medabots_server:entity.raft"}',Tags:["raft"],Duration:2147483647}
summon minecraft:area_effect_cloud -1933 44 -560 {CustomName:'{"translate":"medabots_server:entity.raft"}',Tags:["raft"],Duration:2147483647}
summon minecraft:area_effect_cloud -1941 45 -562 {CustomName:'{"translate":"medabots_server:block.fan"}',Tags:["fan"],Duration:2147483647}
summon minecraft:area_effect_cloud -1925 45 -557 {CustomName:'{"translate":"medabots_server:block.fan"}',Tags:["fan"],Duration:2147483647}
summon minecraft:area_effect_cloud -1930 45 -541 {CustomName:'{"translate":"medabots_server:block.fan"}',Tags:["fan"],Duration:2147483647}
summon minecraft:area_effect_cloud -1946 45 -546 {CustomName:'{"translate":"medabots_server:block.fan"}',Tags:["fan"],Duration:2147483647}
scoreboard players set @e[x=-1941,y=45,z=-562,distance=..1,type=minecraft:area_effect_cloud,tag=fan] Moving 1
scoreboard players set @e[x=-1941,y=45,z=-562,distance=..1,type=minecraft:area_effect_cloud,tag=fan] Range 15
scoreboard players set @e[x=-1925,y=45,z=-557,distance=..1,type=minecraft:area_effect_cloud,tag=fan] Moving 1
scoreboard players set @e[x=-1925,y=45,z=-557,distance=..1,type=minecraft:area_effect_cloud,tag=fan] Range 15
scoreboard players set @e[x=-1930,y=45,z=-541,distance=..1,type=minecraft:area_effect_cloud,tag=fan] Moving 1
scoreboard players set @e[x=-1930,y=45,z=-541,distance=..1,type=minecraft:area_effect_cloud,tag=fan] Range 15
scoreboard players set @e[x=-1946,y=45,z=-546,distance=..1,type=minecraft:area_effect_cloud,tag=fan] Moving 1
scoreboard players set @e[x=-1946,y=45,z=-546,distance=..1,type=minecraft:area_effect_cloud,tag=fan] Range 15
setblock -1942 45 -549 minecraft:stone_slab
setblock -1933 45 -545 minecraft:stone_slab
setblock -1929 45 -554 minecraft:stone_slab
setblock -1938 45 -558 minecraft:stone_slab
setblock -1929 45 -546 minecraft:comparator[facing=north,mode=compare,powered=false]
setblock -1941 45 -545 minecraft:comparator[facing=east,mode=compare,powered=false]
setblock -1942 45 -557 minecraft:comparator[facing=south,mode=compare,powered=false]
setblock -1930 45 -558 minecraft:comparator[facing=west,mode=compare,powered=false]
setblock -1941 45 -562 minecraft:structure_block[mode=load]{name:"medabots_server:stage/fan",mode:"LOAD"}
setblock -1925 45 -557 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/fan",mode:"LOAD"}
setblock -1930 45 -541 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/fan",mode:"LOAD"}
setblock -1946 45 -546 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/fan",mode:"LOAD"}
setblock -1941 46 -562 minecraft:redstone_block
setblock -1925 46 -557 minecraft:redstone_block
setblock -1930 46 -541 minecraft:redstone_block
setblock -1946 46 -546 minecraft:redstone_block
fill -1945 45 -563 -1945 48 -563 minecraft:bedrock
fill -1946 45 -562 -1946 48 -562 minecraft:bedrock
fill -1947 45 -561 -1947 48 -561 minecraft:bedrock
teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,tag=-1] -1933 45 -551
teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,tag=0] -1938 45 -552
teleport @s[tag=-1] -1933 45 -551
tag @a[x=-1933,y=45,z=-551,distance=..1] remove -1
tag @a[x=-1938,y=45,z=-552,distance=..1] remove 0
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] Stage 50
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] Battle 1
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] Music 0
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] MusicType 0