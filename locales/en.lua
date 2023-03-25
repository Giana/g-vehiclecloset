local Translations = {
    error = {
        no_keys = 'You do not have the keys to this vehicle!'
    },
    target = {
        label = 'Change Outfit'
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})