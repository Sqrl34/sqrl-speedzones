Config = Config or {}

Config.ExemptJobs = {
    "police",
    'ambulance',
    'tow'
}

Config.Message= {
    sender = 'Police Department',
    subject = 'Speed Ticket',
    message = 'You have been fined for speeding, lets not do that again'
}

Config.Sound = true

Config.Type = {
    mph = true,
    kph = false
}

Config.SpeedCams = {
    [1] = {
        coords = vector4(123.75, -26.13, 67.76, 339.62),
        length = 20,
        width = 20,
        speedlimit = 30,
        basefine = 100,
        multiplieron = true,
        multiplier = {
            [1] = {speed = 10, multiply = 1.5},
            [2] = {speed = 20, multiply = 2},
            [3] = {speed = 30, multiply = 2.5},
            [4] = {speed = 40, multiply = 3}
        }

    },
    [2] = {
        coords = vector4(-255.56, -46.64, 49.13, 173.85),
        length = 40,
        width = 30,
        speedlimit = 30,
        basefine = 100,
        multiplieron = true,
        multiplier = {
            [1] = {speed = 10, multiply = 1.5},
            [2] = {speed = 20, multiply = 2},
            [3] = {speed = 30, multiply = 2.5},
            [4] = {speed = 40, multiply = 3}
        }

    },
    [3] = {
        coords = vector4(-630.83, -357.94, 34.4, 201.95),
        length = 50,
        width = 60,
        speedlimit = 30,
        basefine = 100,
        multiplieron = true,
        multiplier = {
            [1] = {speed = 10, multiply = 1.5},
            [2] = {speed = 20, multiply = 2},
            [3] = {speed = 30, multiply = 2.5},
            [4] = {speed = 40, multiply = 3}
        }

    },
    [4] = {
        coords = vector4(-1005.31, -347.79, 37.88, 109.14),
        length = 20,
        width = 20,
        speedlimit = 30,
        basefine = 100,
        multiplieron = true,
        multiplier = {
            [1] = {speed = 10, multiply = 1.5},
            [2] = {speed = 20, multiply = 2},
            [3] = {speed = 30, multiply = 2.5},
            [4] = {speed = 40, multiply = 3}
        }

    },
    [5] = {
        coords = vector4(-1080.19, -762.63, 19.36, 32.32),
        length = 30,
        width = 30,
        speedlimit = 30,
        basefine = 100,
        multiplieron = true,
        multiplier = {
            [1] = {speed = 10, multiply = 1.5},
            [2] = {speed = 20, multiply = 2},
            [3] = {speed = 30, multiply = 2.5},
            [4] = {speed = 40, multiply = 3}
        }

    },
    [6] = {
        coords = vector4(-1298.68, -504.09, 33.16, 129.46),
        length = 30,
        width = 30,
        speedlimit = 30,
        basefine = 100,
        multiplieron = true,
        multiplier = {
            [1] = {speed = 10, multiply = 1.5},
            [2] = {speed = 20, multiply = 2},
            [3] = {speed = 30, multiply = 2.5},
            [4] = {speed = 40, multiply = 3}
        }

    },
    [7] = {
        coords = vector4(354.19, -268.99, 53.94, 158.58),
        length = 30,
        width = 30,
        speedlimit = 30,
        basefine = 100,
        multiplieron = true,
        multiplier = {
            [1] = {speed = 10, multiply = 1.5},
            [2] = {speed = 20, multiply = 2},
            [3] = {speed = 30, multiply = 2.5},
            [4] = {speed = 40, multiply = 3}
        }

    },
}