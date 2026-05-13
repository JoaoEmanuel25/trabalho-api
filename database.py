import psycopg2
from config import DB_HOST, DB_NAME, DB_USER, DB_PASSWORD, DB_PORT

def conectar():
    """Cria e retorna uma conexão com a base de dados PostgreSQL."""
    return psycopg2.connect(
        host=DB_HOST,
        database=DB_NAME,
        user=DB_USER,
        password=DB_PASSWORD,
        port=DB_PORT
    )

def inicializar_banco():
    """
    Cria a tabela 'mensagens' se ela não existir.
    """
    conexao = conectar()
    cursor = conexao.cursor()
    
    # 1. Criação da tabela (PostgreSQL usa SERIAL para auto-incremento)
    cursor.execute('''
        CREATE TABLE IF NOT EXISTS mensagens (
            id SERIAL PRIMARY KEY,
            remetente TEXT NOT NULL,
            conteudo TEXT NOT NULL,
            data_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        )
    ''')
    
    conexao.commit()
    cursor.close()
    conexao.close()

def salvar_mensagem(remetente, conteudo):

    conexao = conectar()
    cursor = conexao.cursor()
    
    cursor.execute(
        "INSERT INTO mensagens (remetente, conteudo) VALUES (%s, %s)",
        (remetente, conteudo)
    )
    
    conexao.commit()
    cursor.close()
    conexao.close()