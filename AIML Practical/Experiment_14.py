# Recommend elective courses based on student interests and skills




print("Welcome to Course Advisory System")
print("Choose your interest:")
print("1. Artificial Intelligence")
print("2. Data Analysis")
print("3. Cyber Security")
print("4. Web Development")

interest = input("Enter your interest: ").lower()

if interest == "artificial intelligence" or interest == "1":
    print("Recommended Elective: Machine Learning")

elif interest == "data analysis" or interest == "2":
    print("Recommended Elective: Data Science")

elif interest == "cyber security" or interest == "3":
    print("Recommended Elective: Network Security")

elif interest == "web development" or interest == "4":
    print("Recommended Elective: Full Stack Development")

else:
    print("Sorry, no course recommendation available.")
