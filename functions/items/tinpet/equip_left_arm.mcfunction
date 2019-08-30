# Verify compatability
execute if entity @s[scores={EditingTinpet=0},nbt={SelectedItem:{tag:{medabots_server:{gender:0b}}}}] unless entity @s[nbt={Inventory:[{Slot:0b,tag:{medabots_server:{id:"medabots_server:female_tinpet"}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=1},nbt={SelectedItem:{tag:{medabots_server:{gender:0b}}}}] unless entity @s[nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:female_tinpet"}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=2},nbt={SelectedItem:{tag:{medabots_server:{gender:0b}}}}] unless entity @s[nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:female_tinpet"}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=3},nbt={SelectedItem:{tag:{medabots_server:{gender:0b}}}}] unless entity @s[nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:female_tinpet"}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=4},nbt={SelectedItem:{tag:{medabots_server:{gender:0b}}}}] unless entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:female_tinpet"}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=5},nbt={SelectedItem:{tag:{medabots_server:{gender:0b}}}}] unless entity @s[nbt={Inventory:[{Slot:5b,tag:{medabots_server:{id:"medabots_server:female_tinpet"}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=6},nbt={SelectedItem:{tag:{medabots_server:{gender:0b}}}}] unless entity @s[nbt={Inventory:[{Slot:6b,tag:{medabots_server:{id:"medabots_server:female_tinpet"}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=7},nbt={SelectedItem:{tag:{medabots_server:{gender:0b}}}}] unless entity @s[nbt={Inventory:[{Slot:7b,tag:{medabots_server:{id:"medabots_server:female_tinpet"}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=8},nbt={SelectedItem:{tag:{medabots_server:{gender:0b}}}}] unless entity @s[nbt={Inventory:[{Slot:8b,tag:{medabots_server:{id:"medabots_server:female_tinpet"}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=0},nbt={SelectedItem:{tag:{medabots_server:{gender:1b}}}}] unless entity @s[nbt={Inventory:[{Slot:0b,tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=1},nbt={SelectedItem:{tag:{medabots_server:{gender:1b}}}}] unless entity @s[nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=2},nbt={SelectedItem:{tag:{medabots_server:{gender:1b}}}}] unless entity @s[nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=3},nbt={SelectedItem:{tag:{medabots_server:{gender:1b}}}}] unless entity @s[nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=4},nbt={SelectedItem:{tag:{medabots_server:{gender:1b}}}}] unless entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=5},nbt={SelectedItem:{tag:{medabots_server:{gender:1b}}}}] unless entity @s[nbt={Inventory:[{Slot:5b,tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=6},nbt={SelectedItem:{tag:{medabots_server:{gender:1b}}}}] unless entity @s[nbt={Inventory:[{Slot:6b,tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=7},nbt={SelectedItem:{tag:{medabots_server:{gender:1b}}}}] unless entity @s[nbt={Inventory:[{Slot:7b,tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=8},nbt={SelectedItem:{tag:{medabots_server:{gender:1b}}}}] unless entity @s[nbt={Inventory:[{Slot:8b,tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}]}] run tag @s add valid

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

# Equip selected left arm
execute if entity @s[tag=valid,scores={EditingTinpet=0}] run data modify entity @s Inventory[{Slot:0b}].tag.medabots_server.items.left_arm set from entity @s SelectedItem
execute if entity @s[tag=valid,scores={EditingTinpet=1}] run data modify entity @s Inventory[{Slot:1b}].tag.medabots_server.items.left_arm set from entity @s SelectedItem
execute if entity @s[tag=valid,scores={EditingTinpet=2}] run data modify entity @s Inventory[{Slot:2b}].tag.medabots_server.items.left_arm set from entity @s SelectedItem
execute if entity @s[tag=valid,scores={EditingTinpet=3}] run data modify entity @s Inventory[{Slot:3b}].tag.medabots_server.items.left_arm set from entity @s SelectedItem
execute if entity @s[tag=valid,scores={EditingTinpet=4}] run data modify entity @s Inventory[{Slot:4b}].tag.medabots_server.items.left_arm set from entity @s SelectedItem
execute if entity @s[tag=valid,scores={EditingTinpet=5}] run data modify entity @s Inventory[{Slot:5b}].tag.medabots_server.items.left_arm set from entity @s SelectedItem
execute if entity @s[tag=valid,scores={EditingTinpet=6}] run data modify entity @s Inventory[{Slot:6b}].tag.medabots_server.items.left_arm set from entity @s SelectedItem
execute if entity @s[tag=valid,scores={EditingTinpet=7}] run data modify entity @s Inventory[{Slot:7b}].tag.medabots_server.items.left_arm set from entity @s SelectedItem
execute if entity @s[tag=valid,scores={EditingTinpet=8}] run data modify entity @s Inventory[{Slot:8b}].tag.medabots_server.items.left_arm set from entity @s SelectedItem

# Show equipped left arm name in Lore
tag @s add this_entity
setblock -286 0 -52 minecraft:oak_sign{Text1:'{"entity":"@e[tag=this_entity]","nbt":"SelectedItem.tag.display.Lore[5]","interpret":true,"extra":[{"text":" "},{"nbt":"SelectedItem.tag.display.Name","entity":"@e[tag=this_entity]","interpret":true}]}'}
tag @s remove this_entity
execute if entity @s[tag=valid,scores={EditingTinpet=0}] run data modify entity @s Inventory[{Slot:0b}].tag.display.Lore[3] set from block -286 0 -52 Text1
execute if entity @s[tag=valid,scores={EditingTinpet=1}] run data modify entity @s Inventory[{Slot:1b}].tag.display.Lore[3] set from block -286 0 -52 Text1
execute if entity @s[tag=valid,scores={EditingTinpet=2}] run data modify entity @s Inventory[{Slot:2b}].tag.display.Lore[3] set from block -286 0 -52 Text1
execute if entity @s[tag=valid,scores={EditingTinpet=3}] run data modify entity @s Inventory[{Slot:3b}].tag.display.Lore[3] set from block -286 0 -52 Text1
execute if entity @s[tag=valid,scores={EditingTinpet=4}] run data modify entity @s Inventory[{Slot:4b}].tag.display.Lore[3] set from block -286 0 -52 Text1
execute if entity @s[tag=valid,scores={EditingTinpet=5}] run data modify entity @s Inventory[{Slot:5b}].tag.display.Lore[3] set from block -286 0 -52 Text1
execute if entity @s[tag=valid,scores={EditingTinpet=6}] run data modify entity @s Inventory[{Slot:6b}].tag.display.Lore[3] set from block -286 0 -52 Text1
execute if entity @s[tag=valid,scores={EditingTinpet=7}] run data modify entity @s Inventory[{Slot:7b}].tag.display.Lore[3] set from block -286 0 -52 Text1
execute if entity @s[tag=valid,scores={EditingTinpet=8}] run data modify entity @s Inventory[{Slot:8b}].tag.display.Lore[3] set from block -286 0 -52 Text1
setblock -286 0 -52 minecraft:bedrock

# Remove left arm from inventory
replaceitem entity @s[tag=valid,nbt={SelectedItemSlot:0}] hotbar.0 minecraft:air
replaceitem entity @s[tag=valid,nbt={SelectedItemSlot:1}] hotbar.1 minecraft:air
replaceitem entity @s[tag=valid,nbt={SelectedItemSlot:2}] hotbar.2 minecraft:air
replaceitem entity @s[tag=valid,nbt={SelectedItemSlot:3}] hotbar.3 minecraft:air
replaceitem entity @s[tag=valid,nbt={SelectedItemSlot:4}] hotbar.4 minecraft:air
replaceitem entity @s[tag=valid,nbt={SelectedItemSlot:5}] hotbar.5 minecraft:air
replaceitem entity @s[tag=valid,nbt={SelectedItemSlot:6}] hotbar.6 minecraft:air
replaceitem entity @s[tag=valid,nbt={SelectedItemSlot:7}] hotbar.7 minecraft:air
replaceitem entity @s[tag=valid,nbt={SelectedItemSlot:8}] hotbar.8 minecraft:air

# Complain about incompatability
tellraw @s[tag=!valid] {"translate":"medabots_server:message.tinpet.error","color":"red"}
tag @s remove valid