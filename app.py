import os
import warnings
from ia import obter_chat_com_memoria
from database import salvar_mensagem

os.environ["PYTHONWARNINGS"] = "ignore"
os.environ["LANGCHAIN_TRACING_V2"] = "false"
warnings.filterwarnings("ignore")

print("CHATBOT IA com LangChain e Memória (Terminal)")
print("Digite 'sair' para encerrar.\n")

session_id = "usuario_local_01"

chat_bot = obter_chat_com_memoria(session_id)

while True:
    mensagem = input("Você: ")

    if mensagem.lower() == "sair":
        print("Encerrando...")
        break

    salvar_mensagem("Usuário", mensagem)

    try:
        resposta = chat_bot.invoke(
            {"input": mensagem},
            config={"configurable": {"session_id": session_id}}
        )
        
        print("IA:", resposta.content)

        salvar_mensagem("IA", resposta.content)

    except Exception as e:
        print(f"Erro: {e}")