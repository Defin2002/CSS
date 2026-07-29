import re

try:
    # Get user input
    title = input("Enter the book title: ")
    year = input("Enter the publication year: ")

    # Validate book title
    if not re.fullmatch(r"[A-Za-z ]+", title):
        raise ValueError("Error: Book title should contain only alphabets and spaces.")

    # Validate publication year
    if not re.fullmatch(r"(19|20)\d{2}", year):
        raise ValueError("Error: Publication year must be a 4-digit number starting with 19 or 20.")

    # Display book details
    print("\nBook Details")
    print("------------")
    print("Book Title       :", title)
    print("Publication Year :", year)

except ValueError as e:
    print(e)

except Exception as e:
    print("Unexpected Error:", e)

finally:
    print("\nProgram execution completed.")