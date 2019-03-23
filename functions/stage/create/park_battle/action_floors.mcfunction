summon minecraft:area_effect_cloud -1972 45 -551 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","round_stone","moving_1","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1961 45 -562 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","round_stone","moving_2","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1951 45 -552 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","round_stone","moving_3","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1962 45 -541 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","round_stone","moving_4","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1955 45 -558 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","bomb","delay_5","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1955 45 -545 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","bomb","delay_5","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1968 45 -545 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","bomb","delay_5","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1968 45 -558 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","bomb","delay_5","enabled"],Duration:2147483647}
fill -1950 45 -561 -1950 48 -561 minecraft:bedrock
fill -1951 45 -562 -1951 48 -562 minecraft:bedrock
fill -1952 45 -563 -1952 48 -563 minecraft:bedrock
teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,tag=-1] -1967 45 -552
teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,tag=0] -1956 45 -551
teleport @s[tag=-1] -1967 45 -552
tag @a[x=-1967,y=45,z=-552,distance=..1] remove -1
tag @a[x=-1956,y=45,z=-551,distance=..1] remove 0
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] Stage 50
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] Battle 1
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] Music 0
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] MusicType 0