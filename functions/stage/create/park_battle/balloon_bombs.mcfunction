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
teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,tag=-1] -1929 45 -577
teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,tag=0] -1942 45 -578
teleport @s[tag=-1] -1929 45 -577
tag @a[x=-1929,y=45,z=-577,distance=..1] remove -1
tag @a[x=-1942,y=45,z=-578,distance=..1] remove 0
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] Stage 50
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] Battle 1
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] Music 0
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] MusicType 0