import secrets
import random
import selenium


def user_info_creation():
    # Generate random user information
    name = str(secrets.token_hex(2)) + " " + str(secrets.token_hex(2))
    email = str(secrets.token_hex(3)) + "@" + str(secrets.token_hex(2)) + ".com"
    if random.randint(1, 10) % 2 == 1:
        gender = "male"
    else:
        gender = "female"
    user_dict = {"name": name,
                 "gender": gender,
                 "email": email,
                 "status": "active"}
    return user_dict


