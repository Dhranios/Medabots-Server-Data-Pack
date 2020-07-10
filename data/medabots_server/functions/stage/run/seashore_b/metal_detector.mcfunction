scoreboard players add @s DelayTime 1
execute if entity @s[scores={DelayTime=40}] run playsound medabots_server:entity.cannon.beep neutral @s ~ ~ ~ 1
scoreboard players set @s[scores={DelayTime=40}] DelayTime 0

execute if entity @s[distance=..3,scores={MedapartType=39,Time=25}] run function medabots_server:spawn_entities/item/salesman_quest/metal_detector
execute if entity @s[distance=..3,scores={MedapartType=39,Time=25}] run scoreboard players reset @s DelayTime
execute if entity @s[distance=..3,scores={MedapartType=39,Time=25}] run tag @s add metal_detector_spawned