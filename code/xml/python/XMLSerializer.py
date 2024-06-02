import xml.etree.ElementTree as ET

# Criando elementos XML para o objeto Customer
customer = ET.Element("customer")
id = ET.SubElement(customer, "id")
id.text = "1"
name = ET.SubElement(customer, "name")
name.text = "John Doe"
age = ET.SubElement(customer, "age")
age.text = "30"

# Criando a árvore XML
tree = ET.ElementTree(customer)
# Escrevendo a árvore XML em um arquivo
tree.write("customer.xml", encoding="utf-8", xml_declaration=True)
