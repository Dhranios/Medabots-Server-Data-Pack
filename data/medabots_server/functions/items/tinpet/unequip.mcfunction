# Only if there's a medal equipped
execute if entity @s[scores={EditingTinpet=0},nbt={Inventory:[{Slot:0b,tag:{medabots_server:{items:{medal:{tag:{medabots_server:{part:"medal"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{items:{medal:{tag:{medabots_server:{part:"medal"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=2},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{items:{medal:{tag:{medabots_server:{part:"medal"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=3},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{items:{medal:{tag:{medabots_server:{part:"medal"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=4},nbt={Inventory:[{Slot:4b,tag:{medabots_server:{items:{medal:{tag:{medabots_server:{part:"medal"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=5},nbt={Inventory:[{Slot:5b,tag:{medabots_server:{items:{medal:{tag:{medabots_server:{part:"medal"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=6},nbt={Inventory:[{Slot:6b,tag:{medabots_server:{items:{medal:{tag:{medabots_server:{part:"medal"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=7},nbt={Inventory:[{Slot:7b,tag:{medabots_server:{items:{medal:{tag:{medabots_server:{part:"medal"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=8},nbt={Inventory:[{Slot:8b,tag:{medabots_server:{items:{medal:{tag:{medabots_server:{part:"medal"}}}}}}}]}] run tag @s add valid

# Give equipped medal back
execute if entity @s[tag=valid] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:totem_of_undying",Count:1b},Tags:["do_not_teleport","replacement"],PickupDelay:1s}
execute if entity @s[tag=valid,scores={EditingTinpet=0}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:0b}].tag.medabots_server.items.medal
execute if entity @s[tag=valid,scores={EditingTinpet=1}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:1b}].tag.medabots_server.items.medal
execute if entity @s[tag=valid,scores={EditingTinpet=2}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:2b}].tag.medabots_server.items.medal
execute if entity @s[tag=valid,scores={EditingTinpet=3}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:3b}].tag.medabots_server.items.medal
execute if entity @s[tag=valid,scores={EditingTinpet=4}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:4b}].tag.medabots_server.items.medal
execute if entity @s[tag=valid,scores={EditingTinpet=5}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:5b}].tag.medabots_server.items.medal
execute if entity @s[tag=valid,scores={EditingTinpet=6}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:6b}].tag.medabots_server.items.medal
execute if entity @s[tag=valid,scores={EditingTinpet=7}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:7b}].tag.medabots_server.items.medal
execute if entity @s[tag=valid,scores={EditingTinpet=8}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:8b}].tag.medabots_server.items.medal
execute if entity @s[tag=valid] run tag @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] remove replacement
tag @s remove valid

# Only if there's a head equipped
execute if entity @s[scores={EditingTinpet=0},nbt={Inventory:[{Slot:0b,tag:{medabots_server:{items:{head:{tag:{medabots_server:{part:"head"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{items:{head:{tag:{medabots_server:{part:"head"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=2},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{items:{head:{tag:{medabots_server:{part:"head"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=3},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{items:{head:{tag:{medabots_server:{part:"head"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=4},nbt={Inventory:[{Slot:4b,tag:{medabots_server:{items:{head:{tag:{medabots_server:{part:"head"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=5},nbt={Inventory:[{Slot:5b,tag:{medabots_server:{items:{head:{tag:{medabots_server:{part:"head"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=6},nbt={Inventory:[{Slot:6b,tag:{medabots_server:{items:{head:{tag:{medabots_server:{part:"head"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=7},nbt={Inventory:[{Slot:7b,tag:{medabots_server:{items:{head:{tag:{medabots_server:{part:"head"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=8},nbt={Inventory:[{Slot:8b,tag:{medabots_server:{items:{head:{tag:{medabots_server:{part:"head"}}}}}}}]}] run tag @s add valid

# Give equipped head back
execute if entity @s[tag=valid] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:totem_of_undying",Count:1b},Tags:["do_not_teleport","replacement"],PickupDelay:1s}
execute if entity @s[tag=valid,scores={EditingTinpet=0}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:0b}].tag.medabots_server.items.head
execute if entity @s[tag=valid,scores={EditingTinpet=1}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:1b}].tag.medabots_server.items.head
execute if entity @s[tag=valid,scores={EditingTinpet=2}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:2b}].tag.medabots_server.items.head
execute if entity @s[tag=valid,scores={EditingTinpet=3}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:3b}].tag.medabots_server.items.head
execute if entity @s[tag=valid,scores={EditingTinpet=4}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:4b}].tag.medabots_server.items.head
execute if entity @s[tag=valid,scores={EditingTinpet=5}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:5b}].tag.medabots_server.items.head
execute if entity @s[tag=valid,scores={EditingTinpet=6}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:6b}].tag.medabots_server.items.head
execute if entity @s[tag=valid,scores={EditingTinpet=7}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:7b}].tag.medabots_server.items.head
execute if entity @s[tag=valid,scores={EditingTinpet=8}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:8b}].tag.medabots_server.items.head
execute if entity @s[tag=valid] run tag @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] remove replacement
tag @s remove valid

# Only if there's a right arm equipped
execute if entity @s[scores={EditingTinpet=0},nbt={Inventory:[{Slot:0b,tag:{medabots_server:{items:{right_arm:{tag:{medabots_server:{part:"right_arm"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{items:{right_arm:{tag:{medabots_server:{part:"right_arm"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=2},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{items:{right_arm:{tag:{medabots_server:{part:"right_arm"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=3},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{items:{right_arm:{tag:{medabots_server:{part:"right_arm"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=4},nbt={Inventory:[{Slot:4b,tag:{medabots_server:{items:{right_arm:{tag:{medabots_server:{part:"right_arm"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=5},nbt={Inventory:[{Slot:5b,tag:{medabots_server:{items:{right_arm:{tag:{medabots_server:{part:"right_arm"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=6},nbt={Inventory:[{Slot:6b,tag:{medabots_server:{items:{right_arm:{tag:{medabots_server:{part:"right_arm"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=7},nbt={Inventory:[{Slot:7b,tag:{medabots_server:{items:{right_arm:{tag:{medabots_server:{part:"right_arm"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=8},nbt={Inventory:[{Slot:8b,tag:{medabots_server:{items:{right_arm:{tag:{medabots_server:{part:"right_arm"}}}}}}}]}] run tag @s add valid

# Give equipped right arm back
execute if entity @s[tag=valid] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:totem_of_undying",Count:1b},Tags:["do_not_teleport","replacement"],PickupDelay:1s}
execute if entity @s[tag=valid,scores={EditingTinpet=0}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:0b}].tag.medabots_server.items.right_arm
execute if entity @s[tag=valid,scores={EditingTinpet=1}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:1b}].tag.medabots_server.items.right_arm
execute if entity @s[tag=valid,scores={EditingTinpet=2}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:2b}].tag.medabots_server.items.right_arm
execute if entity @s[tag=valid,scores={EditingTinpet=3}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:3b}].tag.medabots_server.items.right_arm
execute if entity @s[tag=valid,scores={EditingTinpet=4}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:4b}].tag.medabots_server.items.right_arm
execute if entity @s[tag=valid,scores={EditingTinpet=5}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:5b}].tag.medabots_server.items.right_arm
execute if entity @s[tag=valid,scores={EditingTinpet=6}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:6b}].tag.medabots_server.items.right_arm
execute if entity @s[tag=valid,scores={EditingTinpet=7}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:7b}].tag.medabots_server.items.right_arm
execute if entity @s[tag=valid,scores={EditingTinpet=8}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:8b}].tag.medabots_server.items.right_arm
execute if entity @s[tag=valid] run tag @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] remove replacement
tag @s remove valid

# Only if there's a left arm equipped
execute if entity @s[scores={EditingTinpet=0},nbt={Inventory:[{Slot:0b,tag:{medabots_server:{items:{left_arm:{tag:{medabots_server:{part:"left_arm"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{items:{left_arm:{tag:{medabots_server:{part:"left_arm"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=2},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{items:{left_arm:{tag:{medabots_server:{part:"left_arm"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=3},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{items:{left_arm:{tag:{medabots_server:{part:"left_arm"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=4},nbt={Inventory:[{Slot:4b,tag:{medabots_server:{items:{left_arm:{tag:{medabots_server:{part:"left_arm"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=5},nbt={Inventory:[{Slot:5b,tag:{medabots_server:{items:{left_arm:{tag:{medabots_server:{part:"left_arm"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=6},nbt={Inventory:[{Slot:6b,tag:{medabots_server:{items:{left_arm:{tag:{medabots_server:{part:"left_arm"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=7},nbt={Inventory:[{Slot:7b,tag:{medabots_server:{items:{left_arm:{tag:{medabots_server:{part:"left_arm"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=8},nbt={Inventory:[{Slot:8b,tag:{medabots_server:{items:{left_arm:{tag:{medabots_server:{part:"left_arm"}}}}}}}]}] run tag @s add valid

# Give equipped left arm back
execute if entity @s[tag=valid] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:totem_of_undying",Count:1b},Tags:["do_not_teleport","replacement"],PickupDelay:1s}
execute if entity @s[tag=valid,scores={EditingTinpet=0}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:0b}].tag.medabots_server.items.left_arm
execute if entity @s[tag=valid,scores={EditingTinpet=1}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:1b}].tag.medabots_server.items.left_arm
execute if entity @s[tag=valid,scores={EditingTinpet=2}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:2b}].tag.medabots_server.items.left_arm
execute if entity @s[tag=valid,scores={EditingTinpet=3}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:3b}].tag.medabots_server.items.left_arm
execute if entity @s[tag=valid,scores={EditingTinpet=4}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:4b}].tag.medabots_server.items.left_arm
execute if entity @s[tag=valid,scores={EditingTinpet=5}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:5b}].tag.medabots_server.items.left_arm
execute if entity @s[tag=valid,scores={EditingTinpet=6}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:6b}].tag.medabots_server.items.left_arm
execute if entity @s[tag=valid,scores={EditingTinpet=7}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:7b}].tag.medabots_server.items.left_arm
execute if entity @s[tag=valid,scores={EditingTinpet=8}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:8b}].tag.medabots_server.items.left_arm
execute if entity @s[tag=valid] run tag @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] remove replacement
tag @s remove valid

# Only if there's a legs equipped
execute if entity @s[scores={EditingTinpet=0},nbt={Inventory:[{Slot:0b,tag:{medabots_server:{items:{legs:{tag:{medabots_server:{part:"legs"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{items:{legs:{tag:{medabots_server:{part:"legs"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=2},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{items:{legs:{tag:{medabots_server:{part:"legs"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=3},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{items:{legs:{tag:{medabots_server:{part:"legs"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=4},nbt={Inventory:[{Slot:4b,tag:{medabots_server:{items:{legs:{tag:{medabots_server:{part:"legs"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=5},nbt={Inventory:[{Slot:5b,tag:{medabots_server:{items:{legs:{tag:{medabots_server:{part:"legs"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=6},nbt={Inventory:[{Slot:6b,tag:{medabots_server:{items:{legs:{tag:{medabots_server:{part:"legs"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=7},nbt={Inventory:[{Slot:7b,tag:{medabots_server:{items:{legs:{tag:{medabots_server:{part:"legs"}}}}}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=8},nbt={Inventory:[{Slot:8b,tag:{medabots_server:{items:{legs:{tag:{medabots_server:{part:"legs"}}}}}}}]}] run tag @s add valid

# Give equipped legs back
execute if entity @s[tag=valid] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:totem_of_undying",Count:1b},Tags:["do_not_teleport","replacement"],PickupDelay:1s}
execute if entity @s[tag=valid,scores={EditingTinpet=0}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:0b}].tag.medabots_server.items.legs
execute if entity @s[tag=valid,scores={EditingTinpet=1}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:1b}].tag.medabots_server.items.legs
execute if entity @s[tag=valid,scores={EditingTinpet=2}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:2b}].tag.medabots_server.items.legs
execute if entity @s[tag=valid,scores={EditingTinpet=3}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:3b}].tag.medabots_server.items.legs
execute if entity @s[tag=valid,scores={EditingTinpet=4}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:4b}].tag.medabots_server.items.legs
execute if entity @s[tag=valid,scores={EditingTinpet=5}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:5b}].tag.medabots_server.items.legs
execute if entity @s[tag=valid,scores={EditingTinpet=6}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:6b}].tag.medabots_server.items.legs
execute if entity @s[tag=valid,scores={EditingTinpet=7}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:7b}].tag.medabots_server.items.legs
execute if entity @s[tag=valid,scores={EditingTinpet=8}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:8b}].tag.medabots_server.items.legs
execute if entity @s[tag=valid] run tag @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] remove replacement
tag @s remove valid

# Show unequipped items in Lore
execute if entity @s[scores={EditingTinpet=0}] run data modify entity @s Inventory[{Slot:0b}].tag.display.Lore set value ['{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}']
execute if entity @s[scores={EditingTinpet=1}] run data modify entity @s Inventory[{Slot:1b}].tag.display.Lore set value ['{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}']
execute if entity @s[scores={EditingTinpet=2}] run data modify entity @s Inventory[{Slot:2b}].tag.display.Lore set value ['{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}']
execute if entity @s[scores={EditingTinpet=3}] run data modify entity @s Inventory[{Slot:3b}].tag.display.Lore set value ['{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}']
execute if entity @s[scores={EditingTinpet=4}] run data modify entity @s Inventory[{Slot:4b}].tag.display.Lore set value ['{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}']
execute if entity @s[scores={EditingTinpet=5}] run data modify entity @s Inventory[{Slot:5b}].tag.display.Lore set value ['{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}']
execute if entity @s[scores={EditingTinpet=6}] run data modify entity @s Inventory[{Slot:6b}].tag.display.Lore set value ['{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}']
execute if entity @s[scores={EditingTinpet=7}] run data modify entity @s Inventory[{Slot:7b}].tag.display.Lore set value ['{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}']
execute if entity @s[scores={EditingTinpet=8}] run data modify entity @s Inventory[{Slot:8b}].tag.display.Lore set value ['{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}']

# Remove medapart data
execute if entity @s[scores={EditingTinpet=0}] run data modify entity @s Inventory[{Slot:0b}].tag.medabots_server.items set value {medal:{},head:{},right_arm:{},left_arm:{},legs:{}}
execute if entity @s[scores={EditingTinpet=1}] run data modify entity @s Inventory[{Slot:1b}].tag.medabots_server.items set value {medal:{},head:{},right_arm:{},left_arm:{},legs:{}}
execute if entity @s[scores={EditingTinpet=2}] run data modify entity @s Inventory[{Slot:2b}].tag.medabots_server.items set value {medal:{},head:{},right_arm:{},left_arm:{},legs:{}}
execute if entity @s[scores={EditingTinpet=3}] run data modify entity @s Inventory[{Slot:3b}].tag.medabots_server.items set value {medal:{},head:{},right_arm:{},left_arm:{},legs:{}}
execute if entity @s[scores={EditingTinpet=4}] run data modify entity @s Inventory[{Slot:4b}].tag.medabots_server.items set value {medal:{},head:{},right_arm:{},left_arm:{},legs:{}}
execute if entity @s[scores={EditingTinpet=5}] run data modify entity @s Inventory[{Slot:5b}].tag.medabots_server.items set value {medal:{},head:{},right_arm:{},left_arm:{},legs:{}}
execute if entity @s[scores={EditingTinpet=6}] run data modify entity @s Inventory[{Slot:6b}].tag.medabots_server.items set value {medal:{},head:{},right_arm:{},left_arm:{},legs:{}}
execute if entity @s[scores={EditingTinpet=7}] run data modify entity @s Inventory[{Slot:7b}].tag.medabots_server.items set value {medal:{},head:{},right_arm:{},left_arm:{},legs:{}}
execute if entity @s[scores={EditingTinpet=8}] run data modify entity @s Inventory[{Slot:8b}].tag.medabots_server.items set value {medal:{},head:{},right_arm:{},left_arm:{},legs:{}}


scoreboard players set @s UnequipTinpet 0
scoreboard players enable @s UnequipTinpet