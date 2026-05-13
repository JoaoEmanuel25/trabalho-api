import os
import warnings

# Limpeza do Terminal
os.environ["LANGCHAIN_TRACING_V2"] = "false"
warnings.filterwarnings("ignore")

# Importações do LangChain e Configurações
from langchain_google_genai import ChatGoogleGenerativeAI
from langchain_community.chat_message_histories import PostgresChatMessageHistory
from langchain_core.prompts import ChatPromptTemplate, MessagesPlaceholder
from langchain_core.runnables.history import RunnableWithMessageHistory
from config import GEMINI_API_KEY, DB_HOST, DB_NAME, DB_USER, DB_PASSWORD, DB_PORT

llm = ChatGoogleGenerativeAI(
    model="gemini-2.5-flash",
    google_api_key=GEMINI_API_KEY,
    temperature=0.7
)

prompt = ChatPromptTemplate.from_messages([
    ("system", "Você é um assistente inteligente, amigável e útil."),
    MessagesPlaceholder(variable_name="history"),
    ("human", "{input}"),
])

chain = prompt | llm

def obter_chat_com_memoria(session_id: str):
    connection_string = f"postgresql://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/{DB_NAME}"
    
    return RunnableWithMessageHistory(
        chain,
        lambda sess_id: PostgresChatMessageHistory(
            connection_string=connection_string,
            session_id=sess_id,
            table_name="mensagens_langchain"
        ),
        input_messages_key="input",
        history_messages_key="history",
    )