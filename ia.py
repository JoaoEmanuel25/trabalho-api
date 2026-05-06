from google import genai
from config import GEMINI_API_KEY

client = genai.Client(api_key=GEMINI_API_KEY)

def criar_chat():
    chat = client.chats.create(
        model="gemini-2.5-flash",
        config={
            "system_instruction": "Você é um assistente inteligente, amigável e útil."
        }
    )
    return chat