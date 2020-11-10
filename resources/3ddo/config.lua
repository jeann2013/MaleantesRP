-- ## 3dme : shared config file

Config = {
    language = 'es',
    visual = {
        color = { r = 255, g = 0, b = 0, a = 255 }, -- Text color
        font = 0, -- Text font
        time = 10000, -- Duration to display the text (in ms)
        scale = 0.5, -- Text scale
        dist = 250, -- Min. distance to draw 
    },
}

Languages = {
    ['en'] = {
        commandName = 'do',
        commandDescription = 'Display an action above your head.',
        commandSuggestion = {{ name = 'action', help = '"scratch his nose" for example.'}},
        prefix = 'the person '
    },
    ['es'] = {
        commandName = 'do',
        commandDescription = 'Sirve para preguntar cosas sobre el rol, por ejemplo',
        commandSuggestion = {{ name = 'action', help = '"tomaria telefono, podria?.'}},
        prefix = 'la persona: '
    },
    ['fr'] = {
        commandName = 'do',
        commandDescription = 'Affiche une action au dessus de votre tête.',
        commandSuggestion = {{ name = 'action', help = '"se gratte le nez" par exemple.'}},
        prefix = 'l\'individu '
    },
}
