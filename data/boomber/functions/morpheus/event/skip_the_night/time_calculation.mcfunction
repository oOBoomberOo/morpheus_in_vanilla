scoreboard players operation #time bb.variable = #cal_time bb.time

execute if score #time bb.variable matches 12000..13500 run time add 10000
execute if score #time bb.variable matches 12000..13500 run scoreboard players add #cal_time bb.time 10000
execute if score #time bb.variable matches 12000..13500 run function boomber:morpheus/event/skip_the_night/time_calculation

execute if score #time bb.variable matches 13501..22500 run time add 1000
execute if score #time bb.variable matches 13501..22500 run scoreboard players add #cal_time bb.time 1000
execute if score #time bb.variable matches 13501..22500 run function boomber:morpheus/event/skip_the_night/time_calculation

execute if score #time bb.variable matches 22501..23900 run time add 100
execute if score #time bb.variable matches 22501..23900 run scoreboard players add #cal_time bb.time 100
execute if score #time bb.variable matches 22501..23900 run function boomber:morpheus/event/skip_the_night/time_calculation

execute if score #time bb.variable matches 23901..23990 run time add 10
execute if score #time bb.variable matches 23901..23990 run scoreboard players add #cal_time bb.time 10
execute if score #time bb.variable matches 23901..23990 run function boomber:morpheus/event/skip_the_night/time_calculation

execute if score #time bb.variable matches 23991..23999 run time add 1
execute if score #time bb.variable matches 23991..23999 run scoreboard players add #cal_time bb.time 1
execute if score #time bb.variable matches 23991..23999 run function boomber:morpheus/event/skip_the_night/time_calculation

execute if score #time bb.variable matches 23999.. run function boomber:morpheus/event/next_day