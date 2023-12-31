PGDMP     1    
                {            proyectoucb    14.5    14.5 n    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    74236    proyectoucb    DATABASE     i   CREATE DATABASE proyectoucb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Bolivia.1252';
    DROP DATABASE proyectoucb;
                postgres    false            �            1259    74237    articulo    TABLE     �  CREATE TABLE public.articulo (
    idarticulo integer NOT NULL,
    articulonombre character varying(100) NOT NULL,
    idcategoria integer NOT NULL,
    articulostock integer DEFAULT 0 NOT NULL,
    articulodescripcion character varying(500),
    articuloimagen character varying(70) NOT NULL,
    articulocodigo integer NOT NULL,
    articulocondicion smallint DEFAULT 1 NOT NULL
);
    DROP TABLE public.articulo;
       public         heap    postgres    false            �            1259    74244    articulo_idarticulo_seq    SEQUENCE     �   CREATE SEQUENCE public.articulo_idarticulo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.articulo_idarticulo_seq;
       public          postgres    false    209            �           0    0    articulo_idarticulo_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.articulo_idarticulo_seq OWNED BY public.articulo.idarticulo;
          public          postgres    false    210            �            1259    74245 	   categoria    TABLE     �   CREATE TABLE public.categoria (
    idcategoria integer NOT NULL,
    categorianombre character varying(100) NOT NULL,
    categoriacondicion smallint DEFAULT 1 NOT NULL
);
    DROP TABLE public.categoria;
       public         heap    postgres    false            �            1259    74249    categoria_idcategoria_seq    SEQUENCE     �   CREATE SEQUENCE public.categoria_idcategoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.categoria_idcategoria_seq;
       public          postgres    false    211            �           0    0    categoria_idcategoria_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.categoria_idcategoria_seq OWNED BY public.categoria.idcategoria;
          public          postgres    false    212            �            1259    74250    cliente    TABLE     �   CREATE TABLE public.cliente (
    idcliente integer NOT NULL,
    idpersona integer NOT NULL,
    clientecondicion smallint DEFAULT 1 NOT NULL
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            �            1259    74254    cliente_idcliente_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_idcliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.cliente_idcliente_seq;
       public          postgres    false    213            �           0    0    cliente_idcliente_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.cliente_idcliente_seq OWNED BY public.cliente.idcliente;
          public          postgres    false    214            �            1259    74373    detalle_ingreso    TABLE     d  CREATE TABLE public.detalle_ingreso (
    iddetalle_ingreso integer NOT NULL,
    detalle_ingresocantidad integer DEFAULT 1 NOT NULL,
    detalle_ingresoprecio_compra character varying(15) DEFAULT 0.00 NOT NULL,
    detalle_ingresoprecio_venta character varying(15) DEFAULT 0.00 NOT NULL,
    idingreso integer NOT NULL,
    idarticulo integer NOT NULL
);
 #   DROP TABLE public.detalle_ingreso;
       public         heap    postgres    false            �            1259    74372 %   detalle_ingreso_iddetalle_ingreso_seq    SEQUENCE     �   CREATE SEQUENCE public.detalle_ingreso_iddetalle_ingreso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.detalle_ingreso_iddetalle_ingreso_seq;
       public          postgres    false    230            �           0    0 %   detalle_ingreso_iddetalle_ingreso_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.detalle_ingreso_iddetalle_ingreso_seq OWNED BY public.detalle_ingreso.iddetalle_ingreso;
          public          postgres    false    229            �            1259    74415    detalle_venta    TABLE     H  CREATE TABLE public.detalle_venta (
    iddetalle_venta integer NOT NULL,
    detalle_ventacantidad integer NOT NULL,
    detalle_ventaprecio_venta character varying(20) DEFAULT 0.0 NOT NULL,
    detalle_ventadescuento character varying(20) DEFAULT 0.0 NOT NULL,
    idventa integer NOT NULL,
    idarticulo integer NOT NULL
);
 !   DROP TABLE public.detalle_venta;
       public         heap    postgres    false            �            1259    74414 !   detalle_venta_iddetalle_venta_seq    SEQUENCE     �   CREATE SEQUENCE public.detalle_venta_iddetalle_venta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.detalle_venta_iddetalle_venta_seq;
       public          postgres    false    234            �           0    0 !   detalle_venta_iddetalle_venta_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.detalle_venta_iddetalle_venta_seq OWNED BY public.detalle_venta.iddetalle_venta;
          public          postgres    false    233            �            1259    74349    ingreso    TABLE     �  CREATE TABLE public.ingreso (
    idingreso integer NOT NULL,
    ingresotipo_comprobante integer NOT NULL,
    ingresoserie_comprobante integer DEFAULT 0 NOT NULL,
    ingresonumero_comprobante integer DEFAULT 0 NOT NULL,
    ingresofecha_hora date,
    ingresoimpuesto integer DEFAULT 0 NOT NULL,
    ingresototal_compra character varying DEFAULT 0.0 NOT NULL,
    idproveedor integer NOT NULL,
    idusuario integer NOT NULL,
    ingresocondicion smallint DEFAULT 1 NOT NULL
);
    DROP TABLE public.ingreso;
       public         heap    postgres    false            �            1259    74348    ingreso_idingreso_seq    SEQUENCE     �   CREATE SEQUENCE public.ingreso_idingreso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.ingreso_idingreso_seq;
       public          postgres    false    228            �           0    0    ingreso_idingreso_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.ingreso_idingreso_seq OWNED BY public.ingreso.idingreso;
          public          postgres    false    227            �            1259    74255    permiso    TABLE     s   CREATE TABLE public.permiso (
    idpermiso integer NOT NULL,
    permisonombre character varying(100) NOT NULL
);
    DROP TABLE public.permiso;
       public         heap    postgres    false            �            1259    74258    permiso_idpermiso_seq    SEQUENCE     �   CREATE SEQUENCE public.permiso_idpermiso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.permiso_idpermiso_seq;
       public          postgres    false    215            �           0    0    permiso_idpermiso_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.permiso_idpermiso_seq OWNED BY public.permiso.idpermiso;
          public          postgres    false    216            �            1259    74259    persona    TABLE     �  CREATE TABLE public.persona (
    idpersona integer NOT NULL,
    personanombre character varying(100) NOT NULL,
    personaap character varying(100) NOT NULL,
    personaam character varying(100),
    personatipo_documento smallint DEFAULT 3 NOT NULL,
    personanum_documento character varying(15) NOT NULL,
    personadireccion character varying(100) NOT NULL,
    personaemail character varying(30),
    personaimagen character varying(100)
);
    DROP TABLE public.persona;
       public         heap    postgres    false            �            1259    74265    persona_idpersona_seq    SEQUENCE     �   CREATE SEQUENCE public.persona_idpersona_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.persona_idpersona_seq;
       public          postgres    false    217            �           0    0    persona_idpersona_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.persona_idpersona_seq OWNED BY public.persona.idpersona;
          public          postgres    false    218            �            1259    74266 	   proveedor    TABLE     �   CREATE TABLE public.proveedor (
    idproveedor integer NOT NULL,
    idpersona integer NOT NULL,
    proveedorcondicion smallint DEFAULT 1 NOT NULL
);
    DROP TABLE public.proveedor;
       public         heap    postgres    false            �            1259    74270    proveedor_idproveedor_seq    SEQUENCE     �   CREATE SEQUENCE public.proveedor_idproveedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.proveedor_idproveedor_seq;
       public          postgres    false    219            �           0    0    proveedor_idproveedor_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.proveedor_idproveedor_seq OWNED BY public.proveedor.idproveedor;
          public          postgres    false    220            �            1259    74271    rol    TABLE     �   CREATE TABLE public.rol (
    idrol integer NOT NULL,
    rolnombre character varying(100) NOT NULL,
    rolcondicion smallint DEFAULT 1 NOT NULL
);
    DROP TABLE public.rol;
       public         heap    postgres    false            �            1259    74275    rol_idrol_seq    SEQUENCE     �   CREATE SEQUENCE public.rol_idrol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.rol_idrol_seq;
       public          postgres    false    221            �           0    0    rol_idrol_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.rol_idrol_seq OWNED BY public.rol.idrol;
          public          postgres    false    222            �            1259    74276    rol_permiso    TABLE     �   CREATE TABLE public.rol_permiso (
    idrol_permiso integer NOT NULL,
    idrol integer NOT NULL,
    idpermiso integer NOT NULL
);
    DROP TABLE public.rol_permiso;
       public         heap    postgres    false            �            1259    74279    rol_permiso_idrol_permiso_seq    SEQUENCE     �   CREATE SEQUENCE public.rol_permiso_idrol_permiso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.rol_permiso_idrol_permiso_seq;
       public          postgres    false    223            �           0    0    rol_permiso_idrol_permiso_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.rol_permiso_idrol_permiso_seq OWNED BY public.rol_permiso.idrol_permiso;
          public          postgres    false    224            �            1259    74280    usuario    TABLE     A  CREATE TABLE public.usuario (
    idusuario integer NOT NULL,
    usuarionombre character varying(20) NOT NULL,
    usuarioclave character varying(70) NOT NULL,
    usuariointentos integer DEFAULT 0 NOT NULL,
    idrol integer NOT NULL,
    idpersona integer NOT NULL,
    usuariocondicion smallint DEFAULT 1 NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    74285    usuario_idusuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_idusuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.usuario_idusuario_seq;
       public          postgres    false    225            �           0    0    usuario_idusuario_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.usuario_idusuario_seq OWNED BY public.usuario.idusuario;
          public          postgres    false    226            �            1259    74393    venta    TABLE     �  CREATE TABLE public.venta (
    idventa integer NOT NULL,
    ventatipo_comprobante integer NOT NULL,
    ventaserie_comprobante integer DEFAULT 0 NOT NULL,
    ventanum_comprobante integer DEFAULT 0 NOT NULL,
    ventafecha_hora date NOT NULL,
    ventaimpuesto integer DEFAULT 0 NOT NULL,
    ventatotal_venta character varying(20) DEFAULT 0.0 NOT NULL,
    idcliente integer NOT NULL,
    idusuario integer NOT NULL,
    ventacondicion smallint DEFAULT 1 NOT NULL
);
    DROP TABLE public.venta;
       public         heap    postgres    false            �            1259    74392    venta_idventa_seq    SEQUENCE     �   CREATE SEQUENCE public.venta_idventa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.venta_idventa_seq;
       public          postgres    false    232            �           0    0    venta_idventa_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.venta_idventa_seq OWNED BY public.venta.idventa;
          public          postgres    false    231            �           2604    74286    articulo idarticulo    DEFAULT     z   ALTER TABLE ONLY public.articulo ALTER COLUMN idarticulo SET DEFAULT nextval('public.articulo_idarticulo_seq'::regclass);
 B   ALTER TABLE public.articulo ALTER COLUMN idarticulo DROP DEFAULT;
       public          postgres    false    210    209            �           2604    74287    categoria idcategoria    DEFAULT     ~   ALTER TABLE ONLY public.categoria ALTER COLUMN idcategoria SET DEFAULT nextval('public.categoria_idcategoria_seq'::regclass);
 D   ALTER TABLE public.categoria ALTER COLUMN idcategoria DROP DEFAULT;
       public          postgres    false    212    211            �           2604    74288    cliente idcliente    DEFAULT     v   ALTER TABLE ONLY public.cliente ALTER COLUMN idcliente SET DEFAULT nextval('public.cliente_idcliente_seq'::regclass);
 @   ALTER TABLE public.cliente ALTER COLUMN idcliente DROP DEFAULT;
       public          postgres    false    214    213            �           2604    74376 !   detalle_ingreso iddetalle_ingreso    DEFAULT     �   ALTER TABLE ONLY public.detalle_ingreso ALTER COLUMN iddetalle_ingreso SET DEFAULT nextval('public.detalle_ingreso_iddetalle_ingreso_seq'::regclass);
 P   ALTER TABLE public.detalle_ingreso ALTER COLUMN iddetalle_ingreso DROP DEFAULT;
       public          postgres    false    230    229    230            �           2604    74418    detalle_venta iddetalle_venta    DEFAULT     �   ALTER TABLE ONLY public.detalle_venta ALTER COLUMN iddetalle_venta SET DEFAULT nextval('public.detalle_venta_iddetalle_venta_seq'::regclass);
 L   ALTER TABLE public.detalle_venta ALTER COLUMN iddetalle_venta DROP DEFAULT;
       public          postgres    false    234    233    234            �           2604    74352    ingreso idingreso    DEFAULT     v   ALTER TABLE ONLY public.ingreso ALTER COLUMN idingreso SET DEFAULT nextval('public.ingreso_idingreso_seq'::regclass);
 @   ALTER TABLE public.ingreso ALTER COLUMN idingreso DROP DEFAULT;
       public          postgres    false    227    228    228            �           2604    74289    permiso idpermiso    DEFAULT     v   ALTER TABLE ONLY public.permiso ALTER COLUMN idpermiso SET DEFAULT nextval('public.permiso_idpermiso_seq'::regclass);
 @   ALTER TABLE public.permiso ALTER COLUMN idpermiso DROP DEFAULT;
       public          postgres    false    216    215            �           2604    74290    persona idpersona    DEFAULT     v   ALTER TABLE ONLY public.persona ALTER COLUMN idpersona SET DEFAULT nextval('public.persona_idpersona_seq'::regclass);
 @   ALTER TABLE public.persona ALTER COLUMN idpersona DROP DEFAULT;
       public          postgres    false    218    217            �           2604    74291    proveedor idproveedor    DEFAULT     ~   ALTER TABLE ONLY public.proveedor ALTER COLUMN idproveedor SET DEFAULT nextval('public.proveedor_idproveedor_seq'::regclass);
 D   ALTER TABLE public.proveedor ALTER COLUMN idproveedor DROP DEFAULT;
       public          postgres    false    220    219            �           2604    74292 	   rol idrol    DEFAULT     f   ALTER TABLE ONLY public.rol ALTER COLUMN idrol SET DEFAULT nextval('public.rol_idrol_seq'::regclass);
 8   ALTER TABLE public.rol ALTER COLUMN idrol DROP DEFAULT;
       public          postgres    false    222    221            �           2604    74293    rol_permiso idrol_permiso    DEFAULT     �   ALTER TABLE ONLY public.rol_permiso ALTER COLUMN idrol_permiso SET DEFAULT nextval('public.rol_permiso_idrol_permiso_seq'::regclass);
 H   ALTER TABLE public.rol_permiso ALTER COLUMN idrol_permiso DROP DEFAULT;
       public          postgres    false    224    223            �           2604    74294    usuario idusuario    DEFAULT     v   ALTER TABLE ONLY public.usuario ALTER COLUMN idusuario SET DEFAULT nextval('public.usuario_idusuario_seq'::regclass);
 @   ALTER TABLE public.usuario ALTER COLUMN idusuario DROP DEFAULT;
       public          postgres    false    226    225            �           2604    74396    venta idventa    DEFAULT     n   ALTER TABLE ONLY public.venta ALTER COLUMN idventa SET DEFAULT nextval('public.venta_idventa_seq'::regclass);
 <   ALTER TABLE public.venta ALTER COLUMN idventa DROP DEFAULT;
       public          postgres    false    232    231    232            q          0    74237    articulo 
   TABLE DATA           �   COPY public.articulo (idarticulo, articulonombre, idcategoria, articulostock, articulodescripcion, articuloimagen, articulocodigo, articulocondicion) FROM stdin;
    public          postgres    false    209   ��       s          0    74245 	   categoria 
   TABLE DATA           U   COPY public.categoria (idcategoria, categorianombre, categoriacondicion) FROM stdin;
    public          postgres    false    211   �       u          0    74250    cliente 
   TABLE DATA           I   COPY public.cliente (idcliente, idpersona, clientecondicion) FROM stdin;
    public          postgres    false    213   T�       �          0    74373    detalle_ingreso 
   TABLE DATA           �   COPY public.detalle_ingreso (iddetalle_ingreso, detalle_ingresocantidad, detalle_ingresoprecio_compra, detalle_ingresoprecio_venta, idingreso, idarticulo) FROM stdin;
    public          postgres    false    230   w�       �          0    74415    detalle_venta 
   TABLE DATA           �   COPY public.detalle_venta (iddetalle_venta, detalle_ventacantidad, detalle_ventaprecio_venta, detalle_ventadescuento, idventa, idarticulo) FROM stdin;
    public          postgres    false    234   ��       �          0    74349    ingreso 
   TABLE DATA           �   COPY public.ingreso (idingreso, ingresotipo_comprobante, ingresoserie_comprobante, ingresonumero_comprobante, ingresofecha_hora, ingresoimpuesto, ingresototal_compra, idproveedor, idusuario, ingresocondicion) FROM stdin;
    public          postgres    false    228   �       w          0    74255    permiso 
   TABLE DATA           ;   COPY public.permiso (idpermiso, permisonombre) FROM stdin;
    public          postgres    false    215   '�       y          0    74259    persona 
   TABLE DATA           �   COPY public.persona (idpersona, personanombre, personaap, personaam, personatipo_documento, personanum_documento, personadireccion, personaemail, personaimagen) FROM stdin;
    public          postgres    false    217   ��       {          0    74266 	   proveedor 
   TABLE DATA           O   COPY public.proveedor (idproveedor, idpersona, proveedorcondicion) FROM stdin;
    public          postgres    false    219   ��       }          0    74271    rol 
   TABLE DATA           =   COPY public.rol (idrol, rolnombre, rolcondicion) FROM stdin;
    public          postgres    false    221   Ћ                 0    74276    rol_permiso 
   TABLE DATA           F   COPY public.rol_permiso (idrol_permiso, idrol, idpermiso) FROM stdin;
    public          postgres    false    223   ��       �          0    74280    usuario 
   TABLE DATA           ~   COPY public.usuario (idusuario, usuarionombre, usuarioclave, usuariointentos, idrol, idpersona, usuariocondicion) FROM stdin;
    public          postgres    false    225   >�       �          0    74393    venta 
   TABLE DATA           �   COPY public.venta (idventa, ventatipo_comprobante, ventaserie_comprobante, ventanum_comprobante, ventafecha_hora, ventaimpuesto, ventatotal_venta, idcliente, idusuario, ventacondicion) FROM stdin;
    public          postgres    false    232   ��       �           0    0    articulo_idarticulo_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.articulo_idarticulo_seq', 2, true);
          public          postgres    false    210            �           0    0    categoria_idcategoria_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.categoria_idcategoria_seq', 3, true);
          public          postgres    false    212            �           0    0    cliente_idcliente_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.cliente_idcliente_seq', 1, true);
          public          postgres    false    214            �           0    0 %   detalle_ingreso_iddetalle_ingreso_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.detalle_ingreso_iddetalle_ingreso_seq', 4, true);
          public          postgres    false    229            �           0    0 !   detalle_venta_iddetalle_venta_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.detalle_venta_iddetalle_venta_seq', 2, true);
          public          postgres    false    233            �           0    0    ingreso_idingreso_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.ingreso_idingreso_seq', 2, true);
          public          postgres    false    227            �           0    0    permiso_idpermiso_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.permiso_idpermiso_seq', 7, true);
          public          postgres    false    216            �           0    0    persona_idpersona_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.persona_idpersona_seq', 6, true);
          public          postgres    false    218            �           0    0    proveedor_idproveedor_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.proveedor_idproveedor_seq', 1, true);
          public          postgres    false    220            �           0    0    rol_idrol_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.rol_idrol_seq', 1, true);
          public          postgres    false    222            �           0    0    rol_permiso_idrol_permiso_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.rol_permiso_idrol_permiso_seq', 13, true);
          public          postgres    false    224            �           0    0    usuario_idusuario_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.usuario_idusuario_seq', 1, true);
          public          postgres    false    226            �           0    0    venta_idventa_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.venta_idventa_seq', 1, true);
          public          postgres    false    231            �           2606    74296    articulo articulo_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.articulo
    ADD CONSTRAINT articulo_pkey PRIMARY KEY (idarticulo);
 @   ALTER TABLE ONLY public.articulo DROP CONSTRAINT articulo_pkey;
       public            postgres    false    209            �           2606    74298    categoria categoria_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (idcategoria);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public            postgres    false    211            �           2606    74300    cliente cliente_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (idcliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            postgres    false    213            �           2606    74381 $   detalle_ingreso detalle_ingreso_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.detalle_ingreso
    ADD CONSTRAINT detalle_ingreso_pkey PRIMARY KEY (iddetalle_ingreso);
 N   ALTER TABLE ONLY public.detalle_ingreso DROP CONSTRAINT detalle_ingreso_pkey;
       public            postgres    false    230            �           2606    74422     detalle_venta detalle_venta_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.detalle_venta
    ADD CONSTRAINT detalle_venta_pkey PRIMARY KEY (iddetalle_venta);
 J   ALTER TABLE ONLY public.detalle_venta DROP CONSTRAINT detalle_venta_pkey;
       public            postgres    false    234            �           2606    74361    ingreso ingreso_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.ingreso
    ADD CONSTRAINT ingreso_pkey PRIMARY KEY (idingreso);
 >   ALTER TABLE ONLY public.ingreso DROP CONSTRAINT ingreso_pkey;
       public            postgres    false    228            �           2606    74302    permiso permiso_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.permiso
    ADD CONSTRAINT permiso_pkey PRIMARY KEY (idpermiso);
 >   ALTER TABLE ONLY public.permiso DROP CONSTRAINT permiso_pkey;
       public            postgres    false    215            �           2606    74304    persona persona_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (idpersona);
 >   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_pkey;
       public            postgres    false    217            �           2606    74306    proveedor proveedor_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_pkey PRIMARY KEY (idproveedor);
 B   ALTER TABLE ONLY public.proveedor DROP CONSTRAINT proveedor_pkey;
       public            postgres    false    219            �           2606    74308    rol_permiso rol_permiso_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.rol_permiso
    ADD CONSTRAINT rol_permiso_pkey PRIMARY KEY (idrol_permiso);
 F   ALTER TABLE ONLY public.rol_permiso DROP CONSTRAINT rol_permiso_pkey;
       public            postgres    false    223            �           2606    74310    rol rol_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (idrol);
 6   ALTER TABLE ONLY public.rol DROP CONSTRAINT rol_pkey;
       public            postgres    false    221            �           2606    74312    usuario usuario_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (idusuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    225            �           2606    74403    venta venta_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_pkey PRIMARY KEY (idventa);
 :   ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_pkey;
       public            postgres    false    232            �           2606    74387    detalle_ingreso idarticulo    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_ingreso
    ADD CONSTRAINT idarticulo FOREIGN KEY (idarticulo) REFERENCES public.articulo(idarticulo);
 D   ALTER TABLE ONLY public.detalle_ingreso DROP CONSTRAINT idarticulo;
       public          postgres    false    3262    209    230            �           2606    74428    detalle_venta idarticulo    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_venta
    ADD CONSTRAINT idarticulo FOREIGN KEY (idarticulo) REFERENCES public.articulo(idarticulo);
 B   ALTER TABLE ONLY public.detalle_venta DROP CONSTRAINT idarticulo;
       public          postgres    false    209    3262    234            �           2606    74313    articulo idcategoria    FK CONSTRAINT     �   ALTER TABLE ONLY public.articulo
    ADD CONSTRAINT idcategoria FOREIGN KEY (idcategoria) REFERENCES public.categoria(idcategoria);
 >   ALTER TABLE ONLY public.articulo DROP CONSTRAINT idcategoria;
       public          postgres    false    209    3264    211            �           2606    74404    venta idcliente    FK CONSTRAINT     y   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT idcliente FOREIGN KEY (idcliente) REFERENCES public.cliente(idcliente);
 9   ALTER TABLE ONLY public.venta DROP CONSTRAINT idcliente;
       public          postgres    false    3266    232    213            �           2606    74382    detalle_ingreso idingreso    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_ingreso
    ADD CONSTRAINT idingreso FOREIGN KEY (idingreso) REFERENCES public.ingreso(idingreso);
 C   ALTER TABLE ONLY public.detalle_ingreso DROP CONSTRAINT idingreso;
       public          postgres    false    228    230    3280            �           2606    74318    rol_permiso idpermiso    FK CONSTRAINT        ALTER TABLE ONLY public.rol_permiso
    ADD CONSTRAINT idpermiso FOREIGN KEY (idpermiso) REFERENCES public.permiso(idpermiso);
 ?   ALTER TABLE ONLY public.rol_permiso DROP CONSTRAINT idpermiso;
       public          postgres    false    223    3268    215            �           2606    74323    cliente idpersona    FK CONSTRAINT     {   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT idpersona FOREIGN KEY (idpersona) REFERENCES public.persona(idpersona);
 ;   ALTER TABLE ONLY public.cliente DROP CONSTRAINT idpersona;
       public          postgres    false    213    3270    217            �           2606    74328    proveedor idpersona    FK CONSTRAINT     �   ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT idpersona FOREIGN KEY (idpersona) REFERENCES public.persona(idpersona) NOT VALID;
 =   ALTER TABLE ONLY public.proveedor DROP CONSTRAINT idpersona;
       public          postgres    false    219    3270    217            �           2606    74333    usuario idpersona    FK CONSTRAINT     {   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT idpersona FOREIGN KEY (idpersona) REFERENCES public.persona(idpersona);
 ;   ALTER TABLE ONLY public.usuario DROP CONSTRAINT idpersona;
       public          postgres    false    225    3270    217            �           2606    74362    ingreso idproveedor    FK CONSTRAINT     �   ALTER TABLE ONLY public.ingreso
    ADD CONSTRAINT idproveedor FOREIGN KEY (idproveedor) REFERENCES public.proveedor(idproveedor) NOT VALID;
 =   ALTER TABLE ONLY public.ingreso DROP CONSTRAINT idproveedor;
       public          postgres    false    219    3272    228            �           2606    74338    rol_permiso idrol    FK CONSTRAINT     o   ALTER TABLE ONLY public.rol_permiso
    ADD CONSTRAINT idrol FOREIGN KEY (idrol) REFERENCES public.rol(idrol);
 ;   ALTER TABLE ONLY public.rol_permiso DROP CONSTRAINT idrol;
       public          postgres    false    3274    221    223            �           2606    74343    usuario idrol    FK CONSTRAINT     k   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT idrol FOREIGN KEY (idrol) REFERENCES public.rol(idrol);
 7   ALTER TABLE ONLY public.usuario DROP CONSTRAINT idrol;
       public          postgres    false    3274    221    225            �           2606    74367    ingreso idusuario    FK CONSTRAINT     �   ALTER TABLE ONLY public.ingreso
    ADD CONSTRAINT idusuario FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario) NOT VALID;
 ;   ALTER TABLE ONLY public.ingreso DROP CONSTRAINT idusuario;
       public          postgres    false    225    3278    228            �           2606    74409    venta idusuario    FK CONSTRAINT     y   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT idusuario FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario);
 9   ALTER TABLE ONLY public.venta DROP CONSTRAINT idusuario;
       public          postgres    false    3278    232    225            �           2606    74423    detalle_venta idventa    FK CONSTRAINT     y   ALTER TABLE ONLY public.detalle_venta
    ADD CONSTRAINT idventa FOREIGN KEY (idventa) REFERENCES public.venta(idventa);
 ?   ALTER TABLE ONLY public.detalle_venta DROP CONSTRAINT idventa;
       public          postgres    false    232    3284    234            q   u  x�u��N�0���)NL E��6-�Z���(H�H�,�����9�ľ�_��ߥ.��[��ɲ��XM���%�i����؎��@{��g�@��t*��.�^/8�����9������<\ڈ|���
TA���"����C���
��5A�A�"�a��؝�F�'�4���V�h��(iV��"Z�p;O0g��*�OmU�����^m�e�x�p_��rծ�z�� �V�W�Ŀc�SÎL�7ؓOT���'9˘���x����daj�'ɮ`��b�	^oMd�]��y_儰'��1v|��vv�[g��ߩs/�?f�oll����#h�3���W��(gG)�|Q�6ۙ�"SA��U����ͤ�      s   1   x�3�t�qu	�w��u�t��4�2�
s��:9�1z\\\ ��      u      x�3�4�4����� �Z      �   ,   x�3�4�A.#8ۈ˘ӈӄ�Hr�ps�r��F\1z\\\ ��<      �       x�3�4�4BCNC.# i���F\1z\\\ 5{      �   4   x�3�4�4 B##c]c]CS(�\`�� ��U��p��qqq Y�	�      w   O   x�3�tv�����2�t��utv��2�t��r�2�s�2L9��]���̀r~��>!�
0E�!��=...       y     x���QK�0ǟ��"���6M�7��Ď�����˔87֭}�ӛe܆�`r������k���P3�X � x*��1jMlj[�C��np��n������T���&K�~�����u�`�y<Iű ����w�����$�4d��"�LJu�'\�x�	�ЖՅǍ���Z�.�&'���*�F��;y�.�3q�NZ]����n箤��,H3x ]�e��u�7}�����0���Gw��m熗�ۨ.R���������6�+��TH�GQ�	�C�.      {      x�3�4�4����� �[      }      x�3�tt����	rt��4����� B��         /   x���  �w��#��ׁ?R�bqlr�@�m$W(��p�׀��b      �   >   x�3��HMK5�4L)	4���1��,
��rJ�����+L�2��4�4�4�4����� �4c      �   '   x�3�4�4442�42��ƺ�f�F� NC�=... w��     