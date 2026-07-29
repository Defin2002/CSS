try:
    # Get user input
    name = input("Enter your name: ").strip()
    feedback = input("Enter your feedback: ").strip()

    # Check if name is empty
    if name == "":
        raise ValueError("Error: Name cannot be empty.")

    # Check if feedback is empty
    if feedback == "":
        raise ValueError("Error: Feedback cannot be empty.")

    # Display thank you message
    print("\nThank you for your feedback!")
    print("Name     :", name)
    print("Feedback :", feedback)

except ValueError as e:
    print(e)

except Exception as e:
    print("Unexpected Error:", e)

finally:
    print("\nProgram execution completed.")