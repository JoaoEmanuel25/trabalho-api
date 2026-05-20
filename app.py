import os
import warnings
from ia import obter_resposta_da_ia
from database import salvar_mensagem

os.environ["PYTHONWARNINGS"] = "ignore"
os.environ["LANGCHAIN_TRACING_V2"] = "false"
warnings.filterwarnings("ignore")

print("=" * 50)
print(" CHATBOT IA MULTI-API (Gemini & OpenAI) ")
print(" Proteção Ativada | Engenharia de Prompts")
print("=" * 50)
print("Comandos especiais:")
print(" /modo [tecnico|resumido|professor|detalhado|suporte]")
print(" /tipo [simples|estruturado|especializado]")
print(" /sair - Para encerrar")
print("=" * 50)

session_id = "usuario_local_01"
modo_atual = "professor"
tipo_atual = "simples"

while True:
    mensagem = input("\nVocê: ")

    if mensagem.lower() == "/sair":
        print("Encerrando...")
        break

    if mensagem.lower().startswith("/modo "):
        modo_atual = mensagem.split(" ")[1].lower()
        print(f"✅ Modo alterado para: {modo_atual.upper()}")
        continue

    if mensagem.lower().startswith("/tipo "):
        tipo_atual = mensagem.split(" ")[1].lower()
        print(f"✅ Tipo de prompt alterado para: {tipo_atual.upper()}")
        continue

    salvar_mensagem("Usuário", mensagem)

    try:
        resposta_texto = obter_resposta_da_ia(
            mensagem, session_id, modo_atual, tipo_atual
        )

        print(f"\n{resposta_texto}")

        texto_limpo = (
            resposta_texto.split("] ", 1)[1]
            if "] " in resposta_texto
            else resposta_texto
        )
        salvar_mensagem("IA", texto_limpo)

    except Exception as e:
        print(f"\nErro de processamento: {e}")
