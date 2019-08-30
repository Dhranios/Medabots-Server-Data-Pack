scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity jammy_discovered
stopsound @s[scores={Dialog=1}] music
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -1606 51 -351 {Duration:1000000,Tags:["cutscene","metabee"],Rotation:[-5.0f,0.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-1606,y=51,z=-351,distance=..1,tag=metabee] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-1606,y=51,z=-351,distance=..1,tag=metabee] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1606 51 -351 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","legs","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_enplace"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_enplace.model"}']},medabots_server:{id:"medabots_server:saikachis_enplace",gender:0b,move:"two_legged",part:"legs",armor:50,defense:56,activated:0b,model_data:{leg_count:2},version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1606 51 -351 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","left_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_blaster"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:move.gatling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_blaster.model"}']},medabots_server:{id:"medabots_server:saikachis_blaster",gender:0b,move:"gatling",part:"left_arm",armor:45,power:26,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1606 51 -351 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","right_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_fuser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_fuser.model"}']},medabots_server:{id:"medabots_server:saikachis_fuser",gender:0b,move:"rifle",part:"right_arm",armor:45,power:30,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1606 51 -351 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","head","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_balister"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"75"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_balister.model"}']},medabots_server:{id:"medabots_server:saikachis_balister",gender:0b,move:"missile",part:"head",armor:75,power:28,uses:6,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -1606 51 -351 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=metabee] MedabotNr
execute at @s as @e[x=-1606,y=51,z=-351,tag=metabee,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -1602 51 -345 {Duration:1000000,Tags:["cutscene","max"],Rotation:[160.0f,0.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-1602,y=51,z=-345,distance=..1,tag=max] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-1602,y=51,z=-345,distance=..1,tag=max] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1602 51 -345 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","max","legs","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:26,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_carrybag"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.wheel"}','{"italic":false,"color":"white","translate":"medabots_server:move.wheel.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.aimflash"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_carrybag.model"}']},medabots_server:{id:"medabots_server:aimflash_carrybag",gender:0b,move:"wheel",part:"legs",armor:50,defense:28,activated:0b,model_data:{leg_count:0},version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1602 51 -345 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","max","left_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:26,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_tripod"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:move.gatling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.aimflash"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_tripod.model"}']},medabots_server:{id:"medabots_server:aimflash_tripod",gender:0b,move:"gatling",part:"left_arm",armor:45,power:20,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1602 51 -345 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","max","right_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:26,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_zoom"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:move.laser.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"20"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.aimflash"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_zoom.model"}']},medabots_server:{id:"medabots_server:aimflash_zoom",gender:0b,move:"laser",part:"right_arm",armor:20,power:27,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1602 51 -345 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","max","head","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:26,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_strobe"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:move.falling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"8"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.aimflash"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_strobe.model"}']},medabots_server:{id:"medabots_server:aimflash_strobe",gender:0b,move:"falling",part:"head",armor:65,power:20,uses:8,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -1602 51 -345 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=max] MedabotNr
execute at @s as @e[x=-1602,y=51,z=-345,tag=max,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -1605 51 -326 {Duration:1000000,Tags:["cutscene","brass"],Rotation:[-180.0f,0.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-1605,y=51,z=-326,distance=..1,tag=brass] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-1605,y=51,z=-326,distance=..1,tag=brass] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1605 51 -326 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","brass","legs","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:39,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_flaregather"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.sailor_multi"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_flaregather.model"}']},medabots_server:{id:"medabots_server:sailor_multi_flaregather",gender:1b,move:"two_legged",part:"legs",armor:40,defense:40,activated:0b,model_data:{leg_count:2},version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1605 51 -326 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","brass","left_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:39,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_short_shot"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.sailor_multi"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_short_shot.model"}']},medabots_server:{id:"medabots_server:sailor_multi_short_shot",gender:1b,move:"rifle",part:"left_arm",armor:35,power:24,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1605 51 -326 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","brass","right_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:39,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_pateri_vulcan"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:move.gatling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.sailor_multi"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_pateri_vulcan.model"}']},medabots_server:{id:"medabots_server:sailor_multi_pateri_vulcan",gender:1b,move:"gatling",part:"right_arm",armor:35,power:20,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1605 51 -326 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","brass","head","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:39,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_variablehair"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.scout"}','{"italic":false,"color":"white","translate":"medabots_server:move.scout.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"75"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.sailor_multi"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_variablehair.model"}']},medabots_server:{id:"medabots_server:sailor_multi_variablehair",gender:1b,move:"scout",part:"head",armor:75,power:50,uses:7,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -1605 51 -326 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=brass] MedabotNr
execute at @s as @e[x=-1605,y=51,z=-326,tag=brass,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1604 51 -327 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["erika","cutscene"],Rotation:[-180.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6046341}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:14574460}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:10272473}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"Erika2",Properties:{textures:[{Signature:"mpGErjZa28jt8zB5/0jkQFqsGs/zBUOSvHRxuoa26xdSSDaz99zzLe1maoj27HXV4iQYwn7QZiiee7Y1iE69tjmuv5/SjUxRP3kBANAhy53JcoptJXso9t41cTYN7PMVXXg1qzYnimDv16weV/QJ7+YVPJQl3wNglXxVVsvDhZ3sBvkBMcWkbDTNJZvE/dU8hRDiNlDJiG/VG26B4Eaj8NwidBHqX1YB0ONMRJFC86OAz3yicDNoJQHmm/ReM+2C7oR7FO9NRpnQHN0cQlEAI1PQLi3/Ojr/mVZEkFjkfI2gRfOgTE4AZ25DEZ/IqBEpQYCXp+r/x6Mf2JXJIgvycnNoyRnV8tPnBn+jH5B/go0wHX5XsAaPRhhxiPtTeNThODdtW27S9OF+hxeJ3nsc3Pjw9vCRbJGlzLN6cAesL0D3BnGJ4gFU1WIh4On4aCLlaIL+QuZKz+phkqj8/MsgMRaUuqvoA6ViIcH6jc6NliC32w+hg9YO29Nw/3Y0wIxemU4OMlGb9uM03YyMXzfGlWYJiIgRvmkq+SK2Y7T4fYJoSN/uat7JlGZjPBwJi7KSs8w3vR4aVae6o0daEiEZw/hdYH4UduOemq8QQ3YJ9ItRiokVBVeU4zq6MIEfXYmbF+NxwzTvtKhmnV02+W65vCDrwXZERvc8QWIBiRkZSRg=",Value:"eyJ0aW1lc3RhbXAiOjE1NTU3OTE2Mzg3MzEsInByb2ZpbGVJZCI6Ijc5YmY5OWUxNjIxYzRlOTFiZDgxYTc3YTA4YjM4NmJhIiwicHJvZmlsZU5hbWUiOiJGVmJpY28iLCJzaWduYXR1cmVSZXF1aXJlZCI6dHJ1ZSwidGV4dHVyZXMiOnsiU0tJTiI6eyJ1cmwiOiJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzhjZDM4YWVkZjc4YzdlNjk2ODYyMzRkMjQxODViNjhmYTU0ZWNjZTQzZGQyZjc2ZDZmZWEwYmY4NmM2NDNiOSJ9LCJDQVBFIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2NzdmN2Q5OGFjNzBhNTMzNzEzNTE4NDE2ZGY0NDUyZmU1NzAwMzY1YzA5Y2Y0NWQwZDE1NmVhOTM5NjU1MSJ9fX0="}]},Name:"Erika2"}}}]}
execute at @s as @e[x=-1604,y=51,z=-327,tag=erika,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1..459}] at @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=max,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..547}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @e[tag=erika,tag=this_dialog,limit=1] feet run teleport @e[distance=..0.1,tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1604 51 -351 0 0
execute if entity @s[scores={Dialog=1..90}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] run tag @s add walking
execute if entity @s[scores={Dialog=1..90}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=90}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] run tag @s remove walking
execute if entity @s[scores={Dialog=91..547}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=91..547}] at @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.1"}]}
tellraw @s[scores={Dialog=8}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.2","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=64}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.3"}]}
tellraw @s[scores={Dialog=80}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.4"}]}
tellraw @s[scores={Dialog=88}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.5"}]}
tellraw @s[scores={Dialog=128}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.6"}]}
execute if entity @s[scores={Dialog=168}] run setblock -1604 51 -348 minecraft:end_rod[facing=up]
tellraw @s[scores={Dialog=188}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.7"}]}
tellraw @s[scores={Dialog=204}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.8"}]}
tellraw @s[scores={Dialog=236}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.9"}]}
tellraw @s[scores={Dialog=276}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.10"}]}
tellraw @s[scores={Dialog=348}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.11"}]}
tellraw @s[scores={Dialog=396}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.12"}]}
tellraw @s[scores={Dialog=444}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.13"}]}
execute if entity @s[scores={Dialog=460..957}] at @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @e[distance=..0.1,tag=max,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=460}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.14"}]}
tellraw @s[scores={Dialog=484}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.15"}]}
execute if entity @s[scores={Dialog=548..957}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @e[distance=..0.1,tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=548..957}] at @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @e[distance=..0.1,tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=548..957}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @e[distance=..0.1,tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=548}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.16"}]}
tellraw @s[scores={Dialog=590}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.17"}]}
tellraw @s[scores={Dialog=654}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.18"}]}
tellraw @s[scores={Dialog=694}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.19"}]}
tellraw @s[scores={Dialog=702}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.20"}]}
tellraw @s[scores={Dialog=742}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.21"}]}
tellraw @s[scores={Dialog=774}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.22"}]}
tellraw @s[scores={Dialog=790}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.23"}]}
tellraw @s[scores={Dialog=830}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.24"}]}
tellraw @s[scores={Dialog=918}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.25"}]}
execute if entity @s[scores={Dialog=958..2469}] at @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=max,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=958..2469}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=958..2469}] at @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=958..}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @e[tag=erika,tag=this_dialog,limit=1] feet run teleport @e[distance=..0.1,tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=958}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.26"}]}
tellraw @s[scores={Dialog=974}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.27"}]}
tellraw @s[scores={Dialog=1022}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.28"}]}
tellraw @s[scores={Dialog=1150}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.29"}]}
tellraw @s[scores={Dialog=1166}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.30"}]}
tellraw @s[scores={Dialog=1214}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.31"}]}
tellraw @s[scores={Dialog=1294}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.32"}]}
tellraw @s[scores={Dialog=1334}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.33"}]}
tellraw @s[scores={Dialog=1406}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.34"}]}
tellraw @s[scores={Dialog=1486}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.35"}]}
tellraw @s[scores={Dialog=1506}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.36"}]}
tellraw @s[scores={Dialog=1530}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.37"}]}
tellraw @s[scores={Dialog=1562}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.38"}]}
tellraw @s[scores={Dialog=1594}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.39"}]}
tellraw @s[scores={Dialog=1666}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.40"}]}
tellraw @s[scores={Dialog=1706}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.41"}]}
tellraw @s[scores={Dialog=1802}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.42"}]}
tellraw @s[scores={Dialog=1818}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.43"}]}
tellraw @s[scores={Dialog=1874}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.44"}]}
tellraw @s[scores={Dialog=1922}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.45"}]}
execute if entity @s[scores={Dialog=1986}] run setblock -1604 51 -348 minecraft:air
tellraw @s[scores={Dialog=1986}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.46"}]}
tellraw @s[scores={Dialog=2090}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.47"}]}
tellraw @s[scores={Dialog=2106}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.48"}]}
tellraw @s[scores={Dialog=2130}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.49"}]}
tellraw @s[scores={Dialog=2242}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.50"}]}
tellraw @s[scores={Dialog=2266}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.51"}]}
tellraw @s[scores={Dialog=2298}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.52"}]}
execute if entity @s[scores={Dialog=2346},tag=!already_gave_items] run function medabots_server:give_items/tinpet/male
tag @s[scores={Dialog=2346}] add already_gave_items
tellraw @s[scores={Dialog=2366}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.jammy_discovered.53"}]}
execute if entity @s[scores={Dialog=2470}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1604 51 -319
execute if entity @s[scores={Dialog=2470}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] run tag @s add walking
execute if entity @s[scores={Dialog=2471..}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2470}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1604 51 -319
execute if entity @s[scores={Dialog=2470}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] run tag @s add walking
execute if entity @s[scores={Dialog=2471..}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2470}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1604 51 -319
execute if entity @s[scores={Dialog=2471..}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
stopsound @s[scores={Dialog=2590}] music
scoreboard players set @s[scores={Dialog=2590}] MusicType 1
scoreboard players set @s[scores={Dialog=2590}] Music 0
tag @s[scores={Dialog=2590}] remove already_gave_items
tag @s[scores={Dialog=2590}] remove dialog_infinity_jammy_discovered
scoreboard players reset @s[scores={Dialog=2590}] DialogNr
scoreboard players set @s[scores={Dialog=2590}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.erika music @s[scores={Music=0,MusicType=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1}] Music 502