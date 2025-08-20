import csv
from datetime import datetime

# Lista para armazenar os registros
transacoes = []

print("Cadastro de Transações (mínimo 5 registros):")

# Loop para entrada de dados
for i in range(5):
    print(f"\nRegistro {i + 1}")

    # Validação da data
    while True:
        data = input("Data da venda (dd/mm/aaaa): ")
        try:
            datetime.strptime(data, "%d/%m/%Y")
            break
        except ValueError:
            print("Data inválida. Tente novamente.")

    # Tratamento do valor
    total_bruto = input("Valor total da venda (ex: R$1500,00 ou 1500): ").replace("R$", "").replace(",", ".")

    transacao = {
        "Invoice ID": input("ID da venda (Invoice ID): ").strip(),
        "Date": data,
        "Time": input("Hora da venda (hh:mm): ").strip(),
        "Customer type": input("Tipo de cliente (Member/Normal): ").strip().capitalize(),
        "Gender": input("Gênero (Male/Female): ").strip().capitalize(),
        "Product line": input("Linha de produto: ").strip(),
        "Total": float(total_bruto),
        "Payment": input("Forma de pagamento (Ewallet/Cash/Credit card): ").strip().title()
    }

    transacoes.append(transacao)

# Salvar em um CSV
nome_arquivo = "transacoes_geradas.csv"
with open(nome_arquivo, mode="w", newline="", encoding="utf-8") as csvfile:
    campos = transacoes[0].keys()
    writer = csv.DictWriter(csvfile, fieldnames=campos)
    writer.writeheader()
    writer.writerows(transacoes)

print(f"\n✅ Dados salvos com sucesso em '{nome_arquivo}'!")

# Mostrar os dados no terminal
print("\nResumo das transações cadastradas:")
for t in transacoes:
    print(t)
