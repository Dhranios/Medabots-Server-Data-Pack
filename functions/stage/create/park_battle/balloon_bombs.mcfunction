setblock -1950 51 -590 minecraft:air
setblock -1948 51 -590 minecraft:air
setblock -1950 53 -591 minecraft:red_wool
setblock -1948 53 -591 minecraft:red_wool
summon minecraft:area_effect_cloud -1942 45 -571 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
summon minecraft:area_effect_cloud -1942 45 -575 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
summon minecraft:area_effect_cloud -1942 45 -580 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
summon minecraft:area_effect_cloud -1942 45 -584 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
summon minecraft:area_effect_cloud -1938 45 -584 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
summon minecraft:area_effect_cloud -1938 45 -580 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
summon minecraft:area_effect_cloud -1938 45 -575 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
summon minecraft:area_effect_cloud -1938 45 -571 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
summon minecraft:area_effect_cloud -1933 45 -571 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
summon minecraft:area_effect_cloud -1933 45 -575 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
summon minecraft:area_effect_cloud -1933 45 -580 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
summon minecraft:area_effect_cloud -1933 45 -584 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
summon minecraft:area_effect_cloud -1929 45 -584 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
summon minecraft:area_effect_cloud -1929 45 -580 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
summon minecraft:area_effect_cloud -1929 45 -575 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
summon minecraft:area_effect_cloud -1929 45 -571 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
fill -1947 45 -568 -1947 48 -568 minecraft:bedrock
fill -1946 45 -567 -1946 48 -567 minecraft:bedrock
fill -1945 45 -566 -1945 48 -566 minecraft:bedrock
teleport @a[x=-1950,y=51,z=-590,distance=..0.7,limit=1] -1929 45 -577
teleport @a[x=-1948,y=51,z=-590,distance=..0.7,limit=1] -1942 45 -578
scoreboard players set @e[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] Stage 101
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] Battle 1