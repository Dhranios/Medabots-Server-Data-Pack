execute store result score #temp Stage run scoreboard players get @s Stage
execute as @e[tag=hostile,tag=killerable] if score @s Stage = #temp Stage run tag @s add this_robattle
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Message Selection"}',Tags:["message_selection","1"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Message Selection"}',Tags:["message_selection","2"],Duration:1}
tag @e[type=minecraft:area_effect_cloud,tag=message_selection,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=message_selection,tag=selected,tag=1] run tag @s add message_1
execute if entity @e[type=minecraft:area_effect_cloud,tag=message_selection,tag=selected,tag=2] run tag @s add message_2

# Send the death message depending on the story medabot
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.spyke"}'}] run playsound medabots_server:entity.spyke.defeat voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.spyke"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_death.spyke"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.sloan"}'}] run playsound medabots_server:entity.sloan.defeat voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.sloan"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_death.sloan"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.samantha"}'}] run playsound medabots_server:entity.samantha.defeat voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.samantha"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_death.samantha"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.karin"}'}] run playsound medabots_server:entity.karin.defeat voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.karin"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_death.karin"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.erika"}'}] run playsound medabots_server:entity.erika.defeat voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.erika"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_death.erika"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.koji"}'}] run playsound medabots_server:entity.koji.defeat voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.koji"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_death.koji"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.doctor_haru"}'}] run playsound medabots_server:entity.doctor_haru.defeat voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.doctor_haru"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_death.doctor_haru"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.director_tune"}'}] run playsound medabots_server:entity.director_tune.defeat voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.director_tune"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_death.director_tune"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.max"}'}] run playsound medabots_server:entity.max.defeat voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.max"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_death.max"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.jaxy"}'},tag=message_1] run playsound medabots_server:entity.jaxy.defeat.1 voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.jaxy"}'},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_death.jaxy.1"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.jaxy"}'},tag=message_2] run playsound medabots_server:entity.jaxy.defeat.2 voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.jaxy"}'},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_death.jaxy.2"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.caroline"}'},tag=message_1] run playsound medabots_server:entity.caroline.defeat.1 voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.caroline"}'},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_death.caroline.1"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.caroline"}'},tag=message_2] run playsound medabots_server:entity.caroline.defeat.2 voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.caroline"}'},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_death.caroline.2"}]}
tag @s remove message_1
tag @s remove message_2
scoreboard players reset #temp Stage
tag @e[tag=this_robattle] remove this_robattle