# Name the arrow
data merge entity @s[tag=!missile,nbt={CustomPotionEffects:[{Id:18b,Amplifier:3b,Duration:0,Ambient:1b,ShowParticles:0b}]}] {CustomName:"{\"translate\":\"medabots_server:move.missile\"}",Tags:["missile"]}

# Leave a smoke trail
execute if entity @s[tag=missile] run particle minecraft:smoke ~ ~ ~ 0 0 0 0.5