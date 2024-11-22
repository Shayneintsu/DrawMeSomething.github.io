

row = 20
column = 37

with open("./README.md", "w", encoding='utf-8') as f:

    f.write("# DrawMeSomething\n\n")

    for i in range(row):

        for y in range(column):

            print(f"[\u2B1C](https://shayneintsu.github.io/DrawMeSomething.github.io?cell={i*100+y})", file=f, end="")

        f.write("\n")

    f.write("\n")
    u = -1
    for e in "🟥🟧🟨🟩🟦🟪🟫⬛⬜":
        f.write(f"[{e}](https://shayneintsu.github.io/DrawMeSomething.github.io?cell={u})")
        u-=1