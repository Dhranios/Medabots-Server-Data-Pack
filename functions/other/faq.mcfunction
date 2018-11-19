# Allow asking a question
scoreboard players enable @a Question

# Out of range to forget what you asked
scoreboard players set @a[distance=9..13,scores={Question=-99}] Question 0

# I've met you, so my hello message is different
scoreboard players set @a[distance=9..13,scores={MedabotMet=-1}] MedabotMet 1

# hello
execute as @a[distance=..5,scores={MedabotMet=0},name=!"FVbico",gamemode=!spectator,team=!Moderator,tag=!bug_tester] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.meet.1","with":[{"selector":"@s"},{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"}]}]}
execute as @a[distance=..5,scores={MedabotMet=0},name=!"FVbico",gamemode=!spectator,team=Moderator] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.meet.1","with":[{"translate":"medabots_server:message.faq.hello.mod","color":"red"},{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"}]}]}
execute as @a[distance=..5,scores={MedabotMet=0},name="FVbico",gamemode=!spectator] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.meet.2","with":[{"translate":"medabots_server:message.faq.hello.master","color":"red"}]}]}
execute as @a[distance=..5,scores={MedabotMet=0},name=!"FVbico",gamemode=!spectator,team=!Moderator,tag=bug_tester] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.meet.3","with":[{"selector":"@s"},{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"}]}]}
scoreboard players set @a[distance=..5,scores={MedabotMet=0}] MedabotMet -1
execute as @a[distance=..5,scores={MedabotMet=1},name=!"FVbico",gamemode=!spectator,team=!Moderator,tag=!bug_tester] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.hello.1","with":[{"selector":"@s"}]}]}
execute as @a[distance=..5,scores={MedabotMet=1},name=!"FVbico",gamemode=!spectator,team=Moderator] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.hello.1","with":[{"translate":"medabots_server:message.faq.hello.mod","color":"red"}]}]}
execute as @a[distance=..5,scores={MedabotMet=1},name="FVbico",gamemode=!spectator] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.hello.2","with":[{"translate":"medabots_server:message.faq.hello.master","color":"red"}]}]}
execute as @a[distance=..5,scores={MedabotMet=1},name=!"FVbico",gamemode=!spectator,team=!Moderator,tag=bug_tester] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.hello.3","with":[{"selector":"@s"}]}]}
scoreboard players set @a[distance=..5,scores={MedabotMet=1}] MedabotMet -1

# About what do you want to ask?
execute if entity @s[tag=blackbeetle] positioned ~2 ~ ~ run tellraw @a[distance=..3,scores={Question=0}] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.ask.generic"}],"extra":[{"text":"\n"},{"translate":"medabots_server:message.faq.ask.generic.click","color":"green"},{"text":"\n"},{"translate":"medabots_server:message.faq.ask.generic.question","clickEvent":{"action":"run_command","value":"/trigger Question set -1"}},{"text":"\n"},{"translate":"medabots_server:message.faq.ask.generic.advice","clickEvent":{"action":"run_command","value":"/trigger Question set -2"}},{"text":"\n"},{"translate":"medabots_server:message.faq.ask.generic.issue","clickEvent":{"action":"run_command","value":"/trigger Question set -3"}},{"text":"\n"},{"translate":"medabots_server:message.faq.ask.generic.none","clickEvent":{"action":"run_command","value":"/trigger Question set -4"}}]}
execute if entity @s[tag=blackbeetle] positioned ~2 ~ ~ run scoreboard players set @a[distance=..3,scores={Question=0}] Question -99

# What do you want tto ask about that catagory?
tellraw @a[scores={Question=-4},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.generic.none.1"}]}
tellraw @a[scores={Question=-4},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.generic.none.2"}]}
tellraw @a[scores={Question=-3},distance=..13,tag=!bug_tester] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.ask.issue.1"}],"extra":[{"text":"\n"},{"translate":"medabots_server:message.faq.ask.issue.click","color":"green"},{"text":"\n"},{"translate":"medabots_server:message.faq.ask.issue.bug_suggestion","clickEvent":{"action":"run_command","value":"/trigger Question set 10"}},{"text":"\n"},{"translate":"medabots_server:message.faq.ask.issue.still_not_fixed","clickEvent":{"action":"run_command","value":"/trigger Question set 13"}},{"text":"\n"},{"translate":"medabots_server:message.faq.ask.issue.auto_report","clickEvent":{"action":"run_command","value":"/trigger Question set 14"}},{"text":"\n"},{"translate":"medabots_server:message.faq.ask.issue.translation","clickEvent":{"action":"run_command","value":"/trigger Question set 18"}},{"text":"\n"},{"translate":"medabots_server:message.faq.ask.issue.translation_error","clickEvent":{"action":"run_command","value":"/trigger Question set 19"}}]}
tellraw @a[scores={Question=-3},distance=..13,tag=bug_tester] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.ask.issue.2"}],"extra":[{"text":"\n"},{"translate":"medabots_server:message.faq.ask.issue.click","color":"green"},{"text":"\n"},{"translate":"medabots_server:message.faq.ask.issue.bug_suggestion","clickEvent":{"action":"run_command","value":"/trigger Question set 10"}},{"text":"\n"},{"translate":"medabots_server:message.faq.ask.issue.still_not_fixed","clickEvent":{"action":"run_command","value":"/trigger Question set 13"}},{"text":"\n"},{"translate":"medabots_server:message.faq.ask.issue.auto_report","clickEvent":{"action":"run_command","value":"/trigger Question set 14"}},{"text":"\n"},{"translate":"medabots_server:message.faq.ask.issue.translation","clickEvent":{"action":"run_command","value":"/trigger Question set 18"}},{"text":"\n"},{"translate":"medabots_server:message.faq.ask.issue.translation_error","clickEvent":{"action":"run_command","value":"/trigger Question set 19"}}]}
tellraw @a[scores={Question=-2},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.ask.advice"}],"extra":[{"text":"\n"},{"translate":"medabots_server:message.faq.ask.advice.click","color":"green"},{"text":"\n"},{"translate":"medabots_server:entity.guard","clickEvent":{"action":"run_command","value":"/trigger Question set 4"}},{"text":".\n"},{"translate":"medabots_server:entity.cannon","clickEvent":{"action":"run_command","value":"/trigger Question set 5"}},{"text":".\n"},{"translate":"medabots_server:entity.argorok","clickEvent":{"action":"run_command","value":"/trigger Question set 6"}},{"text":".\n"},{"translate":"medabots_server:entity.hr_d3","clickEvent":{"action":"run_command","value":"/trigger Question set 12"}},{"text":".\n"},{"translate":"medabots_server:entity.master_hand","clickEvent":{"action":"run_command","value":"/trigger Question set 17"}},{"text":".\n"},{"translate":"medabots_server:message.faq.ask.advice.battle","clickEvent":{"action":"run_command","value":"/trigger Question set 7"}}]}
tellraw @a[scores={Question=-1},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.ask.question"}],"extra":[{"text":"\n"},{"translate":"medabots_server:message.faq.ask.question.click","color":"green"},{"text":"\n"},{"translate":"medabots_server:message.faq.ask.question.where_i","clickEvent":{"action":"run_command","value":"/trigger Question set 1"}},{"text":"\n"},{"translate":"medabots_server:message.faq.ask.question.who_you","clickEvent":{"action":"run_command","value":"/trigger Question set 2"}},{"text":"\n"},{"translate":"medabots_server:message.faq.ask.question.scared","clickEvent":{"action":"run_command","value":"/trigger Question set 3"}},{"text":"\n"},{"translate":"medabots_server:message.faq.ask.question.custom_bots","clickEvent":{"action":"run_command","value":"/trigger Question set 8"}},{"text":"\n"},{"translate":"medabots_server:message.faq.ask.question.lagdou","clickEvent":{"action":"run_command","value":"/trigger Question set 9"}},{"text":"\n"},{"translate":"medabots_server:message.faq.ask.question.armor","clickEvent":{"action":"run_command","value":"/trigger Question set 11"}},{"text":"\n"},{"translate":"medabots_server:message.faq.ask.question.like","clickEvent":{"action":"run_command","value":"/trigger Question set 15"}},{"text":"\n"},{"translate":"medabots_server:message.faq.ask.question.how_you_know_me","clickEvent":{"action":"run_command","value":"/trigger Question set 16"}}]}

# Answer
tellraw @a[scores={Question=1},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.generic.where_i.1"}]}
tellraw @a[scores={Question=1},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.generic.where_i.2"}]}
tellraw @a[scores={Question=2},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.generic.who_you.1","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:entity.team.moderator","color":"red","with":[{"text":"FVbico","color":"red"}]}]}]}
tellraw @a[scores={Question=2},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.generic.who_you.2"}]}
tellraw @a[scores={Question=3},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.generic.scared.1"}]}
tellraw @a[scores={Question=3},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.generic.scared.2"}]}
tellraw @a[scores={Question=4},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.advice.guard.1"}]}
tellraw @a[scores={Question=4},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.advice.guard.2"}]}
tellraw @a[scores={Question=5},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.advice.cannon.1"}]}
tellraw @a[scores={Question=5},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.advice.cannon.2"}]}
tellraw @a[scores={Question=6},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.advice.argorok.1","with":[{"translate":"medabots_server:message.argorok"},{"translate":"medabots_server:message.argorok"}]}]}
tellraw @a[scores={Question=6},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.advice.argorok.2"}]}
tellraw @a[scores={Question=7},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.advice.battle.1"}]}
tellraw @a[scores={Question=7},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.advice.battle.2"}]}
tellraw @a[scores={Question=8},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.generic.custom_bot.1"}]}
tellraw @a[scores={Question=8},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.generic.custom_bot.2","with":[{"translate":"medabots_server:entity.zant"},{"translate":"medabots_server:entity.rob"}]}]}
tellraw @a[scores={Question=9},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.generic.lagdou.1"}]}
tellraw @a[scores={Question=9},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.generic.lagdou.2"}]}
tellraw @a[scores={Question=10},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.issue.bug_suggestion.1"}]}
tellraw @a[scores={Question=10},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.issue.bug_suggestion.2"}]}
tellraw @a[scores={Question=11},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.generic.armor.1"}]}
tellraw @a[scores={Question=11},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.generic.armor.2"}]}
tellraw @a[scores={Question=12},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.advice.hr_d3.1","with":[{"translate":"medabots_server:message.hr_d3"}]}]}
tellraw @a[scores={Question=12},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.advice.hr_d3.2"}]}
tellraw @a[scores={Question=13},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.issue.still_not_fixed.1"}]}
tellraw @a[scores={Question=13},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.issue.still_not_fixed.2"}]}
tellraw @a[scores={Question=14},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.issue.auto_report.1"}]}
tellraw @a[scores={Question=14},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.issue.auto_report.2"}]}
tellraw @a[scores={Question=15},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.generic.like.1"}]}
tellraw @a[scores={Question=15},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.generic.like.2"}]}
tellraw @a[scores={Question=16},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.generic.how_you_know_me.1"}]}
tellraw @a[scores={Question=16},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.generic.how_you_know_me.2"}]}
tellraw @a[scores={Question=17},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.advice.master_hand.1"}]}
tellraw @a[scores={Question=17},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.advice.master_hand.2"}]}
tellraw @a[scores={Question=18},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.issue.translation.1","with":[{"text":"="}]}]}
tellraw @a[scores={Question=18},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.issue.translation.2"}]}
tellraw @a[scores={Question=19},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.issue.translation_error.1","with":[{"text":"Translation Error"}]}]}
tellraw @a[scores={Question=19},distance=..13] {"translate":"chat.type.text","with":[{"selector":"@e[type=minecraft:armor_stand,tag=name,limit=1]"},{"translate":"medabots_server:message.faq.reply.issue.translation_error.2"}]}
teleport @a[scores={Question=10},distance=..13] -296 18 -57
give @a[scores={Question=19},distance=..13] minecraft:writable_book

# Reset choice
scoreboard players set @a[scores={Question=-4}] Question -99
scoreboard players set @a[scores={Question=-3}] Question -99
scoreboard players set @a[scores={Question=-2}] Question -99
scoreboard players set @a[scores={Question=-1}] Question -99
scoreboard players set @a[scores={Question=1}] Question -99
scoreboard players set @a[scores={Question=2}] Question -99
scoreboard players set @a[scores={Question=3}] Question -99
scoreboard players set @a[scores={Question=4}] Question -99
scoreboard players set @a[scores={Question=5}] Question -99
scoreboard players set @a[scores={Question=6}] Question -99
scoreboard players set @a[scores={Question=7}] Question -99
scoreboard players set @a[scores={Question=8}] Question -99
scoreboard players set @a[scores={Question=9}] Question -99
scoreboard players set @a[scores={Question=10}] Question -99
scoreboard players set @a[scores={Question=11}] Question -99
scoreboard players set @a[scores={Question=12}] Question -99
scoreboard players set @a[scores={Question=13}] Question -99
scoreboard players set @a[scores={Question=14}] Question -99
scoreboard players set @a[scores={Question=15}] Question -99
scoreboard players set @a[scores={Question=16}] Question -99
scoreboard players set @a[scores={Question=17}] Question -99
scoreboard players set @a[scores={Question=18}] Question -99
scoreboard players set @a[scores={Question=19}] Question -99
scoreboard players set @a[scores={Question=-90..1},distance=..13] Question 0

# BEEP BOOP BEEP, I AM BOT
team join Bot @s