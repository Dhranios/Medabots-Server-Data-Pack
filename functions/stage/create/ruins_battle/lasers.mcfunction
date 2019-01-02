setblock -1998 51 -582 minecraft:air
setblock -1996 51 -582 minecraft:air
setblock -1998 53 -583 minecraft:red_wool
setblock -1996 53 -583 minecraft:red_wool
summon minecraft:area_effect_cloud -1999 45 -566 {CustomName:"{\"translate\":\"medabots_server:block.floor_switch\"}",Tags:["floor_switch","blue_floor_switch"],Duration:2147483647}
summon minecraft:area_effect_cloud -1994 45 -566 {CustomName:"{\"translate\":\"medabots_server:block.floor_switch\"}",Tags:["floor_switch","blue_floor_switch"],Duration:2147483647}
summon minecraft:area_effect_cloud -1991 45 -563 {CustomName:"{\"translate\":\"medabots_server:block.floor_switch\"}",Tags:["floor_switch","blue_floor_switch"],Duration:2147483647}
summon minecraft:area_effect_cloud -1991 45 -558 {CustomName:"{\"translate\":\"medabots_server:block.floor_switch\"}",Tags:["floor_switch","blue_floor_switch"],Duration:2147483647}
summon minecraft:area_effect_cloud -1994 45 -555 {CustomName:"{\"translate\":\"medabots_server:block.floor_switch\"}",Tags:["floor_switch","blue_floor_switch"],Duration:2147483647}
summon minecraft:area_effect_cloud -1999 45 -555 {CustomName:"{\"translate\":\"medabots_server:block.floor_switch\"}",Tags:["floor_switch","blue_floor_switch"],Duration:2147483647}
summon minecraft:area_effect_cloud -2002 45 -558 {CustomName:"{\"translate\":\"medabots_server:block.floor_switch\"}",Tags:["floor_switch","blue_floor_switch"],Duration:2147483647}
summon minecraft:area_effect_cloud -2002 45 -563 {CustomName:"{\"translate\":\"medabots_server:block.floor_switch\"}",Tags:["floor_switch","blue_floor_switch"],Duration:2147483647}
summon minecraft:area_effect_cloud -1999 45 -579 {CustomName:"{\"translate\":\"medabots_server:block.laser_trap\"}",Tags:["laser_trap","delay_10"],Duration:2147483647}
summon minecraft:area_effect_cloud -1994 45 -579 {CustomName:"{\"translate\":\"medabots_server:block.laser_trap\"}",Tags:["laser_trap","delay_10"],Duration:2147483647}
summon minecraft:area_effect_cloud -1978 45 -563 {CustomName:"{\"translate\":\"medabots_server:block.laser_trap\"}",Tags:["laser_trap","delay_10"],Duration:2147483647}
summon minecraft:area_effect_cloud -1978 45 -558 {CustomName:"{\"translate\":\"medabots_server:block.laser_trap\"}",Tags:["laser_trap","delay_10"],Duration:2147483647}
summon minecraft:area_effect_cloud -1994 45 -542 {CustomName:"{\"translate\":\"medabots_server:block.laser_trap\"}",Tags:["laser_trap","delay_10"],Duration:2147483647}
summon minecraft:area_effect_cloud -1999 45 -542 {CustomName:"{\"translate\":\"medabots_server:block.laser_trap\"}",Tags:["laser_trap","delay_10"],Duration:2147483647}
summon minecraft:area_effect_cloud -2015 45 -558 {CustomName:"{\"translate\":\"medabots_server:block.laser_trap\"}",Tags:["laser_trap","delay_10"],Duration:2147483647}
summon minecraft:area_effect_cloud -2015 45 -563 {CustomName:"{\"translate\":\"medabots_server:block.laser_trap\"}",Tags:["laser_trap","delay_10"],Duration:2147483647}
setblock -1999 45 -579 minecraft:structure_block[mode=load]{name:"medabots_server:stage/laser_trap",mode:"LOAD"}
setblock -1994 45 -579 minecraft:structure_block[mode=load]{name:"medabots_server:stage/laser_trap",mode:"LOAD"}
setblock -1978 45 -563 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/laser_trap",mode:"LOAD"}
setblock -1978 45 -558 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/laser_trap",mode:"LOAD"}
setblock -1994 45 -542 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/laser_trap",mode:"LOAD"}
setblock -1999 45 -542 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/laser_trap",mode:"LOAD"}
setblock -2015 45 -558 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/laser_trap",mode:"LOAD"}
setblock -2015 45 -563 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/laser_trap",mode:"LOAD"}
setblock -1999 46 -579 minecraft:redstone_block
setblock -1994 46 -579 minecraft:redstone_block
setblock -1978 46 -563 minecraft:redstone_block
setblock -1978 46 -558 minecraft:redstone_block
setblock -1994 46 -542 minecraft:redstone_block
setblock -1999 46 -542 minecraft:redstone_block
setblock -2015 46 -558 minecraft:redstone_block
setblock -2015 46 -563 minecraft:redstone_block
teleport @a[x=-1998,y=51,z=-582,distance=..0.7,limit=1] -1996 45 -557
teleport @a[x=-1996,y=51,z=-582,distance=..0.7,limit=1] -1997 45 -564
scoreboard players set @e[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42] Stage 100
scoreboard players set @a[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42] Battle 1