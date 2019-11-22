playsound medabots_server:entity.cannon.fire hostile @a ~ ~ ~ 1
execute anchored eyes run summon minecraft:arrow ^ ^-0.2 ^0.7 {inGround:0b,Potion:"minecraft:water",CustomPotionColor:16777215,CustomPotionEffects:[{Id:18b,Amplifier:100b,Duration:0,Ambient:1b,ShowParticles:0b}],CustomName:'{"translate":"medabots_server:entity.cannon_fire"}',Tags:["cannon_fire","new"],damage:5.0d,NoGravity:1b}
execute anchored eyes run summon minecraft:area_effect_cloud ^ ^-0.2 ^1.2 {CustomName:'{"translate":"medabots_server:entity.cannon_fire"}',Tags:["cannon_fire"],Duration:1}
execute as @e[type=minecraft:arrow,tag=cannon_fire,distance=..6,sort=nearest,limit=1,tag=new] run function medabots_server:entities/cannon/fire_bullet
kill @e[type=minecraft:area_effect_cloud,tag=cannon_fire]
tag @s[tag=detect] add already_targetted
scoreboard players set @s CannonFire 0