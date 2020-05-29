execute store result score #temp Stage run scoreboard players get @s Stage
execute as @e[tag=hostile,tag=killerable] if score @s Stage = #temp Stage run tag @s add this_robattle
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Message Selection"}',Tags:["message_selection","1"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Message Selection"}',Tags:["message_selection","2"],Duration:1}
tag @e[type=minecraft:area_effect_cloud,tag=message_selection,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=message_selection,tag=selected,tag=1] run tag @s add message_1
execute if entity @e[type=minecraft:area_effect_cloud,tag=message_selection,tag=selected,tag=2] run tag @s add message_2

# Send the killer message depending on the story medabot
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.spyke"}'}] run playsound medabots_server:entity.spyke.victory voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.spyke"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_killer.spyke"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.spyke"}'}] run tag @s add spoke
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.sloan"}'}] run playsound medabots_server:entity.sloan.victory voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.sloan"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_killer.sloan"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.sloan"}'}] run tag @s add spoke
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.samantha"}'}] run playsound medabots_server:entity.samantha.victory voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.samantha"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_killer.samantha"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.samantha"}'}] run tag @s add spoke
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.karin"}'}] run playsound medabots_server:entity.karin.victory voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.karin"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_killer.karin"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.karin"}'}] run tag @s add spoke
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.erika"}'}] run playsound medabots_server:entity.erika.victory voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.erika"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_killer.erika"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.erika"}'}] run tag @s add spoke
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.koji"}'}] run playsound medabots_server:entity.koji.victory voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.koji"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_killer.koji"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.koji"}'}] run tag @s add spoke
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.doctor_haru"}'}] run playsound medabots_server:entity.doctor_haru.victory voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.doctor_haru"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_killer.doctor_haru"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.doctor_haru"}'}] run tag @s add spoke
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.director_tune"}'}] run playsound medabots_server:entity.director_tune.victory voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.director_tune"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_killer.director_tune"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.director_tune"}'}] run tag @s add spoke
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.max"}'}] run playsound medabots_server:entity.max.victory voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.max"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_killer.max"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.max"}'}] run tag @s add spoke
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.jaxy"}'},tag=message_1] run playsound medabots_server:entity.jaxy.victory.1 voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.jaxy"}'},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_killer.jaxy.1"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.jaxy"}'},tag=message_2] run playsound medabots_server:entity.jaxy.victory.2 voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.jaxy"}'},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_killer.jaxy.2"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.jaxy"}'}] run tag @s add spoke
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.caroline"}'},tag=message_1] run playsound medabots_server:entity.caroline.victory.1 voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.caroline"}'},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_killer.caroline.1"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.caroline"}'},tag=message_2] run playsound medabots_server:entity.caroline.victory.2 voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.caroline"}'},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_killer.caroline.2"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.caroline"}'}] run tag @s add spoke
tag @s remove message_1
tag @s remove message_2
execute if entity @s[tag=!spoke] run function medabots_server:other/killer/message/medabot

scoreboard players reset #temp Stage
tag @e[tag=this_robattle] remove this_robattle