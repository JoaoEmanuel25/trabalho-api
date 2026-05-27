import streamlit as st
from ia import obter_resposta_da_ia
from database import salvar_mensagem

st.set_page_config(page_title="Skype IA", page_icon="💬", layout="centered")

st.markdown(
    """
<style>
[data-testid="stAppViewContainer"] {
    background-color: #EAECEE !important;
}
header {
    visibility: hidden;
}
.skype-user {
    background-color: #00AFF0 !important;
    color: white !important;
    padding: 12px 18px;
    border-radius: 18px 18px 0px 18px;
    margin-left: auto;
    margin-bottom: 15px;
    width: fit-content;
    max-width: 75%;
    font-family: 'Segoe UI', Tahoma, sans-serif !important;
    font-size: 15px;
    box-shadow: 1px 1px 4px rgba(0,0,0,0.15);
    text-align: left;
}
.skype-ia {
    background-color: #FFFFFF !important;
    color: #333333 !important;
    padding: 12px 18px;
    border-radius: 18px 18px 18px 0px;
    margin-right: auto;
    margin-bottom: 15px;
    width: fit-content;
    max-width: 75%;
    font-family: 'Segoe UI', Tahoma, sans-serif !important;
    font-size: 15px;
    box-shadow: 1px 1px 4px rgba(0,0,0,0.15);
    text-align: left;
    border: 1px solid #D1D1D1;
}
[data-testid="stSidebar"] {
    background-color: #F4F5F7 !important;
}
</style>
""",
    unsafe_allow_html=True,
)

st.sidebar.image("https://img.icons8.com/color/150/skype--v1.png", width=150)
st.sidebar.markdown("---")
modo_atual = st.sidebar.selectbox(
    "Modo de Atuação", ["professor", "tecnico", "resumido", "detalhado", "suporte"]
)
tipo_atual = st.sidebar.selectbox(
    "Tipo de Prompt", ["simples", "estruturado", "especializado"]
)

if "mensagens" not in st.session_state:
    st.session_state.mensagens = []

for msg in st.session_state.mensagens:
    if msg["role"] == "user":
        st.markdown(
            f'<div class="skype-user">{msg["content"]}</div>', unsafe_allow_html=True
        )
    else:
        st.markdown(
            f'<div class="skype-ia"><b>🤖 IA:</b><br>{msg["content"]}</div>',
            unsafe_allow_html=True,
        )

if prompt := st.chat_input("Digite uma mensagem..."):
    st.session_state.mensagens.append({"role": "user", "content": prompt})
    salvar_mensagem("Usuário", prompt)
    st.rerun()

if st.session_state.mensagens and st.session_state.mensagens[-1]["role"] == "user":
    with st.spinner("Digitando..."):
        session_id = "usuario_skype_01"
        ultima_mensagem = st.session_state.mensagens[-1]["content"]

        resposta_texto = obter_resposta_da_ia(
            ultima_mensagem, session_id, modo_atual, tipo_atual
        )
        texto_limpo = (
            resposta_texto.split("] ", 1)[1]
            if "] " in resposta_texto
            else resposta_texto
        )

        st.session_state.mensagens.append({"role": "assistant", "content": texto_limpo})
        salvar_mensagem("IA", texto_limpo)
        st.rerun()
