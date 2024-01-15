local setup, gitsigns=pcall(require,"gitsigns")

if not setup then 
    print("gitsigns package not found")
    return
end

gitsigns.setup()

