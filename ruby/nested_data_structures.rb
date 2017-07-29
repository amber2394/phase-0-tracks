fashion_show = {
    marc_jacobs: {
        designer_name: 'Marc Jacobs',
        seating_info: {
            front_row_seats: 12,
            front_row_seats_available: 4
        },
        models: [
            "Kristen Lewis",
            "Rebecca Salem",
            "Manuel Lopez",
            "Gigi Griffins",
            "Kat Scott"
        ]
    },
    louis_vuiton: {
        designer_name: 'Louis Vuiton',
        seating_info: {
            front_row_seats: 24,
            fron_row_seats_available: 2
        },
        models: [
            "Lana Clark",
            "Mischa Buldorf",
            "Cameron Pitts",
            "Amber Klein",
            "Stephen Winshire"
        ]
    },
    calvin_klein: {
        designer_name: 'Calvin Klein',
        seating_info: {
            front_row_seats: 22,
            front_row_seats_available: 23
        },
        models: [
            "Carol Lauts"
        ]
    }
}

p fashion_show[:marc_jacobs][:seating_info][:front_row_seats_available]

p fashion_show[:louis_vuiton][:models]
fashion_show[:calvin_klein][:models].push ("Lenny Rutz"), ("Kelly Birch"), ("Monica Raul")

p fashion_show[:calvin_klein][:models]