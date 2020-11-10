Config = {}
Config['Debug'] = false -- if this is enabled, synced animations will just spawn an npc that will do the animation with you

Config['pNotify'] = true -- use pNotify for notifications?

Config['SelectableButtons'] = { -- find controls here https://docs.fivem.net/docs/game-references/controls/
    {'~INPUT_MULTIPLAYER_INFO~', 20},
    {'~INPUT_VEH_NEXT_RADIO~', 81},
    {'~INPUT_VEH_PREV_RADIO~', 82},
    {'~INPUT_VEH_NEXT_RADIO_TRACK~', 83}, 
    {'~INPUT_VEH_PREV_RADIO_TRACK~', 84}
}

Config['OpenMenu'] = false -- button to open menu, set to false to disable hardcoded button opening (e.g if you want to add it to your own menu)
Config['CancelAnimation'] = 105
-- TriggerEvent('loffe_animations:openMenu') < event to open the menu

Config['PoleDance'] = { -- allows you to pole dance at the strip club, you can of course add more locations if you want.
    ['Enabled'] = true,
    ['Locations'] = {
        {['Position'] = vector3(112.60, -1286.76, 28.56), ['Number'] = '3'},
        {['Position'] = vector3(104.18, -1293.94, 29.26), ['Number'] = '1'},
        {['Position'] = vector3(102.24, -1290.54, 29.26), ['Number'] = '2'}
    }
}

Strings = {
    ['Choose_Favorite'] = 'Selecciona una tecla de la lista:',
    ['Select_Favorite'] = 'Asignar teclas',
    ['Manage_Favorites'] = 'Controlar teclas asignadas',
    ['Close'] = 'Cancelar',
    ['Updated_Favorites'] = 'Teclas Actualizadas',
    ['Remove?'] = 'Quieres borrar "%s" esta tecla rapida?',
    ['Yes'] = 'Si',
    ['No'] = 'No',
    ['Animations'] = 'Animaciones',
    ['Synced'] = 'Animaciones Sincronizadas',
    ['Synced2'] = 'Anim. Sincronizadas +18',
    ['Sync_Request'] = 'Quieres %s %s?',
    ['Pole_Dance'] = '[~r~E~w~] Pole dance',
    ['Noone_Close'] = 'No hay personas cerca',
    ['Not_In_Car'] = 'Debes estar en un vehículo para realizar esta acción'
}

Config['Synced'] = {
    {
        ['Label'] = 'Abrazo',
        ['RequesterLabel'] = 'recibir un abrazo de',
        ['Requester'] = {
            ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'kisses_guy_a', ['Flags'] = 0,
        },
        ['Accepter'] = {
            ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'kisses_guy_b', ['Flags'] = 0, ['Attach'] = {
                ['Bone'] = 9816,
                ['xP'] = 0.05,
                ['yP'] = 1.15,
                ['zP'] = -0.05,

                ['xR'] = 0.0,
                ['yR'] = 0.0,
                ['zR'] = 180.0,
            }
        }
    },
    {
        ['Label'] = 'Chocar los cinco',
        ['RequesterLabel'] = 'chocar los cinco con',
        ['Requester'] = {
            ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'highfive_guy_a', ['Flags'] = 0,
        },
        ['Accepter'] = {
            ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'highfive_guy_b', ['Flags'] = 0, ['Attach'] = {
                ['Bone'] = 9816,
                ['xP'] = -0.5,
                ['yP'] = 1.25,
                ['zP'] = 0.0,

                ['xR'] = 0.9,
                ['yR'] = 0.3,
                ['zR'] = 180.0,
            }
        }
    },
    {
        ['Label'] = 'Abrazo',
        ['RequesterLabel'] = 'un abrazo fraternal de',
        ['Requester'] = {
            ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'hugs_guy_a', ['Flags'] = 0,
        },
        ['Accepter'] = {
            ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'hugs_guy_b', ['Flags'] = 0, ['Attach'] = {
                ['Bone'] = 9816,
                ['xP'] = -0.025,
                ['yP'] = 1.15,
                ['zP'] = 0.0,

                ['xR'] = 0.0,
                ['yR'] = 0.0,
                ['zR'] = 180.0,
            }
        }
    },
    {
        ['Label'] = 'Puñito',
        ['RequesterLabel'] = 'chocar puños con',
        ['Requester'] = {
            ['Type'] = 'animation', ['Dict'] = 'anim@mp_player_intcelebrationpaired@f_f_fist_bump', ['Anim'] = 'fist_bump_left', ['Flags'] = 0,
        },
        ['Accepter'] = {
            ['Type'] = 'animation', ['Dict'] = 'anim@mp_player_intcelebrationpaired@f_f_fist_bump', ['Anim'] = 'fist_bump_right', ['Flags'] = 0, ['Attach'] = {
                ['Bone'] = 9816,
                ['xP'] = -0.6,
                ['yP'] = 0.9,
                ['zP'] = 0.0,

                ['xR'] = 0.0,
                ['yR'] = 0.0,
                ['zR'] = 270.0,
            }
        }
    },
    {
        ['Label'] = 'Saludo amistoso',
        ['RequesterLabel'] = 'un saludo amistoso de',
        ['Requester'] = {
            ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'handshake_guy_a', ['Flags'] = 0,
        },
        ['Accepter'] = {
            ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'handshake_guy_b', ['Flags'] = 0, ['Attach'] = {
                ['Bone'] = 9816,
                ['xP'] = 0.0,
                ['yP'] = 1.2,
                ['zP'] = 0.0,

                ['xR'] = 0.0,
                ['yR'] = 0.0,
                ['zR'] = 180.0,
            }
        }
    },
    {
        ['Label'] = 'Saludo cordial',
        ['RequesterLabel'] = 'un saludo formal de',
        ['Requester'] = {
            ['Type'] = 'animation', ['Dict'] = 'mp_common', ['Anim'] = 'givetake1_a', ['Flags'] = 0,
        },
        ['Accepter'] = {
            ['Type'] = 'animation', ['Dict'] = 'mp_common', ['Anim'] = 'givetake1_b', ['Flags'] = 0, ['Attach'] = {
                ['Bone'] = 9816,
                ['xP'] = 0.075,
                ['yP'] = 1.0,
                ['zP'] = 0.0,

                ['xR'] = 0.0,
                ['yR'] = 0.0,
                ['zR'] = 180.0,
            }
        }
    },
}

Config['Synced2'] = {
        {
            ['Label'] = 'Dar blowjob',
            ['RequesterLabel'] = 'recibir un blowjob de',
            ['Requester'] = {
                ['Type'] = 'animation', ['Dict'] = 'misscarsteal2pimpsex', ['Anim'] = 'pimpsex_hooker', ['Flags'] = 1, ['Attach'] = {
                    ['Bone'] = 9816,
                    ['xP'] = 0.0,
                    ['yP'] = 0.65,
                    ['zP'] = 0.0,
    
                    ['xR'] = 120.0,
                    ['yR'] = 0.0,
                    ['zR'] = 180.0,
                }
            },
            ['Accepter'] = {
                ['Type'] = 'animation', ['Dict'] = 'misscarsteal2pimpsex', ['Anim'] = 'pimpsex_punter', ['Flags'] = 1,
            },
        },
        {
            ['Label'] = 'Sexo de pié',
            ['RequesterLabel'] = 'tener sexo con',
            ['Requester'] = {
                ['Type'] = 'animation', ['Dict'] = 'misscarsteal2pimpsex', ['Anim'] = 'shagloop_hooker', ['Flags'] = 1, ['Attach'] = {
                    ['Bone'] = 9816,
                    ['xP'] = 0.05,
                    ['yP'] = 0.4,
                    ['zP'] = 0.0,
    
                    ['xR'] = 120.0,
                    ['yR'] = 0.0,
                    ['zR'] = 180.0,
                }
            },
            ['Accepter'] = {
                ['Type'] = 'animation', ['Dict'] = 'misscarsteal2pimpsex', ['Anim'] = 'shagloop_pimp', ['Flags'] = 1,
            },
        },
        {
            ['Label'] = 'Sexo de perrito', 
            ['RequesterLabel'] = 'tener sexo con',
            ['Requester'] = {
                ['Type'] = 'animation', ['Dict'] = 'rcmpaparazzo_2', ['Anim'] = 'shag_loop_a', ['Flags'] = 1,
            }, 
            ['Accepter'] = {
                ['Type'] = 'animation', ['Dict'] = 'rcmpaparazzo_2', ['Anim'] = 'shag_loop_poppy', ['Flags'] = 1, ['Attach'] = {
                    ['Bone'] = 9816,
                    ['xP'] = 0.015,
                    ['yP'] = 0.35,
                    ['zP'] = 0.0,
    
                    ['xR'] = 0.9,
                    ['yR'] = 0.3,
                    ['zR'] = 0.0,
                },
            },
        },
        {
            ['Label'] = "Sexo en auto (Abajo)", 
            ['RequesterLabel'] = 'tener sexo con',
            ['Car'] = true,
            ['Requester'] = {
                ['Type'] = 'animation', ['Dict'] = 'oddjobs@assassinate@vice@sex', ['Anim'] = 'frontseat_carsex_loop_m', ['Flags'] = 1,
            }, 
            ['Accepter'] = {
                ['Type'] = 'animation', ['Dict'] = 'oddjobs@assassinate@vice@sex', ['Anim'] = 'frontseat_carsex_loop_f', ['Flags'] = 1,
            },
        },
        {
            ['Label'] = "Sexo en auto (Arriba)", 
            ['RequesterLabel'] = 'tener sexo con',
            ['Car'] = true,
            ['Requester'] = {
                ['Type'] = 'animation', ['Dict'] = 'random@drunk_driver_2', ['Anim'] = 'cardrunksex_loop_f', ['Flags'] = 1,
            }, 
            ['Accepter'] = {
                ['Type'] = 'animation', ['Dict'] = 'random@drunk_driver_2', ['Anim'] = 'cardrunksex_loop_m', ['Flags'] = 1,
            },
        },
        {
            ['Label'] = "Recibir blowjob (Conductor)", 
            ['RequesterLabel'] = 'dar un blowjob a',
            ['Car'] = true,
            ['Requester'] = {
                ['Type'] = 'animation', ['Dict'] = 'oddjobs@towing', ['Anim'] = 'm_blow_job_loop', ['Flags'] = 1,
            }, 
            ['Accepter'] = {
                ['Type'] = 'animation', ['Dict'] = 'oddjobs@towing', ['Anim'] = 'f_blow_job_loop', ['Flags'] = 1,
            },
        },
}

Config['Animations'] = {
    {
    
        ['Label'] = 'Festivas',
        ['Data'] = {
            {['Label'] = "Fumar", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_SMOKING'},
            {['Label'] = "Músico", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_MUSICIAN'},
            {['Label'] = "Dj", ['Type'] = 'animation', ['Dict'] = 'anim@mp_player_intcelebrationmale@dj', ['Anim'] = 'dj', ['Flags'] = 0},
            {['Label'] = "Café", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_DRINKING'},
            {['Label'] = "Cerveza", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_PARTYING'},
            {['Label'] = "Guitarra Aerea", ['Type'] = 'animation', ['Dict'] = 'anim@mp_player_intcelebrationmale@air_guitar', ['Anim'] = 'air_guitar', ['Flags'] = 0},
            {['Label'] = "Air Shagging", ['Type'] = 'animation', ['Dict'] = 'anim@mp_player_intcelebrationfemale@air_shagging', ['Anim'] = 'air_shagging', ['Flags'] = 0},
            {['Label'] = "Rock'n'roll", ['Type'] = 'animation', ['Dict'] = 'mp_player_int_upperrock', ['Anim'] = 'mp_player_int_rock', ['Flags'] = 0},
            {['Label'] = "Postura borracha", ['Type'] = 'animation', ['Dict'] = 'amb@world_human_bum_standing@drunk@idle_a', ['Anim'] = 'idle_a', ['Flags'] = 0},
            {['Label'] = "Vomitando", ['Type'] = 'animation', ['Dict'] = 'oddjobs@taxi@tie', ['Anim'] = 'vomit_outside', ['Flags'] = 0},
    
        }    
    },
    {
        
        ['Label'] = 'Saludos',
        ['Data'] = {
            {['Label'] = "Saludar", ['Type'] = 'animation', ['Dict'] = 'gestures@m@standing@casual', ['Anim'] = 'gesture_hello', ['Flags'] = 0},
            {['Label'] = "Dar la mano", ['Type'] = 'animation', ['Dict'] = 'mp_common', ['Anim'] = 'givetake1_a', ['Flags'] = 0},
            {['Label'] = "Chocarla", ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'handshake_guy_a', ['Flags'] = 0},
            {['Label'] = "Abrazo", ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'hugs_guy_a', ['Flags'] = 0},
            {['Label'] = "Saludo", ['Type'] = 'animation', ['Dict'] = 'mp_player_int_uppersalute', ['Anim'] = 'mp_player_int_salute', ['Flags'] = 0},
    
        }    
    },
    {
        
        ['Label'] = 'Trabajo',
        ['Data'] = {
            {['Label'] = "Sospechoso: Rendirse", ['Type'] = 'animation', ['Dict'] = 'random@arrests@busted', ['Anim'] = 'idle_c', ['Flags'] = 0},
            {['Label'] = "Pescar", ['Type'] = 'scenario', ['Anim'] = 'world_human_stand_fishing'},
            {['Label'] = "Policía: Investigar", ['Type'] = 'animation', ['Dict'] = 'amb@code_human_police_investigate@idle_b', ['Anim'] = 'idle_f', ['Flags'] = 0},
            {['Label'] = "Policía: Usar radio", ['Type'] = 'animation', ['Dict'] = 'random@arrests', ['Anim'] = 'generic_radio_chatter', ['Flags'] = 0},
            {['Label'] = "Policía: Control de trafico", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_CAR_PARK_ATTENDANT'},
            {['Label'] = "Policía: Binoculares", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_BINOCULARS'},
            {['Label'] = "Policía: Guardia", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_COP_IDLES'},
			{['Label'] = "Policía: Guardia 2", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_GUARD_STAND'},
			{['Label'] = "Minero: Taladrar", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_CONST_DRILL'},
            {['Label'] = "Agriculture: Plantar", ['Type'] = 'scenario', ['Anim'] = 'world_human_gardener_plant'},
            {['Label'] = "Mecánico: Arreglar motor", ['Type'] = 'animation', ['Dict'] = 'mini@repair', ['Anim'] = 'fixing_a_ped', ['Flags'] = 0},
            {['Label'] = "Médico: Arrodillarse", ['Type'] = 'scenario', ['Anim'] = 'CODE_HUMAN_MEDIC_KNEEL'},
            {['Label'] = "Taxista: Hablar con cliente", ['Type'] = 'animation', ['Dict'] = 'oddjobs@taxi@driver', ['Anim'] = 'leanover_idle', ['Flags'] = 0},
            {['Label'] = "Taxista: Dar factura", ['Type'] = 'animation', ['Dict'] = 'oddjobs@taxi@cyi', ['Anim'] = 'std_hand_off_ps_passenger', ['Flags'] = 0},
            {['Label'] = "Tendero: Dar producto", ['Type'] = 'animation', ['Dict'] = 'mp_am_hold_up', ['Anim'] = 'purchase_beerbox_shopkeeper', ['Flags'] = 0},
            {['Label'] = "Barman: Servir shot", ['Type'] = 'animation', ['Dict'] = 'mini@drinking', ['Anim'] = 'shots_barman_b', ['Flags'] = 0},
            {['Label'] = "Reportero: Tomar fotos", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_PAPARAZZI'},
            {['Label'] = "Todos: Anotaciones", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_CLIPBOARD'},
            {['Label'] = "Todos: Martillar", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_HAMMERING'},
            {['Label'] = "Vago: Mostrar letrero", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_BUM_FREEWAY'},
            {['Label'] = "Vago: Estatua humana", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_HUMAN_STATUE'},
    
        }    
    },
    {
        
        ['Label'] = 'Divertidas',
        ['Data'] = {
            {['Label'] = "Aplausos", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_CHEERING'},
            {['Label'] = "Gracias", ['Type'] = 'animation', ['Dict'] = 'mp_action', ['Anim'] = 'thanks_male_06', ['Flags'] = 0},
            {['Label'] = "Punto", ['Type'] = 'animation', ['Dict'] = 'gestures@m@standing@casual', ['Anim'] = 'gesture_point', ['Flags'] = 0},
            {['Label'] = "Ven aquí", ['Type'] = 'animation', ['Dict'] = 'gestures@m@standing@casual', ['Anim'] = 'gesture_come_here_soft', ['Flags'] = 0},
            {['Label'] = "Bring it on", ['Type'] = 'animation', ['Dict'] = 'gestures@m@standing@casual', ['Anim'] = 'gesture_bring_it_on', ['Flags'] = 0},
            {['Label'] = "Yo", ['Type'] = 'animation', ['Dict'] = 'gestures@m@standing@casual', ['Anim'] = 'gesture_me', ['Flags'] = 0},
            {['Label'] = "Lo sabía", ['Type'] = 'animation', ['Dict'] = 'anim@am_hold_up@male', ['Anim'] = 'shoplift_high', ['Flags'] = 0},
            {['Label'] = "Agotado", ['Type'] = 'scenario', ['Anim'] = 'idle_d'},
            {['Label'] = "Deprimido", ['Type'] = 'scenario', ['Anim'] = 'idle_a'},
            {['Label'] = "Facepalm", ['Type'] = 'animation', ['Dict'] = 'anim@mp_player_intcelebrationmale@face_palm', ['Anim'] = 'face_palm', ['Flags'] = 0},
            {['Label'] = "Calmar", ['Type'] = 'animation', ['Dict'] = 'gestures@m@standing@casual', ['Anim'] = 'gesture_easy_now', ['Flags'] = 0},
            {['Label'] = "Que he echo?", ['Type'] = 'animation', ['Dict'] = 'oddjobs@assassinate@multi@', ['Anim'] = 'react_big_variations_a', ['Flags'] = 0},
            {['Label'] = "Temor", ['Type'] = 'animation', ['Dict'] = 'amb@code_human_cower_stand@male@react_cowering', ['Anim'] = 'base_right', ['Flags'] = 0},
            {['Label'] = "Peleas?", ['Type'] = 'animation', ['Dict'] = 'anim@deathmatch_intros@unarmed', ['Anim'] = 'intro_male_unarmed_e', ['Flags'] = 0},
            {['Label'] = "No es posible!", ['Type'] = 'animation', ['Dict'] = 'gestures@m@standing@casual', ['Anim'] = 'gesture_damn', ['Flags'] = 0},
            {['Label'] = "Abrazo", ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'kisses_guy_a', ['Flags'] = 0},
            {['Label'] = "Dedo de honor", ['Type'] = 'animation', ['Dict'] = 'mp_player_int_upperfinger', ['Anim'] = 'mp_player_int_finger_01_enter', ['Flags'] = 0},
            {['Label'] = "Bala en la cabeza", ['Type'] = 'animation', ['Dict'] = 'mp_suicide', ['Anim'] = 'pistol', ['Flags'] = 0},
    
        }    
    },
    {
        
        ['Label'] = 'Deportes',
        ['Data'] = {
            {['Label'] = "Flexionar músculos", ['Type'] = 'animation', ['Dict'] = 'amb@world_human_muscle_flex@arms_at_side@base', ['Anim'] = 'base', ['Flags'] = 0},
            {['Label'] = "Levantar pesas", ['Type'] = 'animation', ['Dict'] = 'amb@world_human_muscle_free_weights@male@barbell@base', ['Anim'] = 'base', ['Flags'] = 0},
            {['Label'] = "Hacer flexiones", ['Type'] = 'animation', ['Dict'] = 'amb@world_human_push_ups@male@base', ['Anim'] = 'base', ['Flags'] = 0},
            {['Label'] = "Hacer sentadillas", ['Type'] = 'animation', ['Dict'] = 'amb@world_human_sit_ups@male@base', ['Anim'] = 'base', ['Flags'] = 0},
            {['Label'] = "Hacer Yoga", ['Type'] = 'animation', ['Dict'] = 'amb@world_human_yoga@male@base', ['Anim'] = 'base_a', ['Flags'] = 0},
    
        }    
    },
    {
        
        ['Label'] = 'Varias',
        ['Data'] = {
            {['Label'] = "Tomar café", ['Type'] = 'animation', ['Dict'] = 'amb@world_human_aa_coffee@idle_a', ['Anim'] = 'idle_a', ['Flags'] = 0},
            {['Label'] = "Sentarse", ['Type'] = 'animation', ['Dict'] = 'anim@heists@prison_heistunfinished_biztarget_idle', ['Anim'] = 'target_idle', ['Flags'] = 0},
            {['Label'] = "Sentarse 2", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_PICNIC'},
            {['Label'] = "Apoyarse en la pared", ['Type'] = 'scenario', ['Anim'] = 'world_human_leaning'},
            {['Label'] = "Tomar el sol", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_SUNBATHE_BACK'},
            {['Label'] = "Pecho a tierra", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_SUNBATHE'},
            {['Label'] = "Limpiar", ['Type'] = 'scenario', ['Anim'] = 'world_human_maid_clean'},
            {['Label'] = "BBQ", ['Type'] = 'scenario', ['Anim'] = 'PROP_HUMAN_BBQ'},
            {['Label'] = "Posición T", ['Type'] = 'animation', ['Dict'] = 'mini@prostitutes@sexlow_veh', ['Anim'] = 'low_car_bj_to_prop_female', ['Flags'] = 0},
            {['Label'] = "Tomar Selfie", ['Type'] = 'scenario', ['Anim'] = 'world_human_tourist_mobile'},
            {['Label'] = "Escuchar pared/puerta", ['Type'] = 'animation', ['Dict'] = 'mini@safe_cracking', ['Anim'] = 'idle_base', ['Flags'] = 0},
    
        }    
    },
    {
        
        ['Label'] = 'Estilos de caminar',
        ['Data'] = {
            {['Label'] = "Normal H", ['Type'] = 'walking_style', ['Style'] = 'move_m@confident'},
            {['Label'] = "Normal M", ['Type'] = 'walking_style', ['Style'] = 'move_f@heels@c'},
            {['Label'] = "Hombre deprimido", ['Type'] = 'walking_style', ['Style'] = 'move_m@depressed@a'},
            {['Label'] = "Mujer deprimida", ['Type'] = 'walking_style', ['Style'] = 'move_f@depressed@a'},
            {['Label'] = "Hombre de negocios", ['Type'] = 'walking_style', ['Style'] = 'move_m@business@a'},
            {['Label'] = "Determinado", ['Type'] = 'walking_style', ['Style'] = 'move_m@brave@a'},
            {['Label'] = "Casual", ['Type'] = 'walking_style', ['Style'] = 'move_m@casual@a'},
            {['Label'] = "Musculoso", ['Type'] = 'walking_style', ['Style'] = 'move_m@fat@a'},
            {['Label'] = "Hipster", ['Type'] = 'walking_style', ['Style'] = 'move_m@hipster@a'},
            {['Label'] = "Lesionado", ['Type'] = 'walking_style', ['Style'] = 'move_m@injured'},
            {['Label'] = "Apurado", ['Type'] = 'walking_style', ['Style'] = 'move_m@hurry@a'},
            {['Label'] = "Apurado 2", ['Type'] = 'walking_style', ['Style'] = 'move_m@hurry_butch@a'},
            {['Label'] = "Obrero", ['Type'] = 'walking_style', ['Style'] = 'move_m@hobo@a'},
            {['Label'] = "Triste", ['Type'] = 'walking_style', ['Style'] = 'move_m@sad@a'},
            {['Label'] = "Rudo", ['Type'] = 'walking_style', ['Style'] = 'move_m@muscle@a'},
            {['Label'] = "En Shock", ['Type'] = 'walking_style', ['Style'] = 'move_m@shocked@a'},
            {['Label'] = "Sombrío", ['Type'] = 'walking_style', ['Style'] = 'move_m@shadyped@a'},
            {['Label'] = "Raro", ['Type'] = 'walking_style', ['Style'] = 'move_m@buzzed'},
            {['Label'] = "Orgulloso", ['Type'] = 'walking_style', ['Style'] = 'move_m@money'},
            {['Label'] = "Carrera corta", ['Type'] = 'walking_style', ['Style'] = 'move_m@quick'},
            {['Label'] = "Devorador", ['Type'] = 'walking_style', ['Style'] = 'move_f@maneater'},
            {['Label'] = "Descarado", ['Type'] = 'walking_style', ['Style'] = 'move_f@sassy'},
            {['Label'] = "Arrogante", ['Type'] = 'walking_style', ['Style'] = 'move_f@arrogant@a'},
    
        }    
    },
    {
        
        ['Label'] = '+18',
        ['Data'] = {
            {['Label'] = "Te masturbas", ['Type'] = 'animation', ['Dict'] = 'mp_player_int_upperwank', ['Anim'] = 'mp_player_int_wank_01', ['Flags'] = 0},
            {['Label'] = "Hombre recibiendo en auto", ['Type'] = 'animation', ['Dict'] = 'oddjobs@towing', ['Anim'] = 'm_blow_job_loop', ['Flags'] = 0},
            {['Label'] = "Mujer dando en auto", ['Type'] = 'animation', ['Dict'] = 'oddjobs@towing', ['Anim'] = 'f_blow_job_loop', ['Flags'] = 0},
            {['Label'] = "Hombre abajo en auto", ['Type'] = 'animation', ['Dict'] = 'mini@prostitutes@sexlow_veh', ['Anim'] = 'low_car_sex_loop_player', ['Flags'] = 0},
            {['Label'] = "Mujer encima en auto", ['Type'] = 'animation', ['Dict'] = 'mini@prostitutes@sexlow_veh', ['Anim'] = 'low_car_sex_loop_female', ['Flags'] = 0},
            {['Label'] = "Rascarse el paquete", ['Type'] = 'animation', ['Dict'] = 'mp_player_int_uppergrab_crotch', ['Anim'] = 'mp_player_int_grab_crotch', ['Flags'] = 0},
            {['Label'] = "Pose Sexy 1", ['Type'] = 'animation', ['Dict'] = 'mini@strip_club@idles@stripper', ['Anim'] = 'stripper_idle_02', ['Flags'] = 0},
            {['Label'] = "Pose Sexy 2", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_PROSTITUTE_HIGH_CLASS'},
            {['Label'] = "Pose Sexy 3", ['Type'] = 'animation', ['Dict'] = 'mini@strip_club@backroom@', ['Anim'] = 'stripper_b_backroom_idle_b', ['Flags'] = 0},
            {['Label'] = "Strip Tease 1", ['Type'] = 'animation', ['Dict'] = 'mini@strip_club@lap_dance@ld_girl_a_song_a_p1', ['Anim'] = 'ld_girl_a_song_a_p1_f', ['Flags'] = 0},
            {['Label'] = "Strip Tease 2", ['Type'] = 'animation', ['Dict'] = 'mini@strip_club@private_dance@part2', ['Anim'] = 'priv_dance_p2', ['Flags'] = 0},
            {['Label'] = "Stip Tease en el suelo", ['Type'] = 'animation', ['Dict'] = 'mini@strip_club@private_dance@part3', ['Anim'] = 'priv_dance_p3', ['Flags'] = 0},
    
        }    
    },
    
}
