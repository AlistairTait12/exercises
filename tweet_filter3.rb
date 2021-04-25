to_filter = ["virus000 was spreading so fasvirust that the other virusviruses couldn't keep u 1234virus56"] 
search_terms = ["virus", "was", "jesus"]
replace_with = "REDACTED"

cleansed_strings = []

to_filter.each do |a|
    search_terms.each do |search_term|
        # Iterate through the sample string
        for i in 0..a.length + 1
            # Search for a match between |char| and search_term[0]
            if search_term[0] == a[i]
                # Begin comparing strings but only if there is more to check than the length of the search term
                check = String.new
                finish = i + search_term.length
                for x in i...finish
                    print a[x]
                    check << a[x]
                end
                puts
                if check == search_term
                    # Convert string to chars
                    process_arr = a.chars
                    # Delete between [i] and [i + search_term.length]
                    (search_term.length).times do
                        process_arr.delete_at(i)
                    end
                    # insert CENSORED at [i]
                    process_arr = process_arr.insert(i, replace_with)
                    # a is now the result of the processed array
                    a = process_arr.join("")
                end
            end
        end
    end
    cleansed_strings.push(a)
end
puts cleansed_strings