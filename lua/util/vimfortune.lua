local strings = {
    ":q!",
    "Which key was it again?",
    "Why not just use VSCode?",
}

return function()
    return strings[math.random(#strings)]
end

