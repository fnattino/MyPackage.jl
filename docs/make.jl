using MyPackage
using Documenter

DocMeta.setdocmeta!(MyPackage, :DocTestSetup, :(using MyPackage); recursive=true)

makedocs(;
    modules=[MyPackage],
    authors="Francesco Nattino <f.nattino@esciencecenter.nl> and contributors",
    repo="https://github.com/fnattino/MyPackage.jl/blob/{commit}{path}#{line}",
    sitename="MyPackage.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://fnattino.github.io/MyPackage.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/fnattino/MyPackage.jl",
    devbranch="main",
)
