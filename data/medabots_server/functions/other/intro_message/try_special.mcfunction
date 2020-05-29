summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Message Selection"}',Tags:["message_selection","1"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Message Selection"}',Tags:["message_selection","2"],Duration:1}
tag @e[type=minecraft:area_effect_cloud,tag=message_selection,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=message_selection,tag=selected,tag=1] run tag @s add message_1
execute if entity @e[type=minecraft:area_effect_cloud,tag=message_selection,tag=selected,tag=2] run tag @s add message_2

# Send the intro message depending on selected set
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.spyke"}'}] run playsound medabots_server:entity.spyke.intro voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.spyke"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_intro.spyke"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.spyke"}'}] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 50
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.sloan"}'}] run playsound medabots_server:entity.sloan.intro voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.sloan"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_intro.sloan"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.sloan"}'}] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 70
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.samantha"}'}] run playsound medabots_server:entity.samantha.intro voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.samantha"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_intro.samantha"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.samantha"}'}] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 70
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.karin"}'}] run playsound medabots_server:entity.karin.intro voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.karin"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_intro.karin"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.karin"}'}] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 40
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.erika"}'}] run playsound medabots_server:entity.erika.intro voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.erika"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_intro.erika"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.erika"}'}] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 50
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.koji"}'}] run playsound medabots_server:entity.koji.intro voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.koji"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_intro.koji"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.koji"}'}] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 50
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.doctor_haru"}'}] run playsound medabots_server:entity.doctor_haru.intro voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.doctor_haru"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_intro.doctor_haru"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.doctor_haru"}'}] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 70
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.director_tune"}'}] run playsound medabots_server:entity.director_tune.intro voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.director_tune"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_intro.director_tune"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.director_tune"}'}] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 50
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.krosserdog"}'}] run playsound medabots_server:entity.brass.intro voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.krosserdog"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_intro.krosserdog"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.krosserdog"}'}] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 50
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.totalizer"}'}] run playsound medabots_server:entity.totalizer.intro voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.totalizer"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_intro.totalizer"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.totalizer"}'}] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 50
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.peppercat"}'}] run playsound medabots_server:entity.peppercat.intro voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.peppercat"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_intro.peppercat"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.peppercat"}'}] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 150
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.max"}'}] run playsound medabots_server:entity.max.intro voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.max"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_intro.max"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.max"}'}] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 40
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.brass"}'}] run playsound medabots_server:entity.brass.intro voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.brass"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_intro.brass"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.brass"}'}] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 40
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.roks"}'}] run playsound medabots_server:entity.roks.intro voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.roks"}'}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_intro.roks"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.roks"}'}] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 60
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.jaxy"}'},tag=message_1] run playsound medabots_server:entity.jaxy.intro.1 voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.jaxy"}'},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_intro.jaxy.1"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.jaxy"}'},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 70
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.jaxy"}'},tag=message_2] run playsound medabots_server:entity.jaxy.intro.2 voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.jaxy"}'},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_intro.jaxy.2"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.jaxy"}'},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 50
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.caroline"}'},tag=message_1] run playsound medabots_server:entity.caroline.intro.1 voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.caroline"}'},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_intro.caroline.1"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.caroline"}'},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 50
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.caroline"}'},tag=message_2] run playsound medabots_server:entity.caroline.intro.2 voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.caroline"}'},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.special_intro.caroline.2"}]}
execute if entity @s[nbt={CustomName:'{"translate":"medabots_server:entity.caroline"}'},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 50
tag @s remove message_1
tag @s remove message_2
execute if entity @e[tag=mr_referee,tag=this_robattle,scores={Dialog=0}] run function medabots_server:other/intro_message/message