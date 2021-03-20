module ErrorHandling
    export Result, Err, Ok, Error, is_err

    struct Error
        description::String
    end

    const Result{T} = Union{T, Error}

    @inline function Err(message::String)::Result
        return Error(message)::Result
    end

    @inline function is_err(val::Result)::Bool
         isa(val, Error)
     end
end
