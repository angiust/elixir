defmodule Binary do
    def search(tuple, value) do    
        search_interval(tuple, value, 0, tuple_size(tuple))
    end
    def search_interval(_tuple, _value, first, last) when first>=last do
        false    
    end
    def search_interval(tuple, value, first, last) when first<last do
        middle = div(first+last, 2)
        try = elem(tuple, middle)
        cond do
            try == value -> true
            try < value -> search_interval(tuple, value, middle+1, last)
            try > value -> search_interval(tuple, value, first, middle)
        end
    end
end

