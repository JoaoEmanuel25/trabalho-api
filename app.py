from ia import criar_chat
from database import inicializar_banco, salvar_mensagem


print("Inicializando banco de dados...")
inicializar_banco()

print("CHATBOT IA (Terminal)")

chat = criar_chat()

print("Digite 'sair' para encerrar.\n")

while True:
    mensagem = input("Você: ")

    if mensagem.lower() == "sair":
        print("Encerrando...")
        break


    salvar_mensagem("Usuário", mensagem)

    try:
        resposta = chat.send_message(mensagem)
        print("IA:", resposta.text)


        salvar_mensagem("IA", resposta.text)

    except Exception as e:
        print("Erro:", e)
        print("Dica: pode ser limite da API (quota)")