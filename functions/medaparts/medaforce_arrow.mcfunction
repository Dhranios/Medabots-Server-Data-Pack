# Name the arrow
data merge entity @s[tag=!ultra_shot,nbt={CustomPotionEffects:[{Id:18b,Amplifier:4b,Duration:0,Ambient:1b,ShowParticles:0b}]}] {CustomName:"{\"translate\":\"medabots_server:move.kabuto\"}",Tags:["ultra_shot"]}

# Leave yellow light trail
execute if entity @s[tag=ultra_shot] run summon minecraft:armor_stand ~ ~-1.7 ~ {CustomName:"{\"translate\":\"medabots_server:move.kabuto\"}",Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:yellow_stained_glass",Count:1b}],Marker:1b,Tags:["life_time"]}
execute if entity @s[tag=ultra_shot] run effect give @a[distance=..10] minecraft:night_vision 1 0 true