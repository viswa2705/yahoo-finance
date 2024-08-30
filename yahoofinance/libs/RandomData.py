import string

from faker import Faker
from faker.generator import random


class RandomData:

    def __init__(self):
        self.faker = Faker()

    def random_user_data(self):
        first_name = self.faker.first_name()
        last_name = self.faker.last_name()
        email = "{}_{}".format(first_name.lower(), last_name.lower())
        password = self.random_password(length=12)  # Example with 12 characters
        return {
            'first_name': first_name,
            'last_name': last_name,
            'email': email,
            'password': password
        }

    def random_password(self, length=8):
        if length < 8:
            raise ValueError("Password length must be at least 8 characters")

        # Generate one character from each required category
        upper_case = random.choice(string.ascii_uppercase)
        lower_case = random.choice(string.ascii_lowercase)
        digit = random.choice(string.digits)
        special_char = random.choice(string.punctuation)

        # Generate the remaining characters
        remaining_chars = ''.join(random.choices(
            string.ascii_letters + string.digits + string.punctuation, k=length-4))

        # Combine all characters and shuffle them to ensure randomness
        password = upper_case + lower_case + digit + special_char + remaining_chars
        password = ''.join(random.sample(password, len(password)))

        return password




if __name__ == '__main__':
    random_data = RandomData()
    random_data.random_user_data()