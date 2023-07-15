import sys

_, quote, path = sys.argv

template = """

    template

    use <fortune-quote/> in your template
    

""".replace(
    "<fortune-quote/>", quote
)

with open(path, "w") as f:
    f.write(template)
