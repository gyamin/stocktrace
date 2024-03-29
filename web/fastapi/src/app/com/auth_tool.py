import hashlib
import secrets


def get_hash(data):
    hs = hashlib.sha256(data.encode()).hexdigest()
    return hs


def create_random_string():
    token = secrets.token_hex()
    return token


