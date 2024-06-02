import json

# Objeto Python para serializar em JSON
user = {
    'name': 'John',
    'age': 30
}

# Serialização de Python para JSON
jsonString = json.dumps(user)
print('JSON serializado:', jsonString)

# Desserialização de JSON para Python
deserializedUser = json.loads(jsonString)
print('Objeto desserializado:', deserializedUser)
