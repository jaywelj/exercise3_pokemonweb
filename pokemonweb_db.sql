PGDMP     2                    w            pokemonweb_db    11.2    11.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    17263    pokemonweb_db    DATABASE     �   CREATE DATABASE pokemonweb_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Philippines.1252' LC_CTYPE = 'English_Philippines.1252';
    DROP DATABASE pokemonweb_db;
             postgres    false            �            1259    17264 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         jaywelj    false            �            1259    17267    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       jaywelj    false    196            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       jaywelj    false    197            �            1259    17269    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         jaywelj    false            �            1259    17272    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       jaywelj    false    198            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       jaywelj    false    199            �            1259    17274    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         jaywelj    false            �            1259    17277    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       jaywelj    false    200            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       jaywelj    false    201            �            1259    17279 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         jaywelj    false            �            1259    17285    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         jaywelj    false            �            1259    17288    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       jaywelj    false    203            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       jaywelj    false    204            �            1259    17290    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       jaywelj    false    202            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       jaywelj    false    205            �            1259    17292    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         jaywelj    false            �            1259    17295 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       jaywelj    false    206            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       jaywelj    false    207            �            1259    17297    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         jaywelj    false            �            1259    17304    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       jaywelj    false    208            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       jaywelj    false    209            �            1259    17306    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         jaywelj    false            �            1259    17309    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       jaywelj    false    210            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       jaywelj    false    211            �            1259    17311    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         jaywelj    false            �            1259    17317    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       jaywelj    false    212            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       jaywelj    false    213            �            1259    17319    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         jaywelj    false            �            1259    17325    trainers_pokemon    TABLE     :  CREATE TABLE public.trainers_pokemon (
    id integer NOT NULL,
    name character varying(32) NOT NULL,
    type1 character varying(10) NOT NULL,
    type2 character varying(10) NOT NULL,
    description text,
    pokedex_no integer NOT NULL,
    photo character varying(100),
    is_verified boolean NOT NULL
);
 $   DROP TABLE public.trainers_pokemon;
       public         jaywelj    false            �            1259    17331    trainers_pokemon_id_seq    SEQUENCE     �   CREATE SEQUENCE public.trainers_pokemon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.trainers_pokemon_id_seq;
       public       jaywelj    false    215            �           0    0    trainers_pokemon_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.trainers_pokemon_id_seq OWNED BY public.trainers_pokemon.id;
            public       jaywelj    false    216            �            1259    17333    trainers_pokemonownership    TABLE       CREATE TABLE public.trainers_pokemonownership (
    id integer NOT NULL,
    nickname character varying(32) NOT NULL,
    level integer NOT NULL,
    sex character varying(1) NOT NULL,
    shiny boolean NOT NULL,
    pokemon_id integer NOT NULL,
    trainer_id integer NOT NULL
);
 -   DROP TABLE public.trainers_pokemonownership;
       public         jaywelj    false            �            1259    17336     trainers_pokemonownership_id_seq    SEQUENCE     �   CREATE SEQUENCE public.trainers_pokemonownership_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.trainers_pokemonownership_id_seq;
       public       jaywelj    false    217            �           0    0     trainers_pokemonownership_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.trainers_pokemonownership_id_seq OWNED BY public.trainers_pokemonownership.id;
            public       jaywelj    false    218            �            1259    17338    trainers_trainer    TABLE     �   CREATE TABLE public.trainers_trainer (
    id integer NOT NULL,
    name character varying(32) NOT NULL,
    sex character varying(1) NOT NULL,
    user_id integer NOT NULL,
    photo character varying(100) NOT NULL
);
 $   DROP TABLE public.trainers_trainer;
       public         jaywelj    false            �            1259    17341    trainers_trainer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.trainers_trainer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.trainers_trainer_id_seq;
       public       jaywelj    false    219            �           0    0    trainers_trainer_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.trainers_trainer_id_seq OWNED BY public.trainers_trainer.id;
            public       jaywelj    false    220            �
           2604    17343    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       jaywelj    false    197    196            �
           2604    17344    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       jaywelj    false    199    198            �
           2604    17345    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       jaywelj    false    201    200            �
           2604    17346    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       jaywelj    false    205    202            �
           2604    17347    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       jaywelj    false    204    203            �
           2604    17348    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       jaywelj    false    207    206            �
           2604    17349    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       jaywelj    false    209    208            �
           2604    17350    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       jaywelj    false    211    210            �
           2604    17351    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       jaywelj    false    213    212            �
           2604    17352    trainers_pokemon id    DEFAULT     z   ALTER TABLE ONLY public.trainers_pokemon ALTER COLUMN id SET DEFAULT nextval('public.trainers_pokemon_id_seq'::regclass);
 B   ALTER TABLE public.trainers_pokemon ALTER COLUMN id DROP DEFAULT;
       public       jaywelj    false    216    215            �
           2604    17353    trainers_pokemonownership id    DEFAULT     �   ALTER TABLE ONLY public.trainers_pokemonownership ALTER COLUMN id SET DEFAULT nextval('public.trainers_pokemonownership_id_seq'::regclass);
 K   ALTER TABLE public.trainers_pokemonownership ALTER COLUMN id DROP DEFAULT;
       public       jaywelj    false    218    217            �
           2604    17354    trainers_trainer id    DEFAULT     z   ALTER TABLE ONLY public.trainers_trainer ALTER COLUMN id SET DEFAULT nextval('public.trainers_trainer_id_seq'::regclass);
 B   ALTER TABLE public.trainers_trainer ALTER COLUMN id DROP DEFAULT;
       public       jaywelj    false    220    219            �          0    17264 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       jaywelj    false    196   ��       �          0    17269    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       jaywelj    false    198   Ϧ       �          0    17274    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       jaywelj    false    200   �       �          0    17279 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       jaywelj    false    202   x�       �          0    17285    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       jaywelj    false    203   ש       �          0    17292    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       jaywelj    false    206   ��       �          0    17297    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       jaywelj    false    208   �       �          0    17306    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       jaywelj    false    210   e�       �          0    17311    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       jaywelj    false    212   �       �          0    17319    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       jaywelj    false    214   w�       �          0    17325    trainers_pokemon 
   TABLE DATA               o   COPY public.trainers_pokemon (id, name, type1, type2, description, pokedex_no, photo, is_verified) FROM stdin;
    public       jaywelj    false    215   ��       �          0    17333    trainers_pokemonownership 
   TABLE DATA               l   COPY public.trainers_pokemonownership (id, nickname, level, sex, shiny, pokemon_id, trainer_id) FROM stdin;
    public       jaywelj    false    217   ��       �          0    17338    trainers_trainer 
   TABLE DATA               I   COPY public.trainers_trainer (id, name, sex, user_id, photo) FROM stdin;
    public       jaywelj    false    219   Q�       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       jaywelj    false    197            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       jaywelj    false    199            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);
            public       jaywelj    false    201            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       jaywelj    false    204            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 16, true);
            public       jaywelj    false    205            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       jaywelj    false    207            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 58, true);
            public       jaywelj    false    209            �           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);
            public       jaywelj    false    211            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 43, true);
            public       jaywelj    false    213            �           0    0    trainers_pokemon_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.trainers_pokemon_id_seq', 30, true);
            public       jaywelj    false    216            �           0    0     trainers_pokemonownership_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.trainers_pokemonownership_id_seq', 34, true);
            public       jaywelj    false    218            �           0    0    trainers_trainer_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.trainers_trainer_id_seq', 32, true);
            public       jaywelj    false    220            �
           2606    17356    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         jaywelj    false    196            �
           2606    17358 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         jaywelj    false    198    198            �
           2606    17360 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         jaywelj    false    198            �
           2606    17362    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         jaywelj    false    196            �
           2606    17364 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         jaywelj    false    200    200            �
           2606    17366 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         jaywelj    false    200            �
           2606    17368 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         jaywelj    false    203            �
           2606    17370 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         jaywelj    false    203    203            �
           2606    17372    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         jaywelj    false    202            �
           2606    17374 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         jaywelj    false    206            �
           2606    17376 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         jaywelj    false    206    206            �
           2606    17378     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         jaywelj    false    202            �
           2606    17380 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         jaywelj    false    208            �
           2606    17382 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         jaywelj    false    210    210            �
           2606    17384 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         jaywelj    false    210            �
           2606    17386 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         jaywelj    false    212                       2606    17388 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         jaywelj    false    214                       2606    17390 &   trainers_pokemon trainers_pokemon_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.trainers_pokemon
    ADD CONSTRAINT trainers_pokemon_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.trainers_pokemon DROP CONSTRAINT trainers_pokemon_pkey;
       public         jaywelj    false    215                       2606    17392 0   trainers_pokemon trainers_pokemon_pokedex_no_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.trainers_pokemon
    ADD CONSTRAINT trainers_pokemon_pokedex_no_key UNIQUE (pokedex_no);
 Z   ALTER TABLE ONLY public.trainers_pokemon DROP CONSTRAINT trainers_pokemon_pokedex_no_key;
       public         jaywelj    false    215            	           2606    17394 8   trainers_pokemonownership trainers_pokemonownership_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.trainers_pokemonownership
    ADD CONSTRAINT trainers_pokemonownership_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.trainers_pokemonownership DROP CONSTRAINT trainers_pokemonownership_pkey;
       public         jaywelj    false    217                       2606    17396 &   trainers_trainer trainers_trainer_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.trainers_trainer
    ADD CONSTRAINT trainers_trainer_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.trainers_trainer DROP CONSTRAINT trainers_trainer_pkey;
       public         jaywelj    false    219            �
           1259    17397    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         jaywelj    false    196            �
           1259    17398 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         jaywelj    false    198            �
           1259    17399 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         jaywelj    false    198            �
           1259    17400 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         jaywelj    false    200            �
           1259    17401 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         jaywelj    false    203            �
           1259    17402 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         jaywelj    false    203            �
           1259    17403 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         jaywelj    false    206            �
           1259    17404 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         jaywelj    false    206            �
           1259    17405     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         jaywelj    false    202            �
           1259    17406 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         jaywelj    false    208            �
           1259    17407 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         jaywelj    false    208                        1259    17408 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         jaywelj    false    214                       1259    17409 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         jaywelj    false    214            
           1259    17410 -   trainers_pokemonownership_pokemon_id_de701411    INDEX     y   CREATE INDEX trainers_pokemonownership_pokemon_id_de701411 ON public.trainers_pokemonownership USING btree (pokemon_id);
 A   DROP INDEX public.trainers_pokemonownership_pokemon_id_de701411;
       public         jaywelj    false    217                       1259    17411 -   trainers_pokemonownership_trainer_id_3ccc2bcd    INDEX     y   CREATE INDEX trainers_pokemonownership_trainer_id_3ccc2bcd ON public.trainers_pokemonownership USING btree (trainer_id);
 A   DROP INDEX public.trainers_pokemonownership_trainer_id_3ccc2bcd;
       public         jaywelj    false    217                       1259    17412 !   trainers_trainer_user_id_cb9b2550    INDEX     a   CREATE INDEX trainers_trainer_user_id_cb9b2550 ON public.trainers_trainer USING btree (user_id);
 5   DROP INDEX public.trainers_trainer_user_id_cb9b2550;
       public         jaywelj    false    219                       2606    17413 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       jaywelj    false    200    2788    198                       2606    17418 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       jaywelj    false    198    2777    196                       2606    17423 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       jaywelj    false    2813    200    210                       2606    17428 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       jaywelj    false    196    203    2777                       2606    17433 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       jaywelj    false    2790    202    203                       2606    17438 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       jaywelj    false    206    2788    200                       2606    17443 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       jaywelj    false    202    206    2790                       2606    17448 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       jaywelj    false    210    208    2813                       2606    17453 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       jaywelj    false    202    2790    208                       2606    17474 O   trainers_pokemonownership trainers_pokemonowne_pokemon_id_de701411_fk_trainers_    FK CONSTRAINT     �   ALTER TABLE ONLY public.trainers_pokemonownership
    ADD CONSTRAINT trainers_pokemonowne_pokemon_id_de701411_fk_trainers_ FOREIGN KEY (pokemon_id) REFERENCES public.trainers_pokemon(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.trainers_pokemonownership DROP CONSTRAINT trainers_pokemonowne_pokemon_id_de701411_fk_trainers_;
       public       jaywelj    false    217    215    2821                       2606    17463 O   trainers_pokemonownership trainers_pokemonowne_trainer_id_3ccc2bcd_fk_trainers_    FK CONSTRAINT     �   ALTER TABLE ONLY public.trainers_pokemonownership
    ADD CONSTRAINT trainers_pokemonowne_trainer_id_3ccc2bcd_fk_trainers_ FOREIGN KEY (trainer_id) REFERENCES public.trainers_trainer(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.trainers_pokemonownership DROP CONSTRAINT trainers_pokemonowne_trainer_id_3ccc2bcd_fk_trainers_;
       public       jaywelj    false    219    2829    217                       2606    17468 B   trainers_trainer trainers_trainer_user_id_cb9b2550_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.trainers_trainer
    ADD CONSTRAINT trainers_trainer_user_id_cb9b2550_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.trainers_trainer DROP CONSTRAINT trainers_trainer_user_id_cb9b2550_fk_auth_user_id;
       public       jaywelj    false    202    2790    219            �      x������ � �      �      x������ � �      �   |  x�m�K��0@��)8��I�c=ר4BmԢi	:Uo?�1���,�ۚ�)�˥��k��{k��g�1���V5נ��b�#x	�0h0��"�W���>	�v٬ݣ��:6ơ'`/�Hv�=H?Œ�`���Ht\�-�]|�ƣ ~��H��N^�X�4!�C�c�	@*�l��Cg�(�����J����	��	��l*��T<�����_+�w�(�ɀ=J�LB�/�׌'?ɻk�h�U���}Hu���S��yfLm;c��1���UFĦ����M_M��[ݚCZ���ipz�Wڦ�_t�+X霎a�)ob�/�Ƣ������oV�22�����i[�n!9BR<_��U�(jJ4���f�(c�z#���b�&�� ��W�-      �   O  x�m��n�@�5<�v�tff
I�J�#6T��4i���rF$>}�vы'���O�s ��v��*
�J$��v�8}v��ɜ3)��з��喖���ծ��G�x��}p�X�p&޽� Ժ@�ԁHW5�(�"|�P8T�R�`����&❼��v�����h!� mG���P[����_H�DQ�l����MI���D�9��t����Ⱦ}uJVGv�m�:h��T# )c�o�iP����Pt���X�ӳ^�v�NM<��I)����05�a��v�t��]D�9�3�� 3�Н�ix��B�#*�+*�r��A^y#��F����wY�Oz���      �      x������ � �      �      x������ � �      �   D  x���Ko�@��ί�����>�,b�ĪT�`��Q�DP!�;wl���4 eE>_��{�C(PC�k���"F��Qi�=��P����럳�w��K]�����vQ/��|����U={9�m���_�nD0A=�U�O`���Uݔ˪�D/��c0F�V�v���ۺ9-
3"�F9B��5�b]7��6��)�r���fK�d��'>�~�u4��q��^�rq�f̕;$�y-!� 	2�hP��>S�A�r���(�@6��}����������\�؀���8�$FC����;�V����.��p^��Q'�L��M�izg��Q9��S���dm�2^���>{���sԬ�5��?�US��r��:i�ͱrPP����6+Í�P> �.yS>\T�?�t��t���j8� �x*�eL�Hۮ��j��Tn�}�d%U���,�w�ͺ+(9a�:�#�M0� ]B?�mǅ�+#�^���o����]٬�uU7g���� b�h����z+��j��'k[l?nw��m�����}�� n��`i3�0I�Y+v�uI*�Ϋ�A0��0a�4�f#��}�44֘\#��W�����#��5r��ؐ�+�����6H6}{�H�4~�1m��������_4�ͪ�m��̵��Q��̼�=�OS���߽~��o��΀,���O�PR.2�����`���!R{�.W2ړ��4��M ��B�!h��_�u�,��G�릗0�b�����b���k�1޸�17�[�P˅�]ŋ�';�S��+���-��|�^/�&?wwVc����"����O�H�����&��o�*��      �   r   x�e��
�@E׹#��q3��:ɐd����Zܝs.wM�+Y�=K؈�U��ݳ
�s�M[�n��l��U%^�+���@������R6��7.*�xې+N���\V �~*=�      �   �  x����n�:Fӧ��Q#�͗<ˑ��d�h�$��}�3q ���*���56�ykOC}��s�o�1�S34�a�«�W�-���$,�x����T����
*�+hS���)��u��`<�{m���]}l?�뷱��2����Ȑ;������д���P���{ۼiOY���eWq᭛�q|'��c�%��Qn�cu�.��������X�՟x�O{��S�e�8����+���K}��÷���H	3�)�Kj�=_��I\j�̐Gơ�1�Fwv9<�.�L!����wi�9ޔ{C�" w?ݵ����쪡�����k�x������a��.Ќ�O��&�@l���3(�"��)��PrC����]{9�#��	cg��Y��k�|>�<������M__?��x��L�R�����S���,�L��B�Z?m<de���$�n�4��F#�j�d�4�"c�at���`�Ir����귿��vh�l��;� �Ad��Gj�$W�z�&e�$�*�H��A�ѳK�#g�&Ȓ���N�:e� ��	�)����!���QI���t~څ{$���$�%AE�¡��B�,�!x$x=l���Ɣ�J�,Z�!pI��� ch� ���LKȵڃN�Lc`K6�UD�������֛��1k
�*�L�e:����.A!��v�g:���o��Qwͯ��-�M@�N�LP�#<�(z6��-Ey5�)�O'�^�S���W)'���O=d>BXhI��tަ���G4k/	\�)|���Ô2��$8�H�i�(�qE� �*�=X/����G�0z# '!8�yMX� \�JI:�)ΤD�A/
�_hBҚ3)�f�:{x'��d}0�8H���������j      �   n  x��Ko�@���Ƚ
�]��"���u�%u�A��e6���k'j9��Hs��>�7ڥ2�+rh����V|�H�Q��ُ��s^M�WD8��3.7�X��@or�Kw�P�/���>�uZ�e@By`���� ���[�l�m�2 �&�߀5k���/ioecU�>����(���pe6A��xaǙI���Vsh*�:�L+��}\������YԺ�w�nGސJ�|:�Y7��Xc���:��R^�m@
�e�+�q�0�����4A�T��k&#��Ԣ�_؇S]�6]Z�}�4]���8=�*����I�pJ�d��W"��97]?,9�B�$��A�2��y*=g!�s`+��t�Ro��n����\x�j�V�Ϲ@/d�6]���+��>����hU���.��_�ѭ}^����n��\}�E��|�n]�(^[�^ɺp�9	1���H@w`�l�����/\'gw�����:y.��'w�0�0��ک8钮�X�MC�&��x7�>˿�}�3o�ٝehp��~q��6�TӾf8�p�L��m4G I���v����ЀM������6Mi7���QtB0E��O������!�3������l6��"|      �   �  x�}X�rۼ�f�wig<�e'Nr�x��m�긟�3��@�RD, Ja��}�>GߤOҳ@R>����ٳ�,�>��X�3�����7w�qAu:����U�����j�.��!�z�+��Б�+u��ϏkOjG~V��'�_�Y�z���L��tm޹7�S4�i��]���S!z�H��1���Nת1!�&�p�Z_���(��W���w�ױsхߝ��Z�ö�O����Uo���:|����9l܄��H���o�\�������w��l�8���5��f�!7j ��i�)����"�>�>�g��������6޴���Μ���5ί���"��yI�z3ٍz�ջ��_�T�?�~���,)lH�AH� ��R�s���P�����F����W����#�F$A��iP^��,}�=[��������r��0��,κdqQ}��Gפ�0��b��
�?��4�Η(�o�/��`�f�r@�8�;�y=B%r�S�IuA�d�'m��Z�D;z�,tw-VQ?߀���9;E���3�G�j��v]�����h���|����&%�Z�Sj����w|�ьLu�G��J�|n���8���Ԗ)���h��?�!h����p�rځ�����z��&9EM�k�^Uϖ�}��������[��%���Sj����r����jn�0��80�cMLZ@�ם ߐ5�O;7@YDZ����б�C�yt�L������'<H�ܞ�g	�X�zG�%��7��Q�
��vQ䋜�eu���my�d�IzlAl�{�@��G9oOܣg*��c��A��2��x�~�ŤRT#4���@dճJE�J�9�A�h��1��l�
����K�0:؄����A�V���������O�O�p��;��A��)5������5����f�4�L�a��H�R����r��|�y��K{q��⭪�e����Ϫ(�Md�i��D�AHI=K����
:q�Ћ�ފ�z�+��|��dBW���0.���47r�lSB�ع�h�i�A}��b>��� b���f;jX�7.�8�7v�4_��.i�-3? }I�r[V�!�sb�2�gf\iO�ɘ��U�P���OZ�o�O�@�At�������C-q�92,+�{�C�2�Ѩ��QK�2l )�
̇c�e ���Y��e��r�/�/����0H��O�����Qf�K#"��L�D;y�ݔA"6=R�n���v\�l�a����=#ti0��A(](s���
�7�:�Eݛ���Y�	���2�9�W�4ĝ&{{bH�iE\Y2�I�����,S;����*�b���%j�F��!u0���\��j̖uw�����Mh��ᯥ5�	閩�#�b2y���ei����н�F.k⤇6��5����r\Z7�F	1|y���`!���?�&M(�������8�~�aˀ���I�qo(!��Tqð���W�/{�y��y�G�8�4��������IFP��L��f1�<�­O��%�H��Y���l�0� i���-�P'�=�S\ބG�cL:��ܐM�)ua+?3��HW�����Y��Ϋ�`!�����7��w��U���Hj���O*�յw�羞DTP��d��W%�%������A����&�/��Ҽ�~�i.�$�쁯�gO��GG;����D0����{n���E��U�4q77�I���T�X��xd��H��<���-#���L�1�*�Ф��
v	DIl���`O�r�;�ay���Ӂ�L���ɒ��X6>̲lw"�j����/���돥�kԽ��\}�t�����Piq��)ۃ70���?�nx.O�6#�q�A���g�^�X��ؕ��}�A*��L�j��@��������]\�4\���\8�'+@�S;��"Zs��N��L�U��p�b���02)�1�3΢̍p*�g+��i�t��؍Ӑ'a���PrJ�j���u�˒�p�9����?$��N=\�k�!��m-:�2�k��=R���q~<M�.��+8�D����!Hq*L.��0���L=��k9�P��rw����˯_�������g��C���=q�Uv
e�Ϭ_�~aBg������K�j�,"��C���2�[��A��4	=#�¿���z	�P�퉀B�{�K��4&O"��r��_9퓿��<y�?-��      �   �   x�M��
�@Dϓ��M�ۺW)�Z�� �"�V�ůwڊ�K`��C;��s���#���0'v��AKԌ�4�9�3�"�9����hOi�!_/<���m&=�Ԥ����`��RR�L,�G�}��"���CFXm|�'��ݫx0�ͼ���R)E      �   �   x�m��
�@�����@�j�z��K��� �՝2�Uv�зϏ�P^g~�g� ��Z��@��e����91[�0H �D��X���B-�� �
�%���\��s�bF��*7'�E�Փ��ֶݶߎ*K�����a��^*����`�rP�U���!E�9E��G}�!%H,7w�w�|on�L�0�Bg�     