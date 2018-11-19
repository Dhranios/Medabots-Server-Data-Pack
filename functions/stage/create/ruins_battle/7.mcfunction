setblock -1998 51 -582 minecraft:air
setblock -1996 51 -582 minecraft:air
setblock -1998 53 -583 minecraft:red_wool
setblock -1996 53 -583 minecraft:red_wool
summon minecraft:area_effect_cloud -2002 45 -566 {CustomName:"{\"translate\":\"medabots_server:block.floor_switch\"}",Tags:["floor_switch","green_floor_switch"],Duration:2147483647}
summon minecraft:tnt -2002 45 -566 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:600s,Tags:["bomb","hostile","killerable"]}
summon minecraft:tnt -1991 45 -555 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:1200s,Tags:["bomb","hostile","killerable"]}
summon minecraft:tnt -1991 45 -566 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:1800s,Tags:["bomb","hostile","killerable"]}
summon minecraft:tnt -2002 45 -555 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:2400s,Tags:["bomb","hostile","killerable"]}
summon minecraft:area_effect_cloud -2003 45 -569 {CustomName:"{\"translate\":\"medabots_server:block.press_wall\"}",Tags:["press_wall","east","extend"],Duration:2147483647}
summon minecraft:area_effect_cloud -1990 45 -569 {CustomName:"{\"translate\":\"medabots_server:block.press_wall\"}",Tags:["press_wall","west","extend"],Duration:2147483647}
summon minecraft:area_effect_cloud -1988 45 -567 {CustomName:"{\"translate\":\"medabots_server:block.press_wall\"}",Tags:["press_wall","south","extend"],Duration:2147483647}
summon minecraft:area_effect_cloud -1988 45 -554 {CustomName:"{\"translate\":\"medabots_server:block.press_wall\"}",Tags:["press_wall","north","extend"],Duration:2147483647}
summon minecraft:area_effect_cloud -1990 45 -552 {CustomName:"{\"translate\":\"medabots_server:block.press_wall\"}",Tags:["press_wall","west","extend"],Duration:2147483647}
summon minecraft:area_effect_cloud -2003 45 -552 {CustomName:"{\"translate\":\"medabots_server:block.press_wall\"}",Tags:["press_wall","east","extend"],Duration:2147483647}
summon minecraft:area_effect_cloud -2005 45 -554 {CustomName:"{\"translate\":\"medabots_server:block.press_wall\"}",Tags:["press_wall","north","extend"],Duration:2147483647}
summon minecraft:area_effect_cloud -2005 45 -567 {CustomName:"{\"translate\":\"medabots_server:block.press_wall\"}",Tags:["press_wall","south","extend"],Duration:2147483647}
scoreboard players set @e[x=-2003,y=45,z=-569,distance=..1,type=minecraft:area_effect_cloud,tag=press_wall] Range 5
scoreboard players set @e[x=-1990,y=45,z=-569,distance=..1,type=minecraft:area_effect_cloud,tag=press_wall] Range 5
scoreboard players set @e[x=-1988,y=45,z=-567,distance=..1,type=minecraft:area_effect_cloud,tag=press_wall] Range 5
scoreboard players set @e[x=-1988,y=45,z=-554,distance=..1,type=minecraft:area_effect_cloud,tag=press_wall] Range 5
scoreboard players set @e[x=-1990,y=45,z=-552,distance=..1,type=minecraft:area_effect_cloud,tag=press_wall] Range 5
scoreboard players set @e[x=-2003,y=45,z=-552,distance=..1,type=minecraft:area_effect_cloud,tag=press_wall] Range 5
scoreboard players set @e[x=-2005,y=45,z=-554,distance=..1,type=minecraft:area_effect_cloud,tag=press_wall] Range 5
scoreboard players set @e[x=-2005,y=45,z=-567,distance=..1,type=minecraft:area_effect_cloud,tag=press_wall] Range 5
setblock -1997 45 -569 minecraft:structure_block[mode=load]{name:"medabots_server:stage/door",mode:"LOAD"}
setblock -1988 45 -561 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
setblock -1996 45 -552 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/door",mode:"LOAD"}
setblock -2005 45 -560 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
setblock -1997 46 -569 minecraft:redstone_block
setblock -1988 46 -561 minecraft:redstone_block
setblock -1996 46 -552 minecraft:redstone_block
setblock -2005 46 -560 minecraft:redstone_block
teleport @a[x=-1998,y=51,z=-582,distance=..0.7,limit=1] -1996 45 -557
teleport @a[x=-1996,y=51,z=-582,distance=..0.7,limit=1] -1997 45 -564
scoreboard players set @e[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42] Stage 100
scoreboard players set @a[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42] Battle 1