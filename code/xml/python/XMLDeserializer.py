import xml.etree.ElementTree as ET

# Parseando o arquivo XML
tree = ET.parse("customer.xml")
root = tree.getroot()

# Criando um dicionário para armazenar os dados do Customer
customer = {}
# Iterando sobre os elementos XML e armazenando no dicionário
for child in root:
    customer[child.tag] = child.text

# Exibindo o dicionário com os dados do Customer
print(customer)
