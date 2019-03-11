execute as @a unless data entity @s SleepingY run tag @s remove boomber.morpheus.announce_to_chat
execute as @a unless data entity @s SleepingY run tag @s remove boomber.morpheus.is_sleep
execute as @a if data entity @s SleepingY run tag @s add boomber.morpheus.is_sleep

function boomber:morpheus/calculation/calculate_player

execute if score #chat bb.gamerule matches ..0 as @a[tag=boomber.morpheus.is_sleep, tag=!boomber.morpheus.announce_to_chat] run function boomber:morpheus/chat/player_to_percent
execute if score #chat bb.gamerule matches 1 as @a[tag=boomber.morpheus.is_sleep, tag=!boomber.morpheus.announce_to_chat] run function boomber:morpheus/chat/sleep_to_percent
execute if score #chat bb.gamerule matches 2 as @a[tag=boomber.morpheus.is_sleep, tag=!boomber.morpheus.announce_to_chat] run function boomber:morpheus/chat/alternate_sleep_to_percent
execute if score #chat bb.gamerule matches 3.. as @a[tag=boomber.morpheus.is_sleep, tag=!boomber.morpheus.announce_to_chat] run function boomber:morpheus/chat/sleep_to_number

execute store result score #bb.mp.time bb.variable run time query daytime
execute if score #bb.mp.sleep_player bb.variable >= #bb.mp.player_needed bb.variable run scoreboard players add #bb.mp.sleep_timer bb.variable 1
execute if score #bb.mp.sleep_player bb.variable < #bb.mp.player_needed bb.variable run scoreboard players set #bb.mp.sleep_timer bb.variable 0
execute if score #bb.mp.sleep_timer bb.variable >= #sleep_time bb.gamerule if entity @e[tag=boomber.morpheus.is_sleep] if score #bb.mp.sleep_player bb.variable >= #bb.mp.player_needed bb.variable run function boomber:morpheus/event/time_machine/time_skip
