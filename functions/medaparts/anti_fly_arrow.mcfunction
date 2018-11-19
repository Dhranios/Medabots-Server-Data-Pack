# Name the arrow
data merge entity @s[tag=!anti_fly,nbt={CustomPotionEffects:[{Id:18b,Amplifier:8b,Duration:0,Ambient:1b,ShowParticles:0b}]}] {CustomName:"{\"translate\":\"medabots_server:move.anti_fly\"}",Tags:["anti_fly"]}

# Leave a 2 tick trail
tag @s[tag=anti_fly] add life_time
execute if entity @s[tag=anti_fly,scores={LifeTime=2..}] run summon minecraft:armor_stand ~ ~-1 ~ {CustomName:"{\"translate\":\"medabots_server:move.anti_fly\"}",Invisible:1b,NoGravity:1b,Marker:1b,Small:1b,Invulnerable:1b,Tags:["anti_fly","life_time"]}

# destroy fly legs if close to a player
execute if entity @s[tag=anti_fly,tag=in_ground] run scoreboard players set @a[distance=..3,scores={Fly=1..}] LegsHP 0