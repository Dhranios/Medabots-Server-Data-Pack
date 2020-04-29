summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Message Selection"}',Tags:["message_selection","1"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Message Selection"}',Tags:["message_selection","2"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Message Selection"}',Tags:["message_selection","3"],Duration:1}
tag @e[type=minecraft:area_effect_cloud,tag=message_selection,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=message_selection,tag=selected,tag=1] run tag @s add message_1
execute if entity @e[type=minecraft:area_effect_cloud,tag=message_selection,tag=selected,tag=2] run tag @s add message_2
execute if entity @e[type=minecraft:area_effect_cloud,tag=message_selection,tag=selected,tag=3] run tag @s add message_3

# Send the introer message depending on selected set
execute if entity @s[scores={Medabot=1},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.keithturtle.intro.1"}]}
execute if entity @s[scores={Medabot=1},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=1},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.keithturtle.intro.2"}]}
execute if entity @s[scores={Medabot=1},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=1},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.keithturtle.intro.3"}]}
execute if entity @s[scores={Medabot=1},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=2},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.knight_armor.intro.1"}]}
execute if entity @s[scores={Medabot=2},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=2},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.knight_armor.intro.2"}]}
execute if entity @s[scores={Medabot=2},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=2},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.knight_armor.intro.3"}]}
execute if entity @s[scores={Medabot=2},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=3},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.doctor_study.intro.1"}]}
execute if entity @s[scores={Medabot=3},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=3},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.doctor_study.intro.2"}]}
execute if entity @s[scores={Medabot=3},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=3},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.doctor_study.intro.3"}]}
execute if entity @s[scores={Medabot=3},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=4},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.grade_kabuki.intro.1"}]}
execute if entity @s[scores={Medabot=4},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=4},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.grade_kabuki.intro.2"}]}
execute if entity @s[scores={Medabot=4},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=4},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.grade_kabuki.intro.3"}]}
execute if entity @s[scores={Medabot=4},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=5},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.kasou_touchu.intro.1"}]}
execute if entity @s[scores={Medabot=5},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=5},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.kasou_touchu.intro.2"}]}
execute if entity @s[scores={Medabot=5},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=5},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.kasou_touchu.intro.3"}]}
execute if entity @s[scores={Medabot=5},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=6},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.maxsnake.intro.1"}]}
execute if entity @s[scores={Medabot=6},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=6},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.maxsnake.intro.2"}]}
execute if entity @s[scores={Medabot=6},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=6},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.maxsnake.intro.3"}]}
execute if entity @s[scores={Medabot=6},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=7},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.poison_scorpi.intro.1"}]}
execute if entity @s[scores={Medabot=7},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=7},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.poison_scorpi.intro.2"}]}
execute if entity @s[scores={Medabot=7},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=7},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.poison_scorpi.intro.3"}]}
execute if entity @s[scores={Medabot=7},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=8},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.bluesdog.intro.1"}]}
execute if entity @s[scores={Medabot=8},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=8},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.bluesdog.intro.2"}]}
execute if entity @s[scores={Medabot=8},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=8},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.bluesdog.intro.3"}]}
execute if entity @s[scores={Medabot=8},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=9},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.attack_tyrano.intro.1"}]}
execute if entity @s[scores={Medabot=9},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=9},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.attack_tyrano.intro.2"}]}
execute if entity @s[scores={Medabot=9},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=9},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.attack_tyrano.intro.3"}]}
execute if entity @s[scores={Medabot=9},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=10},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.magicalcard.intro.1"}]}
execute if entity @s[scores={Medabot=10},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=10},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.magicalcard.intro.2"}]}
execute if entity @s[scores={Medabot=10},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=10},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.magicalcard.intro.3"}]}
execute if entity @s[scores={Medabot=10},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=11},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.baroncastle.intro.1"}]}
execute if entity @s[scores={Medabot=11},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=11},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.baroncastle.intro.2"}]}
execute if entity @s[scores={Medabot=11},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=11},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.baroncastle.intro.3"}]}
execute if entity @s[scores={Medabot=11},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=12},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.hellphoenix.intro.1"}]}
execute if entity @s[scores={Medabot=12},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=12},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.hellphoenix.intro.2"}]}
execute if entity @s[scores={Medabot=12},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=12},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.hellphoenix.intro.3"}]}
execute if entity @s[scores={Medabot=12},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=13},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.fly_falcon.intro.1"}]}
execute if entity @s[scores={Medabot=13},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=13},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.fly_falcon.intro.2"}]}
execute if entity @s[scores={Medabot=13},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=13},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.fly_falcon.intro.3"}]}
execute if entity @s[scores={Medabot=13},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=14},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.blackstag.intro.1"}]}
execute if entity @s[scores={Medabot=14},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=14},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.blackstag.intro.2"}]}
execute if entity @s[scores={Medabot=14},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=14},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.blackstag.intro.3"}]}
execute if entity @s[scores={Medabot=14},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=15},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.arcbeetle.intro.1"}]}
execute if entity @s[scores={Medabot=15},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=15},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.arcbeetle.intro.2"}]}
execute if entity @s[scores={Medabot=15},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=15},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.arcbeetle.intro.3"}]}
execute if entity @s[scores={Medabot=15},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=16},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.bezelga.intro.1"}]}
execute if entity @s[scores={Medabot=16},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=16},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.bezelga.intro.2"}]}
execute if entity @s[scores={Medabot=16},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=16},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.bezelga.intro.3"}]}
execute if entity @s[scores={Medabot=16},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=17},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.god_emperor.intro.1"}]}
execute if entity @s[scores={Medabot=17},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=17},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.god_emperor.intro.2"}]}
execute if entity @s[scores={Medabot=17},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=17},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.god_emperor.intro.3"}]}
execute if entity @s[scores={Medabot=17},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=18},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.shoot_spider.intro.1"}]}
execute if entity @s[scores={Medabot=18},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=18},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.shoot_spider.intro.2"}]}
execute if entity @s[scores={Medabot=18},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=18},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.shoot_spider.intro.3"}]}
execute if entity @s[scores={Medabot=18},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=19},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.pretty_prime.intro.1"}]}
execute if entity @s[scores={Medabot=19},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=19},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.pretty_prime.intro.2"}]}
execute if entity @s[scores={Medabot=19},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=19},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.pretty_prime.intro.3"}]}
execute if entity @s[scores={Medabot=19},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=20},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.basstoyer.intro.1"}]}
execute if entity @s[scores={Medabot=20},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=20},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.basstoyer.intro.2"}]}
execute if entity @s[scores={Medabot=20},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=20},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.basstoyer.intro.3"}]}
execute if entity @s[scores={Medabot=20},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=21},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.kanehachi_mk2.intro.1"}]}
execute if entity @s[scores={Medabot=21},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=21},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.kanehachi_mk2.intro.2"}]}
execute if entity @s[scores={Medabot=21},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=21},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.kanehachi_mk2.intro.3"}]}
execute if entity @s[scores={Medabot=21},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=22},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.abyss_greater.intro.1"}]}
execute if entity @s[scores={Medabot=22},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=22},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.abyss_greater.intro.2"}]}
execute if entity @s[scores={Medabot=22},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=22},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.abyss_greater.intro.3"}]}
execute if entity @s[scores={Medabot=22},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=23},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.bot.darknut.intro.1"}]}
execute if entity @s[scores={Medabot=23},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=23},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.bot.darknut.intro.2"}]}
execute if entity @s[scores={Medabot=23},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=23},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.bot.darknut.intro.3"}]}
execute if entity @s[scores={Medabot=23},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=24},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.blackbeetle.intro.1"}]}
execute if entity @s[scores={Medabot=24},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=24},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.blackbeetle.intro.2"}]}
execute if entity @s[scores={Medabot=24},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=24},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.blackbeetle.intro.3"}]}
execute if entity @s[scores={Medabot=24},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=25},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.zant.intro.1"}]}
execute if entity @s[scores={Medabot=25},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=25},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.zant.intro.2"}]}
execute if entity @s[scores={Medabot=25},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=25},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.zant.intro.3"}]}
execute if entity @s[scores={Medabot=25},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=26},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.aimflash.intro.1"}]}
execute if entity @s[scores={Medabot=26},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=26},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.aimflash.intro.2"}]}
execute if entity @s[scores={Medabot=26},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=26},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.aimflash.intro.3"}]}
execute if entity @s[scores={Medabot=26},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=27},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.peppercat.intro.1"}]}
execute if entity @s[scores={Medabot=27},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=27},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.peppercat.intro.2"}]}
execute if entity @s[scores={Medabot=27},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=27},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.peppercat.intro.3"}]}
execute if entity @s[scores={Medabot=27},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=28},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.seven_colors.intro.1"}]}
execute if entity @s[scores={Medabot=28},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=28},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.seven_colors.intro.2"}]}
execute if entity @s[scores={Medabot=28},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=28},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.seven_colors.intro.3"}]}
execute if entity @s[scores={Medabot=28},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=29},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.boarbooster.intro.1"}]}
execute if entity @s[scores={Medabot=29},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=29},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.boarbooster.intro.2"}]}
execute if entity @s[scores={Medabot=29},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=29},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.boarbooster.intro.3"}]}
execute if entity @s[scores={Medabot=29},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=30},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.dondoguu.intro.1"}]}
execute if entity @s[scores={Medabot=30},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=30},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.dondoguu.intro.2"}]}
execute if entity @s[scores={Medabot=30},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=30},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.dondoguu.intro.3"}]}
execute if entity @s[scores={Medabot=30},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=31},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.dragonbeetle.intro.1"}]}
execute if entity @s[scores={Medabot=31},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=31},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.dragonbeetle.intro.2"}]}
execute if entity @s[scores={Medabot=31},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=31},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.dragonbeetle.intro.3"}]}
execute if entity @s[scores={Medabot=31},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=32},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.dorcus.intro.1"}]}
execute if entity @s[scores={Medabot=32},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=32},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.dorcus.intro.2"}]}
execute if entity @s[scores={Medabot=32},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=32},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.dorcus.intro.3"}]}
execute if entity @s[scores={Medabot=32},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=33},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.king_pharaoh.intro.1"}]}
execute if entity @s[scores={Medabot=33},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=33},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.king_pharaoh.intro.2"}]}
execute if entity @s[scores={Medabot=33},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=33},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.king_pharaoh.intro.3"}]}
execute if entity @s[scores={Medabot=33},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=34},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.hippopojamas.intro.1"}]}
execute if entity @s[scores={Medabot=34},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=34},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.hippopojamas.intro.2"}]}
execute if entity @s[scores={Medabot=34},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=34},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.hippopojamas.intro.3"}]}
execute if entity @s[scores={Medabot=34},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=35},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.rhinorush.intro.1"}]}
execute if entity @s[scores={Medabot=35},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=35},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.rhinorush.intro.2"}]}
execute if entity @s[scores={Medabot=35},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=35},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.rhinorush.intro.3"}]}
execute if entity @s[scores={Medabot=35},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=36},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.fancyroll.intro.1"}]}
execute if entity @s[scores={Medabot=36},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=36},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.fancyroll.intro.2"}]}
execute if entity @s[scores={Medabot=36},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=36},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.fancyroll.intro.3"}]}
execute if entity @s[scores={Medabot=36},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=37},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.pastel_fairy.intro.1"}]}
execute if entity @s[scores={Medabot=37},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=37},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.pastel_fairy.intro.2"}]}
execute if entity @s[scores={Medabot=37},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=37},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.pastel_fairy.intro.3"}]}
execute if entity @s[scores={Medabot=37},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=38},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.flame_tisara.intro.1"}]}
execute if entity @s[scores={Medabot=38},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=38},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.flame_tisara.intro.2"}]}
execute if entity @s[scores={Medabot=38},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=38},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.flame_tisara.intro.3"}]}
execute if entity @s[scores={Medabot=38},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=39},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.sailor_multi.intro.1"}]}
execute if entity @s[scores={Medabot=39},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=39},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.sailor_multi.intro.2"}]}
execute if entity @s[scores={Medabot=39},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=39},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.sailor_multi.intro.3"}]}
execute if entity @s[scores={Medabot=39},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=40},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.saintnurse.intro.1"}]}
execute if entity @s[scores={Medabot=40},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=40},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.saintnurse.intro.2"}]}
execute if entity @s[scores={Medabot=40},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=40},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.saintnurse.intro.3"}]}
execute if entity @s[scores={Medabot=40},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=41},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.potato_insect.intro.1"}]}
execute if entity @s[scores={Medabot=41},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=41},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.potato_insect.intro.2"}]}
execute if entity @s[scores={Medabot=41},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=41},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.potato_insect.intro.3"}]}
execute if entity @s[scores={Medabot=41},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=42},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.uglyduck.intro.1"}]}
execute if entity @s[scores={Medabot=42},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=42},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.uglyduck.intro.2"}]}
execute if entity @s[scores={Medabot=42},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=42},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.uglyduck.intro.3"}]}
execute if entity @s[scores={Medabot=42},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=43},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.pure_mermaid.intro.1"}]}
execute if entity @s[scores={Medabot=43},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=43},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.pure_mermaid.intro.2"}]}
execute if entity @s[scores={Medabot=43},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=43},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.pure_mermaid.intro.3"}]}
execute if entity @s[scores={Medabot=43},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=44},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.pinguen.intro.1"}]}
execute if entity @s[scores={Medabot=44},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=44},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.pinguen.intro.2"}]}
execute if entity @s[scores={Medabot=44},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=44},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.pinguen.intro.3"}]}
execute if entity @s[scores={Medabot=44},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=45},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.magolor.intro.1"}]}
execute if entity @s[scores={Medabot=45},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=45},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.magolor.intro.2"}]}
execute if entity @s[scores={Medabot=45},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=45},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.magolor.intro.3"}]}
execute if entity @s[scores={Medabot=45},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=46},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.amelia.intro.1"}]}
execute if entity @s[scores={Medabot=46},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=46},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.amelia.intro.2"}]}
execute if entity @s[scores={Medabot=46},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=46},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.amelia.intro.3"}]}
execute if entity @s[scores={Medabot=46},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=47},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.saikachis.intro.1"}]}
execute if entity @s[scores={Medabot=47},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=47},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.saikachis.intro.2"}]}
execute if entity @s[scores={Medabot=47},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=47},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.saikachis.intro.3"}]}
execute if entity @s[scores={Medabot=47},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=48},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.ashton.intro.1"}]}
execute if entity @s[scores={Medabot=48},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=48},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.ashton.intro.2"}]}
execute if entity @s[scores={Medabot=48},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=48},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.ashton.intro.3"}]}
execute if entity @s[scores={Medabot=48},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=49},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.rob.intro.1"}]}
execute if entity @s[scores={Medabot=49},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=49},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.rob.intro.2"}]}
execute if entity @s[scores={Medabot=49},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=49},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.rob.intro.3"}]}
execute if entity @s[scores={Medabot=49},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=50},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.iron_man.intro.1"}]}
execute if entity @s[scores={Medabot=50},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=50},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.iron_man.intro.2"}]}
execute if entity @s[scores={Medabot=50},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=50},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.iron_man.intro.3"}]}
execute if entity @s[scores={Medabot=50},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=51},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.master_core.intro.1"}]}
execute if entity @s[scores={Medabot=51},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=51},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.master_core.intro.2"}]}
execute if entity @s[scores={Medabot=51},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=51},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.master_core.intro.3"}]}
execute if entity @s[scores={Medabot=51},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=52},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.mewtwo.intro.1"}]}
execute if entity @s[scores={Medabot=52},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=52},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.mewtwo.intro.2"}]}
execute if entity @s[scores={Medabot=52},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=52},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.mewtwo.intro.3"}]}
execute if entity @s[scores={Medabot=52},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=53},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.sphere_doomers.intro.1"}]}
execute if entity @s[scores={Medabot=53},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=53},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.sphere_doomers.intro.2"}]}
execute if entity @s[scores={Medabot=53},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=53},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.sphere_doomers.intro.3"}]}
execute if entity @s[scores={Medabot=53},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=54},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.metal_general.intro.1"}]}
execute if entity @s[scores={Medabot=54},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=54},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.metal_general.intro.2"}]}
execute if entity @s[scores={Medabot=54},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=54},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.metal_general.intro.3"}]}
execute if entity @s[scores={Medabot=54},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=55},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.smilidonad.intro.1"}]}
execute if entity @s[scores={Medabot=55},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=55},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.smilidonad.intro.2"}]}
execute if entity @s[scores={Medabot=55},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=55},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.smilidonad.intro.3"}]}
execute if entity @s[scores={Medabot=55},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=56},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.warbonnet.intro.1"}]}
execute if entity @s[scores={Medabot=56},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=56},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.warbonnet.intro.2"}]}
execute if entity @s[scores={Medabot=56},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=56},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.warbonnet.intro.3"}]}
execute if entity @s[scores={Medabot=56},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=57},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.primity_baby.intro.1"}]}
execute if entity @s[scores={Medabot=57},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=57},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.primity_baby.intro.2"}]}
execute if entity @s[scores={Medabot=57},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=57},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.primity_baby.intro.3"}]}
execute if entity @s[scores={Medabot=57},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=58},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.acehorn.intro.1"}]}
execute if entity @s[scores={Medabot=58},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=58},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.acehorn.intro.2"}]}
execute if entity @s[scores={Medabot=58},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=58},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.acehorn.intro.3"}]}
execute if entity @s[scores={Medabot=58},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=59},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.yuchitang.intro.1"}]}
execute if entity @s[scores={Medabot=59},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=59},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.yuchitang.intro.2"}]}
execute if entity @s[scores={Medabot=59},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=59},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.yuchitang.intro.3"}]}
execute if entity @s[scores={Medabot=59},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=60},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.ka_o_lantern.intro.1"}]}
execute if entity @s[scores={Medabot=60},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=60},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.ka_o_lantern.intro.2"}]}
execute if entity @s[scores={Medabot=60},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=60},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.ka_o_lantern.intro.3"}]}
execute if entity @s[scores={Medabot=60},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=61},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.crimson_king.intro.1"}]}
execute if entity @s[scores={Medabot=61},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=61},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.crimson_king.intro.2"}]}
execute if entity @s[scores={Medabot=61},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=61},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.crimson_king.intro.3"}]}
execute if entity @s[scores={Medabot=61},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=62},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.metabee.intro.1"}]}
execute if entity @s[scores={Medabot=62},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=62},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.metabee.intro.2"}]}
execute if entity @s[scores={Medabot=62},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=62},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.metabee.intro.3"}]}
execute if entity @s[scores={Medabot=62},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=63},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.rokusho.intro.1"}]}
execute if entity @s[scores={Medabot=63},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=63},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.rokusho.intro.2"}]}
execute if entity @s[scores={Medabot=63},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=63},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.rokusho.intro.3"}]}
execute if entity @s[scores={Medabot=63},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=64},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.marine_introer.intro.1"}]}
execute if entity @s[scores={Medabot=64},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=64},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.marine_introer.intro.2"}]}
execute if entity @s[scores={Medabot=64},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=64},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.marine_introer.intro.3"}]}
execute if entity @s[scores={Medabot=64},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=65},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.pururun_jelly.intro.1"}]}
execute if entity @s[scores={Medabot=65},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=65},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.pururun_jelly.intro.2"}]}
execute if entity @s[scores={Medabot=65},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=65},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.pururun_jelly.intro.3"}]}
execute if entity @s[scores={Medabot=65},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=66},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.le_villain.intro.1"}]}
execute if entity @s[scores={Medabot=66},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=66},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.le_villain.intro.2"}]}
execute if entity @s[scores={Medabot=66},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=66},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.le_villain.intro.3"}]}
execute if entity @s[scores={Medabot=66},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=67},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.suzumega_hummer.intro.1"}]}
execute if entity @s[scores={Medabot=67},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=67},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.suzumega_hummer.intro.2"}]}
execute if entity @s[scores={Medabot=67},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=67},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.suzumega_hummer.intro.3"}]}
execute if entity @s[scores={Medabot=67},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=68},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.frappe.intro.1"}]}
execute if entity @s[scores={Medabot=68},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=68},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.frappe.intro.2"}]}
execute if entity @s[scores={Medabot=68},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=68},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.frappe.intro.3"}]}
execute if entity @s[scores={Medabot=68},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=69},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.nin_ninja.intro.1"}]}
execute if entity @s[scores={Medabot=69},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=69},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.nin_ninja.intro.2"}]}
execute if entity @s[scores={Medabot=69},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=69},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.nin_ninja.intro.3"}]}
execute if entity @s[scores={Medabot=69},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=70},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.nino.intro.1"}]}
execute if entity @s[scores={Medabot=70},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=70},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.nino.intro.2"}]}
execute if entity @s[scores={Medabot=70},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=70},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.nino.intro.3"}]}
execute if entity @s[scores={Medabot=70},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=71},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.galleom.intro.1"}]}
execute if entity @s[scores={Medabot=71},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=71},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.galleom.intro.2"}]}
execute if entity @s[scores={Medabot=71},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=71},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.galleom.intro.3"}]}
execute if entity @s[scores={Medabot=71},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=72},tag=message_1] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.general_grievous.intro.1"}]}
execute if entity @s[scores={Medabot=72},tag=message_1] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=72},tag=message_2] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.general_grievous.intro.2"}]}
execute if entity @s[scores={Medabot=72},tag=message_2] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
execute if entity @s[scores={Medabot=72},tag=message_3] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:message.general_grievous.intro.3"}]}
execute if entity @s[scores={Medabot=72},tag=message_3] run scoreboard players set @e[tag=mr_referee,tag=this_robattle] Dialog 0
