execute store result score #real_player bb.players if entity @a
execute store result score #fake_player bb.players if entity @e[tag=boomber.fake_player]
execute store result score #player bb.players run scoreboard players operation #fake_player bb.players += #real_player bb.players
execute store result score #sleep bb.players if entity @e[tag=boomber.morpheus.is_sleep]
execute store result score #sleeping bb.players if entity @e[tag=boomber.morpheus.is_sleep]

execute store result score #player bb.players run scoreboard players operation #player bb.players *= #1 bb.global
execute store result score #sleep bb.players run scoreboard players operation #sleep bb.players *= #100 bb.global

execute store result score #sleep_in_percent bb.players run scoreboard players operation #sleep bb.players /= #player bb.players

execute store result score #sleep_in_percent bb.players run scoreboard players operation #sleep_in_percent bb.players *= #1 bb.global

execute store result score #cal_sleep_in_percent bb.players run scoreboard players get #sleep_in_percent bb.players
execute store result score #cal_sleep_in_percent bb.players run scoreboard players operation #cal_sleep_in_percent bb.players *= #100 bb.global
execute store result score #cal_sleep_percentage bb.players run scoreboard players get #minimum_percentage bb.players
execute store result score #sleep_percentage bb.players run scoreboard players operation #cal_sleep_in_percent bb.players /= #cal_sleep_percentage bb.players
execute store result score #sleep_percentage bb.players run scoreboard players operation #sleep_percentage bb.players *= #1 bb.global


execute store result score #cal_minimum_percent bb.players run scoreboard players get #minimum_percentage bb.players
execute store result score #cal_player bb.players run scoreboard players get #player bb.players
execute store result score #player_needed bb.players run scoreboard players operation #cal_player bb.players *= #cal_minimum_percent bb.players
execute store result score #cal_value bb.players run scoreboard players get #player_needed bb.players
function boomber:morpheus/calculation/rounding
execute store result score #player_needed bb.players run scoreboard players operation #player_needed bb.players /= #100 bb.global