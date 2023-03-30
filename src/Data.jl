# This file is part of Reproduce.jl

"""
    Data

An immutable structure for preserving essential information about a set of data.

# Fields 
- `name::string`: a short, descriptiv ename for the data set.
- `source::String`: a URL for the source of the data set.
- `documentation::String`: a URL for the data's documentation.
- `description::String`: a brief description of the data set.
- `location::String`: a URL for where the data is located.
- `script::String`: a URL for a script to load the data.
- `other::String`: a place holder for any additional relevant information.
"""    
struct Data
    name::String
    source::String
    documentation::String
    description::String
    location::String
    script::String
    other::String
end

"""
    run(data::Data) 

A function that runs the calls the script in the `script` field of the input.
The function returns `nothing`.
"""
function run(data::Data) 
    include(data.script)
    return nothing
end
