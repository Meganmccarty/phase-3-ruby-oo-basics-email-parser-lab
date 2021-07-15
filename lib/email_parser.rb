# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

    attr_accessor :email_addresses

    def initialize(email_addresses)
        @email_addresses = email_addresses
    end

    def parse
        # take in the email_addresses string and split it by either space or comma
        new_email_array = @email_addresses.split(/, |\s/)
        new_email_array.uniq
    end
end

megan = EmailAddressParser.new("megan_mccarty@hotmail.com lepgirl77@yahoo.com")
stranger = EmailAddressParser.new("stranger@gmail.com, strange77@yahoo.com")

megan.parse
stranger.parse