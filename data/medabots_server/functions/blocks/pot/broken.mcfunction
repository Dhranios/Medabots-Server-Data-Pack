execute if entity @s[nbt={ArmorItems:[{tag:{medabots_server:{contents:{tag:{}}}}}]}] run summon minecraft:item ~ ~0.375 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["pot_item","do_not_teleport"],PickupDelay:0s,Invulnerable:1b}
data modify entity @e[type=minecraft:item,limit=1,tag=pot_item] Item merge from entity @s ArmorItems[{tag:{medabots_server:{contents:{tag:{}}}}}].tag.medabots_server.contents
playsound minecraft:block.wood.break block @a ~ ~0.875 ~ 1
particle minecraft:item minecraft:diamond_pickaxe{Damage:10,Unbreakable:1b,CustomModelData:44} ~ ~0.875 ~ 0 0 0 0.1 30
tag @e[type=minecraft:item,limit=1,tag=pot_item] remove pot_item
tag @s remove broken
tag @s add dead

function medabots_server:blocks/pot/spawn_entity
