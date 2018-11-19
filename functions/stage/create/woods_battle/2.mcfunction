setblock -1948 51 -641 minecraft:air
setblock -1950 51 -641 minecraft:air
setblock -1948 53 -642 minecraft:red_wool
setblock -1950 53 -642 minecraft:red_wool
summon minecraft:area_effect_cloud -1939 45 -621 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1939 45 -612 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1944 45 -607 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1953 45 -607 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1958 45 -612 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1958 45 -621 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1953 45 -626 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1944 45 -626 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
teleport @a[x=-1948,y=51,z=-641,distance=..0.7,limit=1] -1954 45 -616
teleport @a[x=-1950,y=51,z=-641,distance=..0.7,limit=1] -1943 45 -617
scoreboard players set @e[x=-1972,y=43,z=-640,dx=48,dy=7,dz=48] Stage 98
scoreboard players set @a[x=-1972,y=43,z=-640,dx=48,dy=7,dz=48] Battle 1