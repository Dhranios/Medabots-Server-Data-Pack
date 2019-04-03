playsound medabots_server:entity.cannon.fire hostile @a ~ ~ ~ 1
execute anchored eyes run summon minecraft:arrow ^ ^-0.2 ^1 {Motion:[0.01d,0.0d,0.0d],inGround:0b,Potion:"minecraft:water",CustomPotionColor:16777215,CustomPotionEffects:[{Id:18b,Amplifier:3b,Duration:0,Ambient:1b,ShowParticles:0b}],CustomName:'{"translate":"medabots_server:move.missile"}',Tags:["missile","new"],damage:5.0d,NoGravity:1b}
execute anchored eyes run summon minecraft:area_effect_cloud ^ ^-0.2 ^1.5 {CustomName:'{"translate":"medabots_server:move.missile"}',Tags:["missile"],Duration:1}
execute as @e[type=minecraft:arrow,tag=missile,distance=..6,sort=nearest,limit=1,tag=new] store result score @s PosX run data get entity @s Pos[0] 100
execute as @e[type=minecraft:arrow,tag=missile,distance=..6,sort=nearest,limit=1,tag=new] store result score @s PosY run data get entity @s Pos[1] 100
execute as @e[type=minecraft:arrow,tag=missile,distance=..6,sort=nearest,limit=1,tag=new] store result score @s PosZ run data get entity @s Pos[2] 100
execute as @e[type=minecraft:arrow,tag=missile,distance=..6,sort=nearest,limit=1,tag=new] store result score @s OtherX run data get entity @e[type=minecraft:area_effect_cloud,tag=missile,limit=1] Pos[0] 100
execute as @e[type=minecraft:arrow,tag=missile,distance=..6,sort=nearest,limit=1,tag=new] store result score @s OtherY run data get entity @e[type=minecraft:area_effect_cloud,tag=missile,limit=1] Pos[1] 100
execute as @e[type=minecraft:arrow,tag=missile,distance=..6,sort=nearest,limit=1,tag=new] store result score @s OtherZ run data get entity @e[type=minecraft:area_effect_cloud,tag=missile,limit=1] Pos[2] 100
execute as @e[type=minecraft:arrow,tag=missile,distance=..6,sort=nearest,limit=1,tag=new] run scoreboard players operation @s OtherX -= @s PosX
execute as @e[type=minecraft:arrow,tag=missile,distance=..6,sort=nearest,limit=1,tag=new] run scoreboard players operation @s OtherY -= @s PosY
execute as @e[type=minecraft:arrow,tag=missile,distance=..6,sort=nearest,limit=1,tag=new] run scoreboard players operation @s OtherZ -= @s PosZ
execute as @e[type=minecraft:arrow,tag=missile,distance=..6,sort=nearest,limit=1,tag=new] store result entity @s Motion[0] double 0.01 run scoreboard players get @s OtherX
execute as @e[type=minecraft:arrow,tag=missile,distance=..6,sort=nearest,limit=1,tag=new] store result entity @s Motion[1] double 0.01 run scoreboard players get @s OtherY
execute as @e[type=minecraft:arrow,tag=missile,distance=..6,sort=nearest,limit=1,tag=new] store result entity @s Motion[2] double 0.01 run scoreboard players get @s OtherZ
tag @e[type=minecraft:arrow,tag=missile,distance=..6,sort=nearest,limit=1,tag=new] remove new
kill @e[type=minecraft:area_effect_cloud,tag=missile]
scoreboard players set @s[tag=detect] CannonFire -1
scoreboard players set @s CannonFire 0