summon minecraft:area_effect_cloud -1981 45 -576 {CustomName:"{\"translate\":\"medabots_server:entity.round_stone\"}",Tags:["round_stone","hostile","killerable"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:diorite"},NoGravity:1b,Tags:["round_stone","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["round_stone","hostile","killerable"]}]}
summon minecraft:area_effect_cloud -2012 45 -558 {CustomName:"{\"translate\":\"medabots_server:block.floor_switch\"}",Tags:["floor_switch","yellow_floor_switch","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1999 45 -576 {CustomName:"{\"translate\":\"medabots_server:block.floor_switch\"}",Tags:["floor_switch","yellow_floor_switch","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1981 45 -563 {CustomName:"{\"translate\":\"medabots_server:block.floor_switch\"}",Tags:["floor_switch","yellow_floor_switch","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1994 45 -545 {CustomName:"{\"translate\":\"medabots_server:block.floor_switch\"}",Tags:["floor_switch","yellow_floor_switch","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1999 45 -579 {CustomName:"{\"translate\":\"medabots_server:block.fan\"}",Tags:["fan"],Duration:2147483647}
summon minecraft:area_effect_cloud -1978 45 -563 {CustomName:"{\"translate\":\"medabots_server:block.fan\"}",Tags:["fan"],Duration:2147483647}
summon minecraft:area_effect_cloud -1994 45 -542 {CustomName:"{\"translate\":\"medabots_server:block.fan\"}",Tags:["fan"],Duration:2147483647}
summon minecraft:area_effect_cloud -2015 45 -558 {CustomName:"{\"translate\":\"medabots_server:block.fan\"}",Tags:["fan"],Duration:2147483647}
summon minecraft:area_effect_cloud -1981 45 -577 {CustomName:"{\"translate\":\"medabots_server:block.spring_wall\"}",Tags:["spring_wall","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1980 45 -545 {CustomName:"{\"translate\":\"medabots_server:block.spring_wall\"}",Tags:["spring_wall","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -2012 45 -544 {CustomName:"{\"translate\":\"medabots_server:block.spring_wall\"}",Tags:["spring_wall","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -2013 45 -576 {CustomName:"{\"translate\":\"medabots_server:block.spring_wall\"}",Tags:["spring_wall","delay_10","enabled"],Duration:2147483647}
scoreboard players set @e[x=-1999,y=45,z=-579,distance=..1,type=minecraft:area_effect_cloud,tag=fan] Moving 0
scoreboard players set @e[x=-1999,y=45,z=-579,distance=..1,type=minecraft:area_effect_cloud,tag=fan] Range 37
scoreboard players set @e[x=-1978,y=45,z=-563,distance=..1,type=minecraft:area_effect_cloud,tag=fan] Moving 0
scoreboard players set @e[x=-1978,y=45,z=-563,distance=..1,type=minecraft:area_effect_cloud,tag=fan] Range 37
scoreboard players set @e[x=-1994,y=45,z=-542,distance=..1,type=minecraft:area_effect_cloud,tag=fan] Moving 0
scoreboard players set @e[x=-1994,y=45,z=-542,distance=..1,type=minecraft:area_effect_cloud,tag=fan] Range 37
scoreboard players set @e[x=-2015,y=45,z=-558,distance=..1,type=minecraft:area_effect_cloud,tag=fan] Moving 0
scoreboard players set @e[x=-2015,y=45,z=-558,distance=..1,type=minecraft:area_effect_cloud,tag=fan] Range 37
fill -1980 45 -576 -1980 48 -576 minecraft:bedrock
fill -1981 45 -544 -1981 48 -544 minecraft:bedrock
fill -2013 45 -545 -2013 48 -545 minecraft:bedrock
fill -2012 45 -577 -2012 48 -577 minecraft:bedrock
setblock -1981 45 -577 minecraft:structure_block[mode=load]{name:"medabots_server:stage/spring_wall",mode:"LOAD"}
setblock -1980 45 -545 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/spring_wall",mode:"LOAD"}
setblock -2012 45 -544 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/spring_wall",mode:"LOAD"}
setblock -2013 45 -576 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/spring_wall",mode:"LOAD"}
setblock -1981 46 -577 minecraft:redstone_block
setblock -1980 46 -545 minecraft:redstone_block
setblock -2012 46 -544 minecraft:redstone_block
setblock -2013 46 -576 minecraft:redstone_block
setblock -1999 45 -579 minecraft:structure_block[mode=load]{name:"medabots_server:stage/fan",mode:"LOAD"}
setblock -1978 45 -563 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/fan",mode:"LOAD"}
setblock -1994 45 -542 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/fan",mode:"LOAD"}
setblock -2015 45 -558 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/fan",mode:"LOAD"}
setblock -1999 46 -579 minecraft:redstone_block
setblock -1978 46 -563 minecraft:redstone_block
setblock -1994 46 -542 minecraft:redstone_block
setblock -2015 46 -558 minecraft:redstone_block
teleport @a[x=-2017,y=51,z=-581,dx=42,dy=4,dz=42,tag=-1] -1996 45 -557
teleport @a[x=-2017,y=51,z=-581,dx=42,dy=4,dz=42,tag=0] -1997 45 -564
teleport @s[tag=-1] -1996 45 -557
tag @a[x=-1996,y=45,z=-557,distance=..1] remove -1
tag @a[x=-1997,y=45,z=-564,distance=..1] remove 0
scoreboard players set @a[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42] Stage 49
scoreboard players set @a[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42] Battle 1
scoreboard players set @a[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42] Music 0
scoreboard players set @a[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42] MusicType 0