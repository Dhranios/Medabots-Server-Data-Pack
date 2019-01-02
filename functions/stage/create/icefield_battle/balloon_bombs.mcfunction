setblock -2000 51 -633 minecraft:air
setblock -1998 51 -633 minecraft:air
setblock -2000 53 -635 minecraft:red_wool
setblock -1998 53 -635 minecraft:red_wool
summon minecraft:area_effect_cloud -2000 45 -613 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
summon minecraft:area_effect_cloud -2003 45 -610 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
summon minecraft:area_effect_cloud -2002 45 -605 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
summon minecraft:area_effect_cloud -1997 45 -604 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
summon minecraft:area_effect_cloud -1994 45 -607 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
summon minecraft:area_effect_cloud -1995 45 -612 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
summon minecraft:area_effect_cloud -1999 45 -619 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
summon minecraft:area_effect_cloud -2007 45 -615 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
summon minecraft:area_effect_cloud -2009 45 -609 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
summon minecraft:area_effect_cloud -2007 45 -601 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
summon minecraft:area_effect_cloud -1999 45 -598 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
summon minecraft:area_effect_cloud -1991 45 -600 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
summon minecraft:area_effect_cloud -1988 45 -609 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
summon minecraft:area_effect_cloud -1991 45 -617 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
setblock -1999 45 -621 minecraft:structure_block[mode=load]{name:"medabots_server:stage/door",mode:"LOAD"}
setblock -1986 45 -609 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
setblock -1998 45 -596 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/door",mode:"LOAD"}
setblock -2011 45 -608 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
setblock -1999 46 -621 minecraft:redstone_block
setblock -1986 46 -609 minecraft:redstone_block
setblock -1998 46 -596 minecraft:redstone_block
setblock -2011 46 -608 minecraft:redstone_block
teleport @a[x=-2000,y=51,z=-633,distance=..0.7,limit=1] -1999 45 -605
teleport @a[x=-1998,y=51,z=-633,distance=..0.7,limit=1] -1998 45 -612
scoreboard players set @e[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] Stage 99
scoreboard players set @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] Battle 1