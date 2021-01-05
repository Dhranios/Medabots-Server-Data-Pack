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
execute if entity @s[scores={EditingTinpet=9},nbt={SelectedItem:{tag:{medabots_server:{gender:0b}}}}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{medabots_server:{id:"medabots_server:female_tinpet"}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=0},nbt={SelectedItem:{tag:{medabots_server:{gender:1b}}}}] unless entity @s[nbt={Inventory:[{Slot:0b,tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=1},nbt={SelectedItem:{tag:{medabots_server:{gender:1b}}}}] unless entity @s[nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=2},nbt={SelectedItem:{tag:{medabots_server:{gender:1b}}}}] unless entity @s[nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=3},nbt={SelectedItem:{tag:{medabots_server:{gender:1b}}}}] unless entity @s[nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=4},nbt={SelectedItem:{tag:{medabots_server:{gender:1b}}}}] unless entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=5},nbt={SelectedItem:{tag:{medabots_server:{gender:1b}}}}] unless entity @s[nbt={Inventory:[{Slot:5b,tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=6},nbt={SelectedItem:{tag:{medabots_server:{gender:1b}}}}] unless entity @s[nbt={Inventory:[{Slot:6b,tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=7},nbt={SelectedItem:{tag:{medabots_server:{gender:1b}}}}] unless entity @s[nbt={Inventory:[{Slot:7b,tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=8},nbt={SelectedItem:{tag:{medabots_server:{gender:1b}}}}] unless entity @s[nbt={Inventory:[{Slot:8b,tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}]}] run tag @s add valid
execute if entity @s[scores={EditingTinpet=9},nbt={SelectedItem:{tag:{medabots_server:{gender:1b}}}}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}]}] run tag @s add valid

# Equip message
tellraw @s[tag=valid,scores={EditingTinpet=0},nbt=!{Inventory:[{Slot:0b,tag:{medabots_server:{items:{right_arm:{Count:1b}}}}}]}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.tinpet","color":"green"},{"translate":"medabots_server:message.tinpet.equipped","with":[{"nbt":"SelectedItem.tag.display.Lore[5]","interpret":true,"entity":"@s","extra":[{"text":" "},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"}]}]}]}
tellraw @s[tag=valid,scores={EditingTinpet=1},nbt=!{Inventory:[{Slot:1b,tag:{medabots_server:{items:{right_arm:{Count:1b}}}}}]}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.tinpet","color":"green"},{"translate":"medabots_server:message.tinpet.equipped","with":[{"nbt":"SelectedItem.tag.display.Lore[5]","interpret":true,"entity":"@s","extra":[{"text":" "},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"}]}]}]}
tellraw @s[tag=valid,scores={EditingTinpet=2},nbt=!{Inventory:[{Slot:2b,tag:{medabots_server:{items:{right_arm:{Count:1b}}}}}]}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.tinpet","color":"green"},{"translate":"medabots_server:message.tinpet.equipped","with":[{"nbt":"SelectedItem.tag.display.Lore[5]","interpret":true,"entity":"@s","extra":[{"text":" "},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"}]}]}]}
tellraw @s[tag=valid,scores={EditingTinpet=3},nbt=!{Inventory:[{Slot:3b,tag:{medabots_server:{items:{right_arm:{Count:1b}}}}}]}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.tinpet","color":"green"},{"translate":"medabots_server:message.tinpet.equipped","with":[{"nbt":"SelectedItem.tag.display.Lore[5]","interpret":true,"entity":"@s","extra":[{"text":" "},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"}]}]}]}
tellraw @s[tag=valid,scores={EditingTinpet=4},nbt=!{Inventory:[{Slot:4b,tag:{medabots_server:{items:{right_arm:{Count:1b}}}}}]}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.tinpet","color":"green"},{"translate":"medabots_server:message.tinpet.equipped","with":[{"nbt":"SelectedItem.tag.display.Lore[5]","interpret":true,"entity":"@s","extra":[{"text":" "},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"}]}]}]}
tellraw @s[tag=valid,scores={EditingTinpet=5},nbt=!{Inventory:[{Slot:5b,tag:{medabots_server:{items:{right_arm:{Count:1b}}}}}]}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.tinpet","color":"green"},{"translate":"medabots_server:message.tinpet.equipped","with":[{"nbt":"SelectedItem.tag.display.Lore[5]","interpret":true,"entity":"@s","extra":[{"text":" "},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"}]}]}]}
tellraw @s[tag=valid,scores={EditingTinpet=6},nbt=!{Inventory:[{Slot:6b,tag:{medabots_server:{items:{right_arm:{Count:1b}}}}}]}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.tinpet","color":"green"},{"translate":"medabots_server:message.tinpet.equipped","with":[{"nbt":"SelectedItem.tag.display.Lore[5]","interpret":true,"entity":"@s","extra":[{"text":" "},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"}]}]}]}
tellraw @s[tag=valid,scores={EditingTinpet=7},nbt=!{Inventory:[{Slot:7b,tag:{medabots_server:{items:{right_arm:{Count:1b}}}}}]}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.tinpet","color":"green"},{"translate":"medabots_server:message.tinpet.equipped","with":[{"nbt":"SelectedItem.tag.display.Lore[5]","interpret":true,"entity":"@s","extra":[{"text":" "},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"}]}]}]}
tellraw @s[tag=valid,scores={EditingTinpet=8},nbt=!{Inventory:[{Slot:8b,tag:{medabots_server:{items:{right_arm:{Count:1b}}}}}]}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.tinpet","color":"green"},{"translate":"medabots_server:message.tinpet.equipped","with":[{"nbt":"SelectedItem.tag.display.Lore[5]","interpret":true,"entity":"@s","extra":[{"text":" "},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"}]}]}]}
tellraw @s[tag=valid,scores={EditingTinpet=9},nbt=!{Inventory:[{Slot:-106b,tag:{medabots_server:{items:{right_arm:{Count:1b}}}}}]}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.tinpet","color":"green"},{"translate":"medabots_server:message.tinpet.equipped","with":[{"nbt":"SelectedItem.tag.display.Lore[5]","interpret":true,"entity":"@s","extra":[{"text":" "},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"}]}]}]}
tellraw @s[tag=valid,scores={EditingTinpet=0},nbt={Inventory:[{Slot:0b,tag:{medabots_server:{items:{right_arm:{Count:1b}}}}}]}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.tinpet","color":"green"},{"translate":"medabots_server:message.tinpet.equipped.switched","with":[{"nbt":"SelectedItem.tag.display.Lore[5]","interpret":true,"entity":"@s","extra":[{"text":" "},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"}]},{"nbt":"Inventory[{Slot:0b}].tag.display.Lore[2]","interpret":true,"entity":"@s"}]}]}
tellraw @s[tag=valid,scores={EditingTinpet=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{items:{right_arm:{Count:1b}}}}}]}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.tinpet","color":"green"},{"translate":"medabots_server:message.tinpet.equipped.switched","with":[{"nbt":"SelectedItem.tag.display.Lore[5]","interpret":true,"entity":"@s","extra":[{"text":" "},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"}]},{"nbt":"Inventory[{Slot:1b}].tag.display.Lore[2]","interpret":true,"entity":"@s"}]}]}
tellraw @s[tag=valid,scores={EditingTinpet=2},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{items:{right_arm:{Count:1b}}}}}]}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.tinpet","color":"green"},{"translate":"medabots_server:message.tinpet.equipped.switched","with":[{"nbt":"SelectedItem.tag.display.Lore[5]","interpret":true,"entity":"@s","extra":[{"text":" "},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"}]},{"nbt":"Inventory[{Slot:2b}].tag.display.Lore[2]","interpret":true,"entity":"@s"}]}]}
tellraw @s[tag=valid,scores={EditingTinpet=3},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{items:{right_arm:{Count:1b}}}}}]}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.tinpet","color":"green"},{"translate":"medabots_server:message.tinpet.equipped.switched","with":[{"nbt":"SelectedItem.tag.display.Lore[5]","interpret":true,"entity":"@s","extra":[{"text":" "},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"}]},{"nbt":"Inventory[{Slot:3b}].tag.display.Lore[2]","interpret":true,"entity":"@s"}]}]}
tellraw @s[tag=valid,scores={EditingTinpet=4},nbt={Inventory:[{Slot:4b,tag:{medabots_server:{items:{right_arm:{Count:1b}}}}}]}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.tinpet","color":"green"},{"translate":"medabots_server:message.tinpet.equipped.switched","with":[{"nbt":"SelectedItem.tag.display.Lore[5]","interpret":true,"entity":"@s","extra":[{"text":" "},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"}]},{"nbt":"Inventory[{Slot:4b}].tag.display.Lore[2]","interpret":true,"entity":"@s"}]}]}
tellraw @s[tag=valid,scores={EditingTinpet=5},nbt={Inventory:[{Slot:5b,tag:{medabots_server:{items:{right_arm:{Count:1b}}}}}]}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.tinpet","color":"green"},{"translate":"medabots_server:message.tinpet.equipped.switched","with":[{"nbt":"SelectedItem.tag.display.Lore[5]","interpret":true,"entity":"@s","extra":[{"text":" "},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"}]},{"nbt":"Inventory[{Slot:5b}].tag.display.Lore[2]","interpret":true,"entity":"@s"}]}]}
tellraw @s[tag=valid,scores={EditingTinpet=6},nbt={Inventory:[{Slot:6b,tag:{medabots_server:{items:{right_arm:{Count:1b}}}}}]}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.tinpet","color":"green"},{"translate":"medabots_server:message.tinpet.equipped.switched","with":[{"nbt":"SelectedItem.tag.display.Lore[5]","interpret":true,"entity":"@s","extra":[{"text":" "},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"}]},{"nbt":"Inventory[{Slot:6b}].tag.display.Lore[2]","interpret":true,"entity":"@s"}]}]}
tellraw @s[tag=valid,scores={EditingTinpet=7},nbt={Inventory:[{Slot:7b,tag:{medabots_server:{items:{right_arm:{Count:1b}}}}}]}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.tinpet","color":"green"},{"translate":"medabots_server:message.tinpet.equipped.switched","with":[{"nbt":"SelectedItem.tag.display.Lore[5]","interpret":true,"entity":"@s","extra":[{"text":" "},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"}]},{"nbt":"Inventory[{Slot:7b}].tag.display.Lore[2]","interpret":true,"entity":"@s"}]}]}
tellraw @s[tag=valid,scores={EditingTinpet=8},nbt={Inventory:[{Slot:8b,tag:{medabots_server:{items:{right_arm:{Count:1b}}}}}]}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.tinpet","color":"green"},{"translate":"medabots_server:message.tinpet.equipped.switched","with":[{"nbt":"SelectedItem.tag.display.Lore[5]","interpret":true,"entity":"@s","extra":[{"text":" "},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"}]},{"nbt":"Inventory[{Slot:8b}].tag.display.Lore[2]","interpret":true,"entity":"@s"}]}]}
tellraw @s[tag=valid,scores={EditingTinpet=9},nbt={Inventory:[{Slot:-106b,tag:{medabots_server:{items:{right_arm:{Count:1b}}}}}]}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.tinpet","color":"green"},{"translate":"medabots_server:message.tinpet.equipped.switched","with":[{"nbt":"SelectedItem.tag.display.Lore[5]","interpret":true,"entity":"@s","extra":[{"text":" "},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"}]},{"nbt":"Inventory[{Slot:-106b}].tag.display.Lore[2]","interpret":true,"entity":"@s"}]}]}

# Update model
execute if entity @s[tag=valid] run scoreboard players operation #temp MedabotNr = @s MedabotNr
execute if entity @s[tag=valid] as @e[tag=medabot_model,tag=right_arm] if score @s MedabotNr = #temp MedabotNr run kill @s
execute if entity @s[tag=valid] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","medabot_model","model_piece","new","found_owner","found_owner_2","tinpet_editing"],CustomName:'{"translate":"medabots_server:entity.model_piece"}'}
execute at @s[tag=valid] as @e[tag=medabot_model,tag=new] run scoreboard players operation @s MedabotNr = #temp MedabotNr
execute at @s[tag=valid] as @e[tag=right_arm,tag=new] run data modify entity @s ArmorItems[3] merge from entity @a[distance=..0.1,limit=1] SelectedItem
execute if entity @s[tag=valid] run scoreboard players reset #temp MedabotNr
execute if entity @s[tag=valid] run tag @e[tag=medabot_model,tag=new] remove new

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
execute if entity @s[tag=valid,scores={EditingTinpet=9}] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:-106b}].tag.medabots_server.items.right_arm
execute if entity @s[tag=valid] run data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Owner set from entity @s UUID
execute if entity @s[tag=valid] run tag @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] remove replacement

# Equip selected right arm and show in Lore
tag @s add this_entity
execute in minecraft:overworld run setblock -286 3 -52 minecraft:oak_sign{Text1:'{"entity":"@e[tag=this_entity]","nbt":"SelectedItem.tag.display.Lore[5]","interpret":true,"extra":[{"text":" "},{"nbt":"SelectedItem.tag.display.Name","entity":"@e[tag=this_entity]","interpret":true}]}'}
tag @s remove this_entity
execute in minecraft:overworld run setblock -286 0 -52 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b}}]}
execute in minecraft:overworld if entity @s[scores={EditingTinpet=0}] run data modify block -286 0 -52 Items[0].tag set from entity @s Inventory[{Slot:0b}].tag
execute in minecraft:overworld if entity @s[scores={EditingTinpet=1}] run data modify block -286 0 -52 Items[0].tag set from entity @s Inventory[{Slot:1b}].tag
execute in minecraft:overworld if entity @s[scores={EditingTinpet=2}] run data modify block -286 0 -52 Items[0].tag set from entity @s Inventory[{Slot:2b}].tag
execute in minecraft:overworld if entity @s[scores={EditingTinpet=3}] run data modify block -286 0 -52 Items[0].tag set from entity @s Inventory[{Slot:3b}].tag
execute in minecraft:overworld if entity @s[scores={EditingTinpet=4}] run data modify block -286 0 -52 Items[0].tag set from entity @s Inventory[{Slot:4b}].tag
execute in minecraft:overworld if entity @s[scores={EditingTinpet=5}] run data modify block -286 0 -52 Items[0].tag set from entity @s Inventory[{Slot:5b}].tag
execute in minecraft:overworld if entity @s[scores={EditingTinpet=6}] run data modify block -286 0 -52 Items[0].tag set from entity @s Inventory[{Slot:6b}].tag
execute in minecraft:overworld if entity @s[scores={EditingTinpet=7}] run data modify block -286 0 -52 Items[0].tag set from entity @s Inventory[{Slot:7b}].tag
execute in minecraft:overworld if entity @s[scores={EditingTinpet=8}] run data modify block -286 0 -52 Items[0].tag set from entity @s Inventory[{Slot:8b}].tag
execute in minecraft:overworld if entity @s[scores={EditingTinpet=9}] run data modify block -286 0 -52 Items[0].tag set from entity @s Inventory[{Slot:-106b}].tag
execute in minecraft:overworld run data modify block -286 0 -52 Items[0].tag.medabots_server.items.right_arm set from entity @s SelectedItem
execute in minecraft:overworld run data modify block -286 0 -52 Items[0].tag.display.Lore[2] set from block -286 3 -52 Text1
execute in minecraft:overworld if entity @s[tag=valid,scores={EditingTinpet=0}] run loot replace entity @s hotbar.0 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute in minecraft:overworld if entity @s[tag=valid,scores={EditingTinpet=1}] run loot replace entity @s hotbar.1 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute in minecraft:overworld if entity @s[tag=valid,scores={EditingTinpet=2}] run loot replace entity @s hotbar.2 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute in minecraft:overworld if entity @s[tag=valid,scores={EditingTinpet=3}] run loot replace entity @s hotbar.3 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute in minecraft:overworld if entity @s[tag=valid,scores={EditingTinpet=4}] run loot replace entity @s hotbar.4 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute in minecraft:overworld if entity @s[tag=valid,scores={EditingTinpet=5}] run loot replace entity @s hotbar.5 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute in minecraft:overworld if entity @s[tag=valid,scores={EditingTinpet=6}] run loot replace entity @s hotbar.6 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute in minecraft:overworld if entity @s[tag=valid,scores={EditingTinpet=7}] run loot replace entity @s hotbar.7 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute in minecraft:overworld if entity @s[tag=valid,scores={EditingTinpet=8}] run loot replace entity @s hotbar.8 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute in minecraft:overworld if entity @s[tag=valid,scores={EditingTinpet=9}] run loot replace entity @s weapon.offhand 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute in minecraft:overworld run setblock -286 0 -52 minecraft:bedrock
execute in minecraft:overworld run setblock -286 3 -52 minecraft:bedrock

# Remove right arm from inventory
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
tellraw @s[tag=!valid] {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.tinpet","color":"green"},{"translate":"medabots_server:message.tinpet.error","color":"red"}]}
tag @s remove valid