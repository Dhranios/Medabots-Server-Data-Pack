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
execute if entity @s[tag=valid] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Owner.M set from entity @s UUIDMost
execute if entity @s[tag=valid] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Owner.L set from entity @s UUIDLeast
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
execute if entity @s[tag=valid] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Owner.M set from entity @s UUIDMost
execute if entity @s[tag=valid] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Owner.L set from entity @s UUIDLeast
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
execute if entity @s[tag=valid] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Owner.M set from entity @s UUIDMost
execute if entity @s[tag=valid] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Owner.L set from entity @s UUIDLeast
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
execute if entity @s[tag=valid] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Owner.M set from entity @s UUIDMost
execute if entity @s[tag=valid] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Owner.L set from entity @s UUIDLeast
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
execute if entity @s[tag=valid] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Owner.M set from entity @s UUIDMost
execute if entity @s[tag=valid] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Owner.L set from entity @s UUIDLeast
execute if entity @s[tag=valid] run tag @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] remove replacement
tag @s remove valid

# Show unequipped items in Lore
setblock -286 0 -52 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{remove:1b}},{Slot:1b,id:"minecraft:stone",Count:1b,tag:{remove:1b}},{Slot:2b,id:"minecraft:stone",Count:1b,tag:{remove:1b}},{Slot:3b,id:"minecraft:stone",Count:1b,tag:{remove:1b}},{Slot:4b,id:"minecraft:stone",Count:1b,tag:{remove:1b}},{Slot:5b,id:"minecraft:stone",Count:1b,tag:{remove:1b}},{Slot:6b,id:"minecraft:stone",Count:1b,tag:{remove:1b}},{Slot:7b,id:"minecraft:stone",Count:1b,tag:{remove:1b}},{Slot:8b,id:"minecraft:stone",Count:1b,tag:{remove:1b}}]}
data modify block -286 0 -52 Items[0] merge from entity @s Inventory[{Slot:0b}]
data modify block -286 0 -52 Items[1] merge from entity @s Inventory[{Slot:1b}]
data modify block -286 0 -52 Items[2] merge from entity @s Inventory[{Slot:2b}]
data modify block -286 0 -52 Items[3] merge from entity @s Inventory[{Slot:3b}]
data modify block -286 0 -52 Items[4] merge from entity @s Inventory[{Slot:4b}]
data modify block -286 0 -52 Items[5] merge from entity @s Inventory[{Slot:5b}]
data modify block -286 0 -52 Items[6] merge from entity @s Inventory[{Slot:6b}]
data modify block -286 0 -52 Items[7] merge from entity @s Inventory[{Slot:7b}]
data modify block -286 0 -52 Items[8] merge from entity @s Inventory[{Slot:8b}]
execute if entity @s[scores={EditingTinpet=0}] run data modify block -286 0 -52 Items[{Slot:0b}].tag.display.Lore set value ['{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}']
execute if entity @s[scores={EditingTinpet=1}] run data modify block -286 0 -52 Items[{Slot:1b}].tag.display.Lore set value ['{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}']
execute if entity @s[scores={EditingTinpet=2}] run data modify block -286 0 -52 Items[{Slot:2b}].tag.display.Lore set value ['{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}']
execute if entity @s[scores={EditingTinpet=3}] run data modify block -286 0 -52 Items[{Slot:3b}].tag.display.Lore set value ['{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}']
execute if entity @s[scores={EditingTinpet=4}] run data modify block -286 0 -52 Items[{Slot:4b}].tag.display.Lore set value ['{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}']
execute if entity @s[scores={EditingTinpet=5}] run data modify block -286 0 -52 Items[{Slot:5b}].tag.display.Lore set value ['{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}']
execute if entity @s[scores={EditingTinpet=6}] run data modify block -286 0 -52 Items[{Slot:6b}].tag.display.Lore set value ['{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}']
execute if entity @s[scores={EditingTinpet=7}] run data modify block -286 0 -52 Items[{Slot:7b}].tag.display.Lore set value ['{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}']
execute if entity @s[scores={EditingTinpet=8}] run data modify block -286 0 -52 Items[{Slot:8b}].tag.display.Lore set value ['{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}','{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}']
loot replace entity @s hotbar.0 9 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
setblock -286 0 -52 minecraft:bedrock
clear @s minecraft:stone{remove:1b}

# Remove medapart data
setblock -286 0 -52 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{remove:1b}},{Slot:1b,id:"minecraft:stone",Count:1b,tag:{remove:1b}},{Slot:2b,id:"minecraft:stone",Count:1b,tag:{remove:1b}},{Slot:3b,id:"minecraft:stone",Count:1b,tag:{remove:1b}},{Slot:4b,id:"minecraft:stone",Count:1b,tag:{remove:1b}},{Slot:5b,id:"minecraft:stone",Count:1b,tag:{remove:1b}},{Slot:6b,id:"minecraft:stone",Count:1b,tag:{remove:1b}},{Slot:7b,id:"minecraft:stone",Count:1b,tag:{remove:1b}},{Slot:8b,id:"minecraft:stone",Count:1b,tag:{remove:1b}}]}
data modify block -286 0 -52 Items[0] merge from entity @s Inventory[{Slot:0b}]
data modify block -286 0 -52 Items[1] merge from entity @s Inventory[{Slot:1b}]
data modify block -286 0 -52 Items[2] merge from entity @s Inventory[{Slot:2b}]
data modify block -286 0 -52 Items[3] merge from entity @s Inventory[{Slot:3b}]
data modify block -286 0 -52 Items[4] merge from entity @s Inventory[{Slot:4b}]
data modify block -286 0 -52 Items[5] merge from entity @s Inventory[{Slot:5b}]
data modify block -286 0 -52 Items[6] merge from entity @s Inventory[{Slot:6b}]
data modify block -286 0 -52 Items[7] merge from entity @s Inventory[{Slot:7b}]
data modify block -286 0 -52 Items[8] merge from entity @s Inventory[{Slot:8b}]
execute if entity @s[scores={EditingTinpet=0}] run data modify block -286 0 -52 Items[{Slot:0b}].tag.medabots_server.items set value {medal:{},head:{},right_arm:{},left_arm:{},legs:{}}
execute if entity @s[scores={EditingTinpet=1}] run data modify block -286 0 -52 Items[{Slot:1b}].tag.medabots_server.items set value {medal:{},head:{},right_arm:{},left_arm:{},legs:{}}
execute if entity @s[scores={EditingTinpet=2}] run data modify block -286 0 -52 Items[{Slot:2b}].tag.medabots_server.items set value {medal:{},head:{},right_arm:{},left_arm:{},legs:{}}
execute if entity @s[scores={EditingTinpet=3}] run data modify block -286 0 -52 Items[{Slot:3b}].tag.medabots_server.items set value {medal:{},head:{},right_arm:{},left_arm:{},legs:{}}
execute if entity @s[scores={EditingTinpet=4}] run data modify block -286 0 -52 Items[{Slot:4b}].tag.medabots_server.items set value {medal:{},head:{},right_arm:{},left_arm:{},legs:{}}
execute if entity @s[scores={EditingTinpet=5}] run data modify block -286 0 -52 Items[{Slot:5b}].tag.medabots_server.items set value {medal:{},head:{},right_arm:{},left_arm:{},legs:{}}
execute if entity @s[scores={EditingTinpet=6}] run data modify block -286 0 -52 Items[{Slot:6b}].tag.medabots_server.items set value {medal:{},head:{},right_arm:{},left_arm:{},legs:{}}
execute if entity @s[scores={EditingTinpet=7}] run data modify block -286 0 -52 Items[{Slot:7b}].tag.medabots_server.items set value {medal:{},head:{},right_arm:{},left_arm:{},legs:{}}
execute if entity @s[scores={EditingTinpet=8}] run data modify block -286 0 -52 Items[{Slot:8b}].tag.medabots_server.items set value {medal:{},head:{},right_arm:{},left_arm:{},legs:{}}
loot replace entity @s hotbar.0 9 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
setblock -286 0 -52 minecraft:bedrock
clear @s minecraft:stone{remove:1b}

tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.tinpet","color":"green"},{"translate":"medabots_server:message.tinpet.unequipped"}]}

scoreboard players set @s UnequipTinpet 0
scoreboard players enable @s UnequipTinpet