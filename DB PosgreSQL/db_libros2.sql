PGDMP     	    &                y         
   db_libros2    13.2    13.2     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    24576 
   db_libros2    DATABASE     i   CREATE DATABASE db_libros2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE db_libros2;
                postgres    false            ?            1259    24582    libros    TABLE       CREATE TABLE public.libros (
    codigo integer NOT NULL,
    nombre character varying(70) NOT NULL,
    descripcion character varying(50) NOT NULL,
    nombre_autor character varying(30) NOT NULL,
    nota character varying(30) NOT NULL,
    fecha date
);
    DROP TABLE public.libros;
       public         heap    postgres    false            ?            1259    24580    libros_codigo_seq    SEQUENCE     ?   CREATE SEQUENCE public.libros_codigo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.libros_codigo_seq;
       public          postgres    false    201            ?           0    0    libros_codigo_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.libros_codigo_seq OWNED BY public.libros.codigo;
          public          postgres    false    200            "           2604    24585    libros codigo    DEFAULT     n   ALTER TABLE ONLY public.libros ALTER COLUMN codigo SET DEFAULT nextval('public.libros_codigo_seq'::regclass);
 <   ALTER TABLE public.libros ALTER COLUMN codigo DROP DEFAULT;
       public          postgres    false    200    201    201            ?          0    24582    libros 
   TABLE DATA           X   COPY public.libros (codigo, nombre, descripcion, nombre_autor, nota, fecha) FROM stdin;
    public          postgres    false    201           ?           0    0    libros_codigo_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.libros_codigo_seq', 4, true);
          public          postgres    false    200            $           2606    24587    libros libros_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.libros
    ADD CONSTRAINT libros_pkey PRIMARY KEY (codigo);
 <   ALTER TABLE ONLY public.libros DROP CONSTRAINT libros_pkey;
       public            postgres    false    201            ?   U   x?3??IT(H?R??S??L*?WH??S(?S(?O?WHI?9?%?ɉ
???y??9
???
I?E?%?
?FF??&?F?\1z\\\ ?3?     