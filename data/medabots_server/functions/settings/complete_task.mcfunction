# Unused task numbers: 1, 3, 4, 7, 8, 10, 11, 12

# Bug Testers

# Moderators
execute if entity @s[scores={TaskCheck=5}] run tellraw @a[tag=bug_tester] {"translate":"medabots_server:message.pending_tasks.done","with":[{"selector":"@s"},"Palace of Twilight, Egg Engines, Final Destination 3/4 (+ Master Fortress variant) and Subspace 1-3 need building."]}
execute if entity @s[scores={TaskCheck=5}] run data merge block -292 18 -60 {auto:0b}
execute if entity @s[scores={TaskCheck=6}] run tellraw @a[tag=bug_tester] {"translate":"medabots_server:message.pending_tasks.done","with":[{"selector":"@s"},"Mt. Battle's mountain look needs (a lot of) work."]}
execute if entity @s[scores={TaskCheck=6}] run data merge block -292 18 -59 {auto:0b}

# Personal
# FVbico
execute if entity @s[scores={TaskCheck=9}] run tellraw @a[tag=bug_tester] {"translate":"medabots_server:message.pending_tasks.done","with":[{"selector":"@s"},"Re-create Ricco Harbor."]}
execute if entity @s[scores={TaskCheck=9}] run data merge block -291 18 -58 {auto:0b}
execute if entity @s[scores={TaskCheck=2}] run tellraw @a[tag=bug_tester] {"translate":"medabots_server:message.pending_tasks.done","with":[{"selector":"@s"},"CPUs need custom AI."]}
execute if entity @s[scores={TaskCheck=2}] run data merge block -291 18 -60 {auto:0b}
# UltimateGold
execute if entity @s[scores={TaskCheck=13}] run tellraw @a[tag=bug_tester] {"translate":"medabots_server:message.pending_tasks.done","with":[{"selector":"@s"},"Tower of valnir needs rebuilding for spectator areas."]}
execute if entity @s[scores={TaskCheck=13}] run data merge block -290 18 -60 {auto:0b}

# Coop

scoreboard players reset @s TaskCheck