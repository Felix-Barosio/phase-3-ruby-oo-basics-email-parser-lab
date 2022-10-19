# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailAddressParser

    def initialize(email_addresses)
        @email_addresses = email_addresses
    end

    def parse
        arr = @email_addresses.split(/[, ]/)
        arr.each do |address|
            if address = ''
                arr.delete(address)
            end
        end
        arr.uniq
    end

end