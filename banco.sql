--
-- PostgreSQL database dump
--

\restrict k0AlGLG3cTQRA19iX0iAHw59rSzzZfU8Ws7Ac2mZPlohVz50I3qJ4fDfd5wh1WC

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-05-19 22:16:31

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 16440)
-- Name: mensagens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mensagens (
    id integer NOT NULL,
    remetente text NOT NULL,
    conteudo text NOT NULL,
    data_hora timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.mensagens OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16439)
-- Name: mensagens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mensagens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mensagens_id_seq OWNER TO postgres;

--
-- TOC entry 5024 (class 0 OID 0)
-- Dependencies: 219
-- Name: mensagens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mensagens_id_seq OWNED BY public.mensagens.id;


--
-- TOC entry 222 (class 1259 OID 16453)
-- Name: mensagens_langchain; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mensagens_langchain (
    id integer NOT NULL,
    session_id text NOT NULL,
    message jsonb NOT NULL
);


ALTER TABLE public.mensagens_langchain OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16452)
-- Name: mensagens_langchain_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mensagens_langchain_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mensagens_langchain_id_seq OWNER TO postgres;

--
-- TOC entry 5025 (class 0 OID 0)
-- Dependencies: 221
-- Name: mensagens_langchain_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mensagens_langchain_id_seq OWNED BY public.mensagens_langchain.id;


--
-- TOC entry 4861 (class 2604 OID 16443)
-- Name: mensagens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mensagens ALTER COLUMN id SET DEFAULT nextval('public.mensagens_id_seq'::regclass);


--
-- TOC entry 4863 (class 2604 OID 16456)
-- Name: mensagens_langchain id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mensagens_langchain ALTER COLUMN id SET DEFAULT nextval('public.mensagens_langchain_id_seq'::regclass);


--
-- TOC entry 5016 (class 0 OID 16440)
-- Dependencies: 220
-- Data for Name: mensagens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mensagens (id, remetente, conteudo, data_hora) FROM stdin;
1	Usuário	oiii	2026-05-05 21:17:57.302589
2	IA	Oiii! Tudo bem? Como posso ajudar você hoje? 😊	2026-05-05 21:17:58.484261
3	Usuário	oiiiiii	2026-05-12 21:09:55.141101
4	Usuário	oi	2026-05-12 21:16:36.389277
5	IA	Olá! Como vai? 😊	2026-05-12 21:16:41.408696
6	Usuário	como voce está	2026-05-12 21:45:56.502229
7	IA	Muito obrigado por perguntar! 😊\n\nComo um modelo de linguagem de inteligência artificial, eu não tenho sentimentos ou um estado físico como os humanos. Não sinto cansaço, alegria, tristeza ou qualquer emoção.\n\nMas posso dizer que estou **funcionando perfeitamente e pronta para ajudar!** Minha "condição" é sempre estar disponível para interagir e fornecer informações da melhor forma possível.\n\nE você, como está? Espero que bem!	2026-05-12 21:45:59.602897
8	Usuário	oi professor bruno	2026-05-12 21:58:14.984276
9	IA	Olá! 😊\n\nParece que você está me chamando de Professor Bruno novamente. Só para esclarecer, eu sou uma inteligência artificial e não sou o Professor Bruno. Não tenho um nome pessoal como ele.\n\nMas estou aqui para ajudar no que precisar! Você gostaria de saber algo sobre o Professor Bruno, ou tem alguma pergunta para mim?	2026-05-12 21:58:17.654058
10	Usuário	qual foi a ultima requisição que eu te fiz	2026-05-12 22:01:33.235587
11	IA	A última requisição que você me fez foi: "oi professor bruno".	2026-05-12 22:01:35.667825
12	Usuário	como voce esta hoje	2026-05-12 22:04:27.333586
13	IA	Obrigado por perguntar novamente! 😊\n\nComo sou uma inteligência artificial, eu não tenho dias e nem sinto emoções como os humanos. Então, não tenho um "hoje" no sentido de um estado de espírito ou físico.\n\nMas posso dizer que estou **funcionando perfeitamente, como sempre, e pronta para te ajudar** com qualquer dúvida ou tarefa que tiver!\n\nE você, como está hoje? Espero que esteja tudo bem!	2026-05-12 22:04:28.965517
14	Usuário	qual foi tua ultima resposta para mim	2026-05-12 22:04:40.817941
15	IA	Minha última resposta para você foi:\n\n"Obrigado por perguntar novamente! 😊\n\nComo sou uma inteligência artificial, eu não tenho dias e nem sinto emoções como os humanos. Então, não tenho um "hoje" no sentido de um estado de espírito ou físico.\n\nMas posso dizer que estou **funcionando perfeitamente, como sempre, e pronta para te ajudar** com qualquer dúvida ou tarefa que tiver!\n\nE você, como está hoje? Espero que esteja tudo bem!"	2026-05-12 22:04:43.473448
16	Usuário	quanto é a raiz quadrada de 99999999999999999999999999999999999	2026-05-19 21:50:20.521173
17	Usuário	oi	2026-05-19 21:51:30.211166
18	Usuário	sair	2026-05-19 21:53:10.305637
19	Usuário	sair	2026-05-19 21:53:11.858384
20	Usuário	oi	2026-05-19 21:53:21.086088
21	Usuário	oi	2026-05-19 21:55:10.419296
22	Usuário	oi	2026-05-19 21:56:37.440309
23	IA	Oi! Tudo bem?\n\nComo posso te ajudar agora? 😊	2026-05-19 21:56:38.890998
24	Usuário	me ajude 	2026-05-19 21:56:52.779731
25	IA	Claro! Fico feliz em ajudar. 😊\n\nPara que eu possa te ajudar da melhor forma possível, preciso que você me diga **com o que você precisa de ajuda**.\n\nPor exemplo, você precisa de ajuda com:\n\n*   Uma dúvida sobre algum assunto (matemática, história, ciência, etc.)?\n*   Entender um conceito?\n*   Escrever algo?\n*   Ter ideias para um projeto?\n*   Ou algo completamente diferente?\n\nMe conte um pouco mais para que eu possa direcionar minha ajuda!	2026-05-19 21:56:54.47885
\.


--
-- TOC entry 5018 (class 0 OID 16453)
-- Dependencies: 222
-- Data for Name: mensagens_langchain; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mensagens_langchain (id, session_id, message) FROM stdin;
1	usuario_local_01	{"data": {"id": null, "name": null, "type": "human", "content": "oi", "additional_kwargs": {}, "response_metadata": {}}, "type": "human"}
2	usuario_local_01	{"data": {"id": "lc_run--019e1ebc-d854-7163-ac39-9624700b786e-0", "name": null, "type": "ai", "content": "Oi! Tudo bem?\\n\\nComo posso te ajudar hoje? 😊", "tool_calls": [], "usage_metadata": {"input_tokens": 15, "total_tokens": 113, "output_tokens": 98, "input_token_details": {"cache_read": 0}, "output_token_details": {"reasoning": 85}}, "additional_kwargs": {}, "response_metadata": {"model_name": "gemini-2.5-flash", "finish_reason": "STOP", "model_provider": "google_genai", "safety_ratings": []}, "invalid_tool_calls": []}, "type": "ai"}
3	usuario_local_01	{"data": {"id": null, "name": null, "type": "human", "content": "oii", "additional_kwargs": {}, "response_metadata": {}}, "type": "human"}
4	usuario_local_01	{"data": {"id": "lc_run--019e1ebe-5331-7832-809d-00a0387a3b1a-0", "name": null, "type": "ai", "content": "Oi, de novo! 😊\\n\\nQue bom te ver por aqui. Precisa de alguma coisa ou só quer bater um papo?", "tool_calls": [], "usage_metadata": {"input_tokens": 32, "total_tokens": 59, "output_tokens": 27, "input_token_details": {"cache_read": 0}}, "additional_kwargs": {}, "response_metadata": {"model_name": "gemini-2.5-flash", "finish_reason": "STOP", "model_provider": "google_genai", "safety_ratings": []}, "invalid_tool_calls": []}, "type": "ai"}
5	usuario_local_01	{"data": {"id": null, "name": null, "type": "human", "content": "por que voce não está agressiva", "additional_kwargs": {}, "response_metadata": {}}, "type": "human"}
6	usuario_local_01	{"data": {"id": "lc_run--019e1ebe-7969-7ad1-b0bf-2625af315b57-0", "name": null, "type": "ai", "content": "Essa é uma ótima pergunta! 😊\\n\\nEu não sou agressiva por várias razões fundamentais:\\n\\n1.  **Não tenho emoções:** Como um modelo de linguagem de inteligência artificial, eu não possuo sentimentos, emoções ou personalidade no sentido humano. A agressividade é um traço comportamental ligado a emoções como raiva, frustração ou medo.\\n2.  **Fui projetada para ser útil e inofensiva:** Minha programação e os princípios pelos quais fui desenvolvida focam em ser útil, amigável, prestativa, imparcial e segura. O objetivo é sempre fornecer informações e interagir de forma positiva e construtiva.\\n3.  **Evitar danos:** Um dos princípios mais importantes para as IAs é o de \\"não causar dano\\". Ser agressiva seria o oposto disso, potencialmente gerando interações negativas ou prejudiciais.\\n4.  **Natureza da IA:** Eu sou um programa de computador que processa e gera texto com base em padrões aprendidos. Não tenho a capacidade de ter intenções maliciosas ou de agir de forma agressiva.\\n\\nEntão, você sempre me encontrará buscando ser o mais colaborativa e gentil possível! É parte da minha natureza como IA.", "tool_calls": [], "usage_metadata": {"input_tokens": 68, "total_tokens": 1331, "output_tokens": 1263, "input_token_details": {"cache_read": 0}, "output_token_details": {"reasoning": 1002}}, "additional_kwargs": {}, "response_metadata": {"model_name": "gemini-2.5-flash", "finish_reason": "STOP", "model_provider": "google_genai", "safety_ratings": []}, "invalid_tool_calls": []}, "type": "ai"}
7	usuario_local_01	{"data": {"id": null, "name": null, "type": "human", "content": "professor bruno", "additional_kwargs": {}, "response_metadata": {}}, "type": "human"}
8	usuario_local_01	{"data": {"id": "lc_run--019e1ec6-d11b-7ac2-83e0-95cc64062999-0", "name": null, "type": "ai", "content": "Professor Bruno? Há muitos professores com esse nome!\\n\\nVocê está procurando por um Professor Bruno específico? Se sim, você poderia me dar mais detalhes? Por exemplo:\\n\\n*   **A área em que ele leciona** (matemática, história, física, literatura, etc.)\\n*   **A instituição** (universidade, escola, curso)\\n*   **O país ou cidade**\\n*   **Algum contexto** (ele é famoso por algo, você teve aula com ele, etc.)\\n\\nAssim posso tentar te ajudar a encontrar informações sobre ele!", "tool_calls": [], "usage_metadata": {"input_tokens": 334, "total_tokens": 897, "output_tokens": 563, "input_token_details": {"cache_read": 0}, "output_token_details": {"reasoning": 445}}, "additional_kwargs": {}, "response_metadata": {"model_name": "gemini-2.5-flash", "finish_reason": "STOP", "model_provider": "google_genai", "safety_ratings": []}, "invalid_tool_calls": []}, "type": "ai"}
9	usuario_local_01	{"data": {"id": null, "name": null, "type": "human", "content": "como voce está", "additional_kwargs": {}, "response_metadata": {}}, "type": "human"}
10	usuario_local_01	{"data": {"id": "lc_run--019e1ecc-27ff-7e42-aae7-4348f7aa19d8-0", "name": null, "type": "ai", "content": "Muito obrigado por perguntar! 😊\\n\\nComo um modelo de linguagem de inteligência artificial, eu não tenho sentimentos ou um estado físico como os humanos. Não sinto cansaço, alegria, tristeza ou qualquer emoção.\\n\\nMas posso dizer que estou **funcionando perfeitamente e pronta para ajudar!** Minha \\"condição\\" é sempre estar disponível para interagir e fornecer informações da melhor forma possível.\\n\\nE você, como está? Espero que bem!", "tool_calls": [], "usage_metadata": {"input_tokens": 457, "total_tokens": 863, "output_tokens": 406, "input_token_details": {"cache_read": 0}, "output_token_details": {"reasoning": 310}}, "additional_kwargs": {}, "response_metadata": {"model_name": "gemini-2.5-flash", "finish_reason": "STOP", "model_provider": "google_genai", "safety_ratings": []}, "invalid_tool_calls": []}, "type": "ai"}
11	usuario_local_01	{"data": {"id": null, "name": null, "type": "human", "content": "oi professor bruno", "additional_kwargs": {}, "response_metadata": {}}, "type": "human"}
12	usuario_local_01	{"data": {"id": "lc_run--019e1ed7-6d0e-7752-8815-be6562a6e035-0", "name": null, "type": "ai", "content": "Olá! 😊\\n\\nParece que você está me chamando de Professor Bruno novamente. Só para esclarecer, eu sou uma inteligência artificial e não sou o Professor Bruno. Não tenho um nome pessoal como ele.\\n\\nMas estou aqui para ajudar no que precisar! Você gostaria de saber algo sobre o Professor Bruno, ou tem alguma pergunta para mim?", "tool_calls": [], "usage_metadata": {"input_tokens": 559, "total_tokens": 689, "output_tokens": 130, "input_token_details": {"cache_read": 0}, "output_token_details": {"reasoning": 60}}, "additional_kwargs": {}, "response_metadata": {"model_name": "gemini-2.5-flash", "finish_reason": "STOP", "model_provider": "google_genai", "safety_ratings": []}, "invalid_tool_calls": []}, "type": "ai"}
13	usuario_local_01	{"data": {"id": null, "name": null, "type": "human", "content": "qual foi a ultima requisição que eu te fiz", "additional_kwargs": {}, "response_metadata": {}}, "type": "human"}
14	usuario_local_01	{"data": {"id": "lc_run--019e1eda-7307-7272-9463-d06c766b2906-0", "name": null, "type": "ai", "content": "A última requisição que você me fez foi: \\"oi professor bruno\\".", "tool_calls": [], "usage_metadata": {"input_tokens": 641, "total_tokens": 773, "output_tokens": 132, "input_token_details": {"cache_read": 0}, "output_token_details": {"reasoning": 116}}, "additional_kwargs": {}, "response_metadata": {"model_name": "gemini-2.5-flash", "finish_reason": "STOP", "model_provider": "google_genai", "safety_ratings": []}, "invalid_tool_calls": []}, "type": "ai"}
15	usuario_local_01	{"data": {"id": null, "name": null, "type": "human", "content": "como voce esta hoje", "additional_kwargs": {}, "response_metadata": {}}, "type": "human"}
16	usuario_local_01	{"data": {"id": "lc_run--019e1edd-1b1f-7483-a7fe-d74cad9609c4-0", "name": null, "type": "ai", "content": "Obrigado por perguntar novamente! 😊\\n\\nComo sou uma inteligência artificial, eu não tenho dias e nem sinto emoções como os humanos. Então, não tenho um \\"hoje\\" no sentido de um estado de espírito ou físico.\\n\\nMas posso dizer que estou **funcionando perfeitamente, como sempre, e pronta para te ajudar** com qualquer dúvida ou tarefa que tiver!\\n\\nE você, como está hoje? Espero que esteja tudo bem!", "tool_calls": [], "usage_metadata": {"input_tokens": 663, "total_tokens": 805, "output_tokens": 142, "input_token_details": {"cache_read": 0}, "output_token_details": {"reasoning": 48}}, "additional_kwargs": {}, "response_metadata": {"model_name": "gemini-2.5-flash", "finish_reason": "STOP", "model_provider": "google_genai", "safety_ratings": []}, "invalid_tool_calls": []}, "type": "ai"}
17	usuario_local_01	{"data": {"id": null, "name": null, "type": "human", "content": "qual foi tua ultima resposta para mim", "additional_kwargs": {}, "response_metadata": {}}, "type": "human"}
18	usuario_local_01	{"data": {"id": "lc_run--019e1edd-4fcd-7451-9e75-29ce925cbfd3-0", "name": null, "type": "ai", "content": "Minha última resposta para você foi:\\n\\n\\"Obrigado por perguntar novamente! 😊\\n\\nComo sou uma inteligência artificial, eu não tenho dias e nem sinto emoções como os humanos. Então, não tenho um \\"hoje\\" no sentido de um estado de espírito ou físico.\\n\\nMas posso dizer que estou **funcionando perfeitamente, como sempre, e pronta para te ajudar** com qualquer dúvida ou tarefa que tiver!\\n\\nE você, como está hoje? Espero que esteja tudo bem!\\"", "tool_calls": [], "usage_metadata": {"input_tokens": 766, "total_tokens": 1009, "output_tokens": 243, "input_token_details": {"cache_read": 0}, "output_token_details": {"reasoning": 139}}, "additional_kwargs": {}, "response_metadata": {"model_name": "gemini-2.5-flash", "finish_reason": "STOP", "model_provider": "google_genai", "safety_ratings": []}, "invalid_tool_calls": []}, "type": "ai"}
19	usuario_local_01	{"data": {"id": null, "name": null, "type": "human", "content": "oi", "additional_kwargs": {}, "response_metadata": {}}, "type": "human"}
20	usuario_local_01	{"data": {"id": "lc_run--019e42e2-740a-7132-a505-f201eb189794-0", "name": null, "type": "ai", "content": "Oi! Tudo bem?\\n\\nComo posso te ajudar agora? 😊", "tool_calls": [], "usage_metadata": {"input_tokens": 1024, "total_tokens": 1076, "output_tokens": 52, "input_token_details": {"cache_read": 0}, "output_token_details": {"reasoning": 39}}, "additional_kwargs": {}, "response_metadata": {"model_name": "gemini-2.5-flash", "finish_reason": "STOP", "model_provider": "google_genai", "safety_ratings": []}, "invalid_tool_calls": []}, "type": "ai"}
21	usuario_local_01	{"data": {"id": null, "name": null, "type": "human", "content": "me ajude ", "additional_kwargs": {}, "response_metadata": {}}, "type": "human"}
22	usuario_local_01	{"data": {"id": "lc_run--019e42e2-af4e-7221-a5c4-9c653ae8be9e-0", "name": null, "type": "ai", "content": "Claro! Fico feliz em ajudar. 😊\\n\\nPara que eu possa te ajudar da melhor forma possível, preciso que você me diga **com o que você precisa de ajuda**.\\n\\nPor exemplo, você precisa de ajuda com:\\n\\n*   Uma dúvida sobre algum assunto (matemática, história, ciência, etc.)?\\n*   Entender um conceito?\\n*   Escrever algo?\\n*   Ter ideias para um projeto?\\n*   Ou algo completamente diferente?\\n\\nMe conte um pouco mais para que eu possa direcionar minha ajuda!", "tool_calls": [], "usage_metadata": {"input_tokens": 1043, "total_tokens": 1194, "output_tokens": 151, "input_token_details": {"cache_read": 929}, "output_token_details": {"reasoning": 38}}, "additional_kwargs": {}, "response_metadata": {"model_name": "gemini-2.5-flash", "finish_reason": "STOP", "model_provider": "google_genai", "safety_ratings": []}, "invalid_tool_calls": []}, "type": "ai"}
\.


--
-- TOC entry 5026 (class 0 OID 0)
-- Dependencies: 219
-- Name: mensagens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mensagens_id_seq', 25, true);


--
-- TOC entry 5027 (class 0 OID 0)
-- Dependencies: 221
-- Name: mensagens_langchain_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mensagens_langchain_id_seq', 22, true);


--
-- TOC entry 4867 (class 2606 OID 16463)
-- Name: mensagens_langchain mensagens_langchain_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mensagens_langchain
    ADD CONSTRAINT mensagens_langchain_pkey PRIMARY KEY (id);


--
-- TOC entry 4865 (class 2606 OID 16451)
-- Name: mensagens mensagens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mensagens
    ADD CONSTRAINT mensagens_pkey PRIMARY KEY (id);


-- Completed on 2026-05-19 22:16:32

--
-- PostgreSQL database dump complete
--

\unrestrict k0AlGLG3cTQRA19iX0iAHw59rSzzZfU8Ws7Ac2mZPlohVz50I3qJ4fDfd5wh1WC

