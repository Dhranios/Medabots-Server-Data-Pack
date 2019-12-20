playsound medabots_server:entity.master_hand.bullet hostile @a ~ ~ ~ 1
execute anchored eyes run summon minecraft:arrow ^ ^ ^3 {inGround:0b,Potion:"minecraft:water",CustomPotionColor:16777215,CustomPotionEffects:[{Id:18b,Amplifier:100b,Duration:0,Ambient:1b,ShowParticles:0b}],CustomName:'{"translate":"medabots_server:entity.missile"}',Tags:["missile","new"],damage:5.0d,NoGravity:1b}
execute anchored eyes run summon minecraft:area_effect_cloud ^ ^-0.2 ^4 {CustomName:'{"translate":"medabots_server:entity.missile"}',Tags:["missile"],Duration:1}
execute as @e[type=minecraft:arrow,tag=missile,distance=..6,sort=nearest,limit=1,tag=new] run function medabots_server:entities/master_hand/fire_gun_bullet
kill @e[type=minecraft:area_effect_cloud,tag=missile]

playsound medabots_server:entity.master_hand.bullet hostile @a ~ ~ ~ 1
execute anchored eyes run summon minecraft:arrow ^ ^0.2 ^3 {inGround:0b,Potion:"minecraft:water",CustomPotionColor:16777215,CustomPotionEffects:[{Id:18b,Amplifier:100b,Duration:0,Ambient:1b,ShowParticles:0b}],CustomName:'{"translate":"medabots_server:entity.missile"}',Tags:["missile","new"],damage:5.0d,NoGravity:1b}
execute anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^4 {CustomName:'{"translate":"medabots_server:entity.missile"}',Tags:["missile"],Duration:1}
execute as @e[type=minecraft:arrow,tag=missile,distance=..6,sort=nearest,limit=1,tag=new] run function medabots_server:entities/master_hand/fire_gun_bullet
kill @e[type=minecraft:area_effect_cloud,tag=missile]