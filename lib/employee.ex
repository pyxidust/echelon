
# employee record lifecycle
defmodule Employee do

    # provision new record and store PII
    def create(name, birthday, social, base_pay, years_experience) do

        # EXPECTED ARGUMENT FORMATS:
        # birthday: list of integers [4, 16, 2023]
        # social: string in format "XXX-XX-XXXX"


        # get new employee ID in format 'AAA1234'
        letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        numbers = "0123456789"
        alphanumeric = letters <> numbers
        # convert each letter to single list element
        String.split(alphanumeric, "", parts: 37, trim: true) |> Enum.random()





        String.split(alphanumeric, parts: 36)

        character = |> String.split("", trim: true) |> Enum.random()



        numeric = Enum.random(1..100_000) |> Integer.to_string()
        ... = alpha <> numeric
        # calculate starting hourly rate
        ...
        # generate user password using the :crypto erlang module
        secret = :crypto.strong_rand_bytes(100)
        |> Base.encode64(padding: false)
        # store employee info in new record
        employee = %{
            id: ...,
            first: ...,
            middle: ...,
            last: ...,
            rate: ...,
            user: ...,
            pass: secret,
            hired: hire_date
        }
        # return successful que to user
        IO.puts()
    end

# -----------------------------------------------------------------------------

    # WORKS! 4/16/2023
    defp pii(birthday, social) do
        # private function to verify age and redact SSN

        # -------------------------------------------------
        # CONFIRM NEW EMPLOYEE IS OF LEGAL WORKING AGE (18)
        # -------------------------------------------------

        # get datetime instance
        current = DateTime.utc_now
        # destructure datetime object
        [month, day, year] = [current.month, current.day, current.year]
        # subtract 18 years
        [month_min, day_min, year_min] = [month, day, year - 18]
        # compare today with employee birthday
        if birthday <= [month_min, day_min, year_min] do
            # convert to string to store in employee record map
            Enum.map([month, day, year], fn(d) -> Integer.to_string(d) end)
            hire_date = Enum.join([month, day, year], "/")
            IO.puts("#{name} is of legal age to work.")
            # write valid DOB to employee record
            Map.put(employee, :dob, hire_date)
        else
            # exit with error if new employee is too young
            raise ArgumentError, message: "Birthday inside 18-year window."
        end

        # ------------------------------------------
        # VALIDATE AND REDACT SOCIAL SECURITY NUMBER
        # ------------------------------------------

        # validate SSN format
        if String.length(social) == 11 do
            last_four = String.slice(social, 7..11)
            IO.puts("SSN ###-##-#{last_four} has been redacted.")
            # write valid SSN to employee record
            Map.put(employee, :ssn, social)
        else
            # exit with error if SSN is not in expected format
            raise ArgumentError, message: "SSN format is XXX-XX-XXXX."
        end

    # function
    end

# -----------------------------------------------------------------------------

    # print employee record
    defp print() do
        IO.puts(employee)
    end

# -----------------------------------------------------------------------------
    def raise(years_service, bonus) do
        # give employee a raise
    end



# module
end
