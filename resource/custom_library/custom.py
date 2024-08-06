from faker import Faker
fake = Faker()


def generate_faker_data(data_type):
    match data_type:
        case "name":
            return fake.name()
        case "first_name":
            return fake.first_name()
        case "last_name":
            return fake.last_name()
        case "password":
            return fake.password()
        case "password":
            return fake.address()
        case "middle_name":
            full_name = fake.name()
            middle_name = full_name.split()[1]
            return middle_name
        case "email":
            email = fake.email().split('@')[0]
            return f"{email}@faker.com"
        case "phone_number":
            phone_number = fake.phone_number()
            # Remove any non-digit characters
            phone_number_digits = ''.join(filter(str.isdigit, phone_number))
            # Ensure it has exactly 9 digits
            phone_number_digits = phone_number_digits[-9:]
            formatted_phone_number = f"09{phone_number_digits}"
            return formatted_phone_number
        case _:
            return None
