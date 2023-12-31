PGDMP         )                {            Test    15.2    15.2 �    6           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            7           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            8           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            9           1262    24816    Test    DATABASE     z   CREATE DATABASE "Test" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Test";
                Admin    false            �            1259    24884    Category_counterparty    TABLE     }   CREATE TABLE public."Category_counterparty" (
    "ID" integer NOT NULL,
    "Name" character(25),
    "Description" text
);
 +   DROP TABLE public."Category_counterparty";
       public         heap    postgres    false            �            1259    24883    Category_counterparty_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."Category_counterparty_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."Category_counterparty_ID_seq";
       public          postgres    false    231            :           0    0    Category_counterparty_ID_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."Category_counterparty_ID_seq" OWNED BY public."Category_counterparty"."ID";
          public          postgres    false    230            �            1259    24857    Counterparty    TABLE     �   CREATE TABLE public."Counterparty" (
    "ID" integer NOT NULL,
    "ID_Category_counterparty" integer,
    "Name" character(25),
    "Address" character(50),
    "Telephone" bigint,
    "Requisites" bigint,
    "INN" bigint,
    "KPP" bigint
);
 "   DROP TABLE public."Counterparty";
       public         heap    postgres    false            �            1259    24856    Counterparty_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."Counterparty_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Counterparty_ID_seq";
       public          postgres    false    225            ;           0    0    Counterparty_ID_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Counterparty_ID_seq" OWNED BY public."Counterparty"."ID";
          public          postgres    false    224            �            1259    24952    Devices    TABLE     �   CREATE TABLE public."Devices" (
    "ID" integer NOT NULL,
    "OS" character(25),
    "Push_token" bigint,
    "Device_ID" bigint
);
    DROP TABLE public."Devices";
       public         heap    postgres    false            �            1259    24951    Device_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."Device_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Device_ID_seq";
       public          postgres    false    235            <           0    0    Device_ID_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE public."Device_ID_seq" OWNED BY public."Devices"."ID";
          public          postgres    false    234            �            1259    24893 
   Event_type    TABLE     �   CREATE TABLE public."Event_type" (
    "ID" integer NOT NULL,
    "ID_Events" integer,
    "Cash_receipts" numeric(100,5),
    "Money_transfer" numeric(100,5)
);
     DROP TABLE public."Event_type";
       public         heap    postgres    false            �            1259    24892    Event_type_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."Event_type_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Event_type_ID_seq";
       public          postgres    false    233            =           0    0    Event_type_ID_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Event_type_ID_seq" OWNED BY public."Event_type"."ID";
          public          postgres    false    232            �            1259    24875    Events    TABLE       CREATE TABLE public."Events" (
    "ID" integer NOT NULL,
    "ID_Project" integer,
    "ID_User" integer,
    "ID_Event_type" integer,
    "Name" character(25),
    "Date" date,
    "Description" text,
    "Sum" numeric(100,2),
    "Approved_by_the_Customer" character(50)
);
    DROP TABLE public."Events";
       public         heap    postgres    false            �            1259    24874    Events_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."Events_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Events_ID_seq";
       public          postgres    false    229            >           0    0    Events_ID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Events_ID_seq" OWNED BY public."Events"."ID";
          public          postgres    false    228                       1259    33554    Files    TABLE     �   CREATE TABLE public."Files" (
    "ID" integer NOT NULL,
    "File_path" text,
    "ID_User" integer,
    "Size" numeric(100,2),
    "Extension" character(25),
    "Name" character(50)
);
    DROP TABLE public."Files";
       public         heap    postgres    false                       1259    33563    FilesToTasks    TABLE     r   CREATE TABLE public."FilesToTasks" (
    "ID" integer NOT NULL,
    "ID_Files" integer,
    "ID_Tasks" integer
);
 "   DROP TABLE public."FilesToTasks";
       public         heap    postgres    false                       1259    33562    FilesToTasks_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."FilesToTasks_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."FilesToTasks_ID_seq";
       public          postgres    false    264            ?           0    0    FilesToTasks_ID_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."FilesToTasks_ID_seq" OWNED BY public."FilesToTasks"."ID";
          public          postgres    false    263                       1259    33553    Files_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."Files_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Files_ID_seq";
       public          postgres    false    262            @           0    0    Files_ID_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Files_ID_seq" OWNED BY public."Files"."ID";
          public          postgres    false    261            �            1259    24841    Information_on_receipts    TABLE     �   CREATE TABLE public."Information_on_receipts" (
    "ID" integer NOT NULL,
    "ID_Project" integer,
    "ID_Price_list" integer,
    "Price" numeric(100,2),
    "ID_User" integer
);
 -   DROP TABLE public."Information_on_receipts";
       public         heap    postgres    false            �            1259    24840    Information_on_receipts_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."Information_on_receipts_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."Information_on_receipts_ID_seq";
       public          postgres    false    221            A           0    0    Information_on_receipts_ID_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."Information_on_receipts_ID_seq" OWNED BY public."Information_on_receipts"."ID";
          public          postgres    false    220            �            1259    24818 
   Price_list    TABLE     x   CREATE TABLE public."Price_list" (
    "ID" integer NOT NULL,
    "Service" character(25),
    "Price" character(25)
);
     DROP TABLE public."Price_list";
       public         heap    postgres    false            �            1259    24817    Price_list_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."Price_list_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Price_list_ID_seq";
       public          postgres    false    215            B           0    0    Price_list_ID_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Price_list_ID_seq" OWNED BY public."Price_list"."ID";
          public          postgres    false    214            �            1259    24866    Project    TABLE     I  CREATE TABLE public."Project" (
    "ID" integer NOT NULL,
    "ID_Counterparty" integer,
    "Name" character(25),
    "Customer" character(50),
    "Responsible" character(50),
    "Deadline" date,
    "Area" numeric(100,2),
    "Address" character(50),
    "Status" text,
    "ID_Graphic" integer,
    "IsArchived" boolean
);
    DROP TABLE public."Project";
       public         heap    postgres    false            �            1259    24865    Project_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."Project_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Project_ID_seq";
       public          postgres    false    227            C           0    0    Project_ID_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Project_ID_seq" OWNED BY public."Project"."ID";
          public          postgres    false    226            �            1259    33158    Rating    TABLE     �   CREATE TABLE public."Rating" (
    "ID" integer NOT NULL,
    "Evaluation" bigint,
    "ID_User_sender" bigint,
    "ID_User_Recipient" bigint
);
    DROP TABLE public."Rating";
       public         heap    postgres    false            �            1259    33157    Rating_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."Rating_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Rating_ID_seq";
       public          postgres    false    239            D           0    0    Rating_ID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Rating_ID_seq" OWNED BY public."Rating"."ID";
          public          postgres    false    238            �            1259    24850    Rights    TABLE     {   CREATE TABLE public."Rights" (
    "ID" integer NOT NULL,
    "Read" boolean,
    "Write" boolean,
    "Update" boolean
);
    DROP TABLE public."Rights";
       public         heap    postgres    false            �            1259    24849    Rights_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."Rights_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Rights_ID_seq";
       public          postgres    false    223            E           0    0    Rights_ID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Rights_ID_seq" OWNED BY public."Rights"."ID";
          public          postgres    false    222            �            1259    24825    Roles    TABLE     �   CREATE TABLE public."Roles" (
    "ID" integer NOT NULL,
    "Administrator" boolean,
    "Employee" boolean,
    "User" boolean
);
    DROP TABLE public."Roles";
       public         heap    postgres    false            �            1259    24824    Roles_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."Roles_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Roles_ID_seq";
       public          postgres    false    217            F           0    0    Roles_ID_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Roles_ID_seq" OWNED BY public."Roles"."ID";
          public          postgres    false    216                       1259    33537    Tasks    TABLE     �   CREATE TABLE public."Tasks" (
    "ID" integer NOT NULL,
    "Task_name" character(50),
    "ID_project" integer,
    "Deadline" date,
    "ID_types_of_tasks" integer
);
    DROP TABLE public."Tasks";
       public         heap    postgres    false                       1259    33536    Tasks_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."Tasks_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Tasks_ID_seq";
       public          postgres    false    260            G           0    0    Tasks_ID_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Tasks_ID_seq" OWNED BY public."Tasks"."ID";
          public          postgres    false    259            �            1259    33144    Types_of_tasks    TABLE     �   CREATE TABLE public."Types_of_tasks" (
    "ID" integer NOT NULL,
    current boolean,
    overdue boolean,
    completed boolean
);
 $   DROP TABLE public."Types_of_tasks";
       public         heap    postgres    false            �            1259    24832    User    TABLE     c  CREATE TABLE public."User" (
    "ID" integer NOT NULL,
    "ID_Roles" integer,
    "ID_Rights" integer,
    "Last_name" character(25),
    " First_name " character(25),
    "Patronymic" character(25),
    "Telephone" bigint,
    "E_mail" character(50),
    "Password" character(25),
    "ID_Devices" integer,
    "Photo" text,
    "ID_Rating" integer
);
    DROP TABLE public."User";
       public         heap    postgres    false            
           1259    33590    UserToProjects    TABLE     u   CREATE TABLE public."UserToProjects" (
    "ID" integer NOT NULL,
    "ID_User" integer,
    "ID_Project" integer
);
 $   DROP TABLE public."UserToProjects";
       public         heap    postgres    false            	           1259    33589    UserToProjects_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."UserToProjects_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."UserToProjects_ID_seq";
       public          postgres    false    266            H           0    0    UserToProjects_ID_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."UserToProjects_ID_seq" OWNED BY public."UserToProjects"."ID";
          public          postgres    false    265            �            1259    24831    User_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."User_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."User_ID_seq";
       public          postgres    false    219            I           0    0    User_ID_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."User_ID_seq" OWNED BY public."User"."ID";
          public          postgres    false    218            �            1259    33218 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    Admin    false            �            1259    33217    auth_group_id_seq    SEQUENCE     �   ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          Admin    false    247            �            1259    33226    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    Admin    false            �            1259    33225    auth_group_permissions_id_seq    SEQUENCE     �   ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          Admin    false    249            �            1259    33212    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    Admin    false            �            1259    33211    auth_permission_id_seq    SEQUENCE     �   ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          Admin    false    245            �            1259    33232 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    Admin    false            �            1259    33240    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    Admin    false            �            1259    33239    auth_user_groups_id_seq    SEQUENCE     �   ALTER TABLE public.auth_user_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          Admin    false    253            �            1259    33231    auth_user_id_seq    SEQUENCE     �   ALTER TABLE public.auth_user ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          Admin    false    251            �            1259    33246    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    Admin    false            �            1259    33245 !   auth_user_user_permissions_id_seq    SEQUENCE     �   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          Admin    false    255                       1259    33304    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    Admin    false                        1259    33303    django_admin_log_id_seq    SEQUENCE     �   ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          Admin    false    257            �            1259    33204    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    Admin    false            �            1259    33203    django_content_type_id_seq    SEQUENCE     �   ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          Admin    false    243            �            1259    33196    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    Admin    false            �            1259    33195    django_migrations_id_seq    SEQUENCE     �   ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          Admin    false    241                       1259    33332    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    Admin    false                       1259    49938    income_and_expenses    TABLE     �   CREATE TABLE public.income_and_expenses (
    "ID" integer NOT NULL,
    "Amount" integer,
    "Purpose" character(25),
    "Date" date,
    "id_Information_on_receipts" integer,
    "Spend" integer,
    "Income" integer
);
 '   DROP TABLE public.income_and_expenses;
       public         heap    postgres    false                       1259    49937    income_and_expenses_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."income_and_expenses_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."income_and_expenses_ID_seq";
       public          postgres    false    268            J           0    0    income_and_expenses_ID_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."income_and_expenses_ID_seq" OWNED BY public.income_and_expenses."ID";
          public          postgres    false    267            �            1259    33143    types_of_tasks_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."types_of_tasks_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."types_of_tasks_ID_seq";
       public          postgres    false    237            K           0    0    types_of_tasks_ID_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."types_of_tasks_ID_seq" OWNED BY public."Types_of_tasks"."ID";
          public          postgres    false    236            �           2604    24887    Category_counterparty ID    DEFAULT     �   ALTER TABLE ONLY public."Category_counterparty" ALTER COLUMN "ID" SET DEFAULT nextval('public."Category_counterparty_ID_seq"'::regclass);
 K   ALTER TABLE public."Category_counterparty" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    24860    Counterparty ID    DEFAULT     x   ALTER TABLE ONLY public."Counterparty" ALTER COLUMN "ID" SET DEFAULT nextval('public."Counterparty_ID_seq"'::regclass);
 B   ALTER TABLE public."Counterparty" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    24955 
   Devices ID    DEFAULT     m   ALTER TABLE ONLY public."Devices" ALTER COLUMN "ID" SET DEFAULT nextval('public."Device_ID_seq"'::regclass);
 =   ALTER TABLE public."Devices" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    24896    Event_type ID    DEFAULT     t   ALTER TABLE ONLY public."Event_type" ALTER COLUMN "ID" SET DEFAULT nextval('public."Event_type_ID_seq"'::regclass);
 @   ALTER TABLE public."Event_type" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    24878 	   Events ID    DEFAULT     l   ALTER TABLE ONLY public."Events" ALTER COLUMN "ID" SET DEFAULT nextval('public."Events_ID_seq"'::regclass);
 <   ALTER TABLE public."Events" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    33557    Files ID    DEFAULT     j   ALTER TABLE ONLY public."Files" ALTER COLUMN "ID" SET DEFAULT nextval('public."Files_ID_seq"'::regclass);
 ;   ALTER TABLE public."Files" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    262    261    262            �           2604    33566    FilesToTasks ID    DEFAULT     x   ALTER TABLE ONLY public."FilesToTasks" ALTER COLUMN "ID" SET DEFAULT nextval('public."FilesToTasks_ID_seq"'::regclass);
 B   ALTER TABLE public."FilesToTasks" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    264    263    264            �           2604    24844    Information_on_receipts ID    DEFAULT     �   ALTER TABLE ONLY public."Information_on_receipts" ALTER COLUMN "ID" SET DEFAULT nextval('public."Information_on_receipts_ID_seq"'::regclass);
 M   ALTER TABLE public."Information_on_receipts" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    24821    Price_list ID    DEFAULT     t   ALTER TABLE ONLY public."Price_list" ALTER COLUMN "ID" SET DEFAULT nextval('public."Price_list_ID_seq"'::regclass);
 @   ALTER TABLE public."Price_list" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    24869 
   Project ID    DEFAULT     n   ALTER TABLE ONLY public."Project" ALTER COLUMN "ID" SET DEFAULT nextval('public."Project_ID_seq"'::regclass);
 =   ALTER TABLE public."Project" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    33161 	   Rating ID    DEFAULT     l   ALTER TABLE ONLY public."Rating" ALTER COLUMN "ID" SET DEFAULT nextval('public."Rating_ID_seq"'::regclass);
 <   ALTER TABLE public."Rating" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    238    239    239            �           2604    24853 	   Rights ID    DEFAULT     l   ALTER TABLE ONLY public."Rights" ALTER COLUMN "ID" SET DEFAULT nextval('public."Rights_ID_seq"'::regclass);
 <   ALTER TABLE public."Rights" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    24828    Roles ID    DEFAULT     j   ALTER TABLE ONLY public."Roles" ALTER COLUMN "ID" SET DEFAULT nextval('public."Roles_ID_seq"'::regclass);
 ;   ALTER TABLE public."Roles" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    33540    Tasks ID    DEFAULT     j   ALTER TABLE ONLY public."Tasks" ALTER COLUMN "ID" SET DEFAULT nextval('public."Tasks_ID_seq"'::regclass);
 ;   ALTER TABLE public."Tasks" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    260    259    260            �           2604    33147    Types_of_tasks ID    DEFAULT     |   ALTER TABLE ONLY public."Types_of_tasks" ALTER COLUMN "ID" SET DEFAULT nextval('public."types_of_tasks_ID_seq"'::regclass);
 D   ALTER TABLE public."Types_of_tasks" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    236    237    237            �           2604    24835    User ID    DEFAULT     h   ALTER TABLE ONLY public."User" ALTER COLUMN "ID" SET DEFAULT nextval('public."User_ID_seq"'::regclass);
 :   ALTER TABLE public."User" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    33593    UserToProjects ID    DEFAULT     |   ALTER TABLE ONLY public."UserToProjects" ALTER COLUMN "ID" SET DEFAULT nextval('public."UserToProjects_ID_seq"'::regclass);
 D   ALTER TABLE public."UserToProjects" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    265    266    266            �           2604    49941    income_and_expenses ID    DEFAULT     �   ALTER TABLE ONLY public.income_and_expenses ALTER COLUMN "ID" SET DEFAULT nextval('public."income_and_expenses_ID_seq"'::regclass);
 G   ALTER TABLE public.income_and_expenses ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    268    267    268                      0    24884    Category_counterparty 
   TABLE DATA           N   COPY public."Category_counterparty" ("ID", "Name", "Description") FROM stdin;
    public          postgres    false    231   2                0    24857    Counterparty 
   TABLE DATA           �   COPY public."Counterparty" ("ID", "ID_Category_counterparty", "Name", "Address", "Telephone", "Requisites", "INN", "KPP") FROM stdin;
    public          postgres    false    225   �                0    24952    Devices 
   TABLE DATA           J   COPY public."Devices" ("ID", "OS", "Push_token", "Device_ID") FROM stdin;
    public          postgres    false    235   �                0    24893 
   Event_type 
   TABLE DATA           \   COPY public."Event_type" ("ID", "ID_Events", "Cash_receipts", "Money_transfer") FROM stdin;
    public          postgres    false    233   (                0    24875    Events 
   TABLE DATA           �   COPY public."Events" ("ID", "ID_Project", "ID_User", "ID_Event_type", "Name", "Date", "Description", "Sum", "Approved_by_the_Customer") FROM stdin;
    public          postgres    false    229   W      -          0    33554    Files 
   TABLE DATA           \   COPY public."Files" ("ID", "File_path", "ID_User", "Size", "Extension", "Name") FROM stdin;
    public          postgres    false    262   �      /          0    33563    FilesToTasks 
   TABLE DATA           F   COPY public."FilesToTasks" ("ID", "ID_Files", "ID_Tasks") FROM stdin;
    public          postgres    false    264   �                0    24841    Information_on_receipts 
   TABLE DATA           l   COPY public."Information_on_receipts" ("ID", "ID_Project", "ID_Price_list", "Price", "ID_User") FROM stdin;
    public          postgres    false    221   �      �          0    24818 
   Price_list 
   TABLE DATA           @   COPY public."Price_list" ("ID", "Service", "Price") FROM stdin;
    public          postgres    false    215   
       
          0    24866    Project 
   TABLE DATA           �   COPY public."Project" ("ID", "ID_Counterparty", "Name", "Customer", "Responsible", "Deadline", "Area", "Address", "Status", "ID_Graphic", "IsArchived") FROM stdin;
    public          postgres    false    227   3                 0    33158    Rating 
   TABLE DATA           ]   COPY public."Rating" ("ID", "Evaluation", "ID_User_sender", "ID_User_Recipient") FROM stdin;
    public          postgres    false    239   �                 0    24850    Rights 
   TABLE DATA           C   COPY public."Rights" ("ID", "Read", "Write", "Update") FROM stdin;
    public          postgres    false    223   �                  0    24825    Roles 
   TABLE DATA           L   COPY public."Roles" ("ID", "Administrator", "Employee", "User") FROM stdin;
    public          postgres    false    217   !      +          0    33537    Tasks 
   TABLE DATA           c   COPY public."Tasks" ("ID", "Task_name", "ID_project", "Deadline", "ID_types_of_tasks") FROM stdin;
    public          postgres    false    260   5!                0    33144    Types_of_tasks 
   TABLE DATA           M   COPY public."Types_of_tasks" ("ID", current, overdue, completed) FROM stdin;
    public          postgres    false    237   l!                0    24832    User 
   TABLE DATA           �   COPY public."User" ("ID", "ID_Roles", "ID_Rights", "Last_name", " First_name ", "Patronymic", "Telephone", "E_mail", "Password", "ID_Devices", "Photo", "ID_Rating") FROM stdin;
    public          postgres    false    219   �!      1          0    33590    UserToProjects 
   TABLE DATA           I   COPY public."UserToProjects" ("ID", "ID_User", "ID_Project") FROM stdin;
    public          postgres    false    266   �!                0    33218 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          Admin    false    247   "                 0    33226    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          Admin    false    249   %"                0    33212    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          Admin    false    245   B"      "          0    33232 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          Admin    false    251   �#      $          0    33240    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          Admin    false    253   �$      &          0    33246    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          Admin    false    255   �$      (          0    33304    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          Admin    false    257   �$                0    33204    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          Admin    false    243   �'                0    33196    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          Admin    false    241   �(      )          0    33332    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          Admin    false    258   n*      3          0    49938    income_and_expenses 
   TABLE DATA           �   COPY public.income_and_expenses ("ID", "Amount", "Purpose", "Date", "id_Information_on_receipts", "Spend", "Income") FROM stdin;
    public          postgres    false    268   �+      L           0    0    Category_counterparty_ID_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."Category_counterparty_ID_seq"', 4, true);
          public          postgres    false    230            M           0    0    Counterparty_ID_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Counterparty_ID_seq"', 2, true);
          public          postgres    false    224            N           0    0    Device_ID_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Device_ID_seq"', 2, true);
          public          postgres    false    234            O           0    0    Event_type_ID_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Event_type_ID_seq"', 1, true);
          public          postgres    false    232            P           0    0    Events_ID_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Events_ID_seq"', 1, true);
          public          postgres    false    228            Q           0    0    FilesToTasks_ID_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."FilesToTasks_ID_seq"', 1, false);
          public          postgres    false    263            R           0    0    Files_ID_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Files_ID_seq"', 1, false);
          public          postgres    false    261            S           0    0    Information_on_receipts_ID_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."Information_on_receipts_ID_seq"', 1, true);
          public          postgres    false    220            T           0    0    Price_list_ID_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Price_list_ID_seq"', 1, true);
          public          postgres    false    214            U           0    0    Project_ID_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Project_ID_seq"', 4, true);
          public          postgres    false    226            V           0    0    Rating_ID_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Rating_ID_seq"', 3, true);
          public          postgres    false    238            W           0    0    Rights_ID_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Rights_ID_seq"', 1, true);
          public          postgres    false    222            X           0    0    Roles_ID_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Roles_ID_seq"', 1, true);
          public          postgres    false    216            Y           0    0    Tasks_ID_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Tasks_ID_seq"', 1, true);
          public          postgres    false    259            Z           0    0    UserToProjects_ID_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."UserToProjects_ID_seq"', 1, false);
          public          postgres    false    265            [           0    0    User_ID_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."User_ID_seq"', 2, true);
          public          postgres    false    218            \           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          Admin    false    246            ]           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          Admin    false    248            ^           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);
          public          Admin    false    244            _           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          Admin    false    252            `           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          Admin    false    250            a           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          Admin    false    254            b           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 27, true);
          public          Admin    false    256            c           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 27, true);
          public          Admin    false    242            d           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);
          public          Admin    false    240            e           0    0    income_and_expenses_ID_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."income_and_expenses_ID_seq"', 2, true);
          public          postgres    false    267            f           0    0    types_of_tasks_ID_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."types_of_tasks_ID_seq"', 1, true);
          public          postgres    false    236                       2606    24891 0   Category_counterparty Category_counterparty_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."Category_counterparty"
    ADD CONSTRAINT "Category_counterparty_pkey" PRIMARY KEY ("ID");
 ^   ALTER TABLE ONLY public."Category_counterparty" DROP CONSTRAINT "Category_counterparty_pkey";
       public            postgres    false    231            	           2606    24864    Counterparty Counterparty_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Counterparty"
    ADD CONSTRAINT "Counterparty_pkey" PRIMARY KEY ("ID");
 L   ALTER TABLE ONLY public."Counterparty" DROP CONSTRAINT "Counterparty_pkey";
       public            postgres    false    225                       2606    24959    Devices Device_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."Devices"
    ADD CONSTRAINT "Device_pkey" PRIMARY KEY ("ID");
 A   ALTER TABLE ONLY public."Devices" DROP CONSTRAINT "Device_pkey";
       public            postgres    false    235                       2606    24900    Event_type Event_type_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Event_type"
    ADD CONSTRAINT "Event_type_pkey" PRIMARY KEY ("ID");
 H   ALTER TABLE ONLY public."Event_type" DROP CONSTRAINT "Event_type_pkey";
       public            postgres    false    233                       2606    24882    Events Events_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Events"
    ADD CONSTRAINT "Events_pkey" PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY public."Events" DROP CONSTRAINT "Events_pkey";
       public            postgres    false    229            L           2606    33568    FilesToTasks FilesToTasks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."FilesToTasks"
    ADD CONSTRAINT "FilesToTasks_pkey" PRIMARY KEY ("ID");
 L   ALTER TABLE ONLY public."FilesToTasks" DROP CONSTRAINT "FilesToTasks_pkey";
       public            postgres    false    264            J           2606    33561    Files Files_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Files"
    ADD CONSTRAINT "Files_pkey" PRIMARY KEY ("ID");
 >   ALTER TABLE ONLY public."Files" DROP CONSTRAINT "Files_pkey";
       public            postgres    false    262                       2606    24848 4   Information_on_receipts Information_on_receipts_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public."Information_on_receipts"
    ADD CONSTRAINT "Information_on_receipts_pkey" PRIMARY KEY ("ID");
 b   ALTER TABLE ONLY public."Information_on_receipts" DROP CONSTRAINT "Information_on_receipts_pkey";
       public            postgres    false    221            �           2606    24823    Price_list Price_list_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Price_list"
    ADD CONSTRAINT "Price_list_pkey" PRIMARY KEY ("ID");
 H   ALTER TABLE ONLY public."Price_list" DROP CONSTRAINT "Price_list_pkey";
       public            postgres    false    215                       2606    24873    Project Project_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Project"
    ADD CONSTRAINT "Project_pkey" PRIMARY KEY ("ID");
 B   ALTER TABLE ONLY public."Project" DROP CONSTRAINT "Project_pkey";
       public            postgres    false    227                       2606    33165    Rating Rating_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Rating"
    ADD CONSTRAINT "Rating_pkey" PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY public."Rating" DROP CONSTRAINT "Rating_pkey";
       public            postgres    false    239                       2606    24855    Rights Rights_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Rights"
    ADD CONSTRAINT "Rights_pkey" PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY public."Rights" DROP CONSTRAINT "Rights_pkey";
       public            postgres    false    223                       2606    24830    Roles Roles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Roles"
    ADD CONSTRAINT "Roles_pkey" PRIMARY KEY ("ID");
 >   ALTER TABLE ONLY public."Roles" DROP CONSTRAINT "Roles_pkey";
       public            postgres    false    217            H           2606    33542    Tasks Tasks_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Tasks"
    ADD CONSTRAINT "Tasks_pkey" PRIMARY KEY ("ID");
 >   ALTER TABLE ONLY public."Tasks" DROP CONSTRAINT "Tasks_pkey";
       public            postgres    false    260            N           2606    33595 "   UserToProjects UserToProjects_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."UserToProjects"
    ADD CONSTRAINT "UserToProjects_pkey" PRIMARY KEY ("ID");
 P   ALTER TABLE ONLY public."UserToProjects" DROP CONSTRAINT "UserToProjects_pkey";
       public            postgres    false    266                       2606    24839    User User_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY ("ID");
 <   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_pkey";
       public            postgres    false    219            %           2606    33330    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            Admin    false    247            *           2606    33261 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            Admin    false    249    249            -           2606    33230 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            Admin    false    249            '           2606    33222    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            Admin    false    247                        2606    33252 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            Admin    false    245    245            "           2606    33216 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            Admin    false    245            5           2606    33244 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            Admin    false    253            8           2606    33276 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            Admin    false    253    253            /           2606    33236    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            Admin    false    251            ;           2606    33250 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            Admin    false    255            >           2606    33290 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            Admin    false    255    255            2           2606    33325     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            Admin    false    251            A           2606    33311 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            Admin    false    257                       2606    33210 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            Admin    false    243    243                       2606    33208 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            Admin    false    243                       2606    33202 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            Admin    false    241            E           2606    33338 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            Admin    false    258            P           2606    49943 ,   income_and_expenses income_and_expenses_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.income_and_expenses
    ADD CONSTRAINT income_and_expenses_pkey PRIMARY KEY ("ID");
 V   ALTER TABLE ONLY public.income_and_expenses DROP CONSTRAINT income_and_expenses_pkey;
       public            postgres    false    268                       2606    33149 "   Types_of_tasks types_of_tasks_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."Types_of_tasks"
    ADD CONSTRAINT types_of_tasks_pkey PRIMARY KEY ("ID");
 N   ALTER TABLE ONLY public."Types_of_tasks" DROP CONSTRAINT types_of_tasks_pkey;
       public            postgres    false    237            #           1259    33331    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            Admin    false    247            (           1259    33272 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            Admin    false    249            +           1259    33273 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            Admin    false    249                       1259    33258 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            Admin    false    245            3           1259    33288 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            Admin    false    253            6           1259    33287 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            Admin    false    253            9           1259    33302 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            Admin    false    255            <           1259    33301 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            Admin    false    255            0           1259    33326     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            Admin    false    251            ?           1259    33322 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            Admin    false    257            B           1259    33323 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            Admin    false    257            C           1259    33340 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            Admin    false    258            F           1259    33339 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            Admin    false    258            X           2606    24901 "   Counterparty Category_counterparty    FK CONSTRAINT     �   ALTER TABLE ONLY public."Counterparty"
    ADD CONSTRAINT "Category_counterparty" FOREIGN KEY ("ID_Category_counterparty") REFERENCES public."Category_counterparty"("ID") NOT VALID;
 P   ALTER TABLE ONLY public."Counterparty" DROP CONSTRAINT "Category_counterparty";
       public          postgres    false    225    231    3343            Y           2606    24936    Project Counterparty    FK CONSTRAINT     �   ALTER TABLE ONLY public."Project"
    ADD CONSTRAINT "Counterparty" FOREIGN KEY ("ID_Counterparty") REFERENCES public."Counterparty"("ID") NOT VALID;
 B   ALTER TABLE ONLY public."Project" DROP CONSTRAINT "Counterparty";
       public          postgres    false    225    3337    227            Z           2606    24921    Events Event_type    FK CONSTRAINT     �   ALTER TABLE ONLY public."Events"
    ADD CONSTRAINT "Event_type" FOREIGN KEY ("ID_Event_type") REFERENCES public."Event_type"("ID") NOT VALID;
 ?   ALTER TABLE ONLY public."Events" DROP CONSTRAINT "Event_type";
       public          postgres    false    3345    233    229            ]           2606    24906    Event_type Events    FK CONSTRAINT     �   ALTER TABLE ONLY public."Event_type"
    ADD CONSTRAINT "Events" FOREIGN KEY ("ID_Events") REFERENCES public."Events"("ID") NOT VALID;
 ?   ALTER TABLE ONLY public."Event_type" DROP CONSTRAINT "Events";
       public          postgres    false    233    3341    229            g           2606    33543    Tasks ID_project    FK CONSTRAINT     ~   ALTER TABLE ONLY public."Tasks"
    ADD CONSTRAINT "ID_project" FOREIGN KEY ("ID_project") REFERENCES public."Project"("ID");
 >   ALTER TABLE ONLY public."Tasks" DROP CONSTRAINT "ID_project";
       public          postgres    false    3339    260    227            h           2606    33548    Tasks ID_types_of_tasks    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tasks"
    ADD CONSTRAINT "ID_types_of_tasks" FOREIGN KEY ("ID_types_of_tasks") REFERENCES public."Types_of_tasks"("ID");
 E   ALTER TABLE ONLY public."Tasks" DROP CONSTRAINT "ID_types_of_tasks";
       public          postgres    false    237    3349    260            U           2606    24931 "   Information_on_receipts Price_list    FK CONSTRAINT     �   ALTER TABLE ONLY public."Information_on_receipts"
    ADD CONSTRAINT "Price_list" FOREIGN KEY ("ID_Price_list") REFERENCES public."Price_list"("ID") NOT VALID;
 P   ALTER TABLE ONLY public."Information_on_receipts" DROP CONSTRAINT "Price_list";
       public          postgres    false    215    221    3327            [           2606    24911    Events Project    FK CONSTRAINT     �   ALTER TABLE ONLY public."Events"
    ADD CONSTRAINT "Project" FOREIGN KEY ("ID_Project") REFERENCES public."Project"("ID") NOT VALID;
 <   ALTER TABLE ONLY public."Events" DROP CONSTRAINT "Project";
       public          postgres    false    3339    227    229            V           2606    24926    Information_on_receipts Project    FK CONSTRAINT     �   ALTER TABLE ONLY public."Information_on_receipts"
    ADD CONSTRAINT "Project" FOREIGN KEY ("ID_Project") REFERENCES public."Project"("ID") NOT VALID;
 M   ALTER TABLE ONLY public."Information_on_receipts" DROP CONSTRAINT "Project";
       public          postgres    false    221    3339    227            Q           2606    24946    User Rights    FK CONSTRAINT     �   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "Rights" FOREIGN KEY ("ID_Rights") REFERENCES public."Rights"("ID") NOT VALID;
 9   ALTER TABLE ONLY public."User" DROP CONSTRAINT "Rights";
       public          postgres    false    219    3335    223            R           2606    24941 
   User Roles    FK CONSTRAINT     ~   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "Roles" FOREIGN KEY ("ID_Roles") REFERENCES public."Roles"("ID") NOT VALID;
 8   ALTER TABLE ONLY public."User" DROP CONSTRAINT "Roles";
       public          postgres    false    219    217    3329            \           2606    24916    Events User    FK CONSTRAINT     }   ALTER TABLE ONLY public."Events"
    ADD CONSTRAINT "User" FOREIGN KEY ("ID_User") REFERENCES public."User"("ID") NOT VALID;
 9   ALTER TABLE ONLY public."Events" DROP CONSTRAINT "User";
       public          postgres    false    219    229    3331            W           2606    33584    Information_on_receipts User    FK CONSTRAINT     �   ALTER TABLE ONLY public."Information_on_receipts"
    ADD CONSTRAINT "User" FOREIGN KEY ("ID_User") REFERENCES public."User"("ID") NOT VALID;
 J   ALTER TABLE ONLY public."Information_on_receipts" DROP CONSTRAINT "User";
       public          postgres    false    221    219    3331            _           2606    33267 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          Admin    false    3362    245    249            `           2606    33262 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          Admin    false    3367    249    247            ^           2606    33253 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          Admin    false    3357    245    243            a           2606    33282 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          Admin    false    3367    247    253            b           2606    33277 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          Admin    false    253    3375    251            c           2606    33296 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          Admin    false    3362    255    245            d           2606    33291 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          Admin    false    251    255    3375            e           2606    33312 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          Admin    false    3357    257    243            f           2606    33317 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          Admin    false    3375    257    251            S           2606    24978    User fk_Device    FK CONSTRAINT     �   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "fk_Device" FOREIGN KEY ("ID_Devices") REFERENCES public."Devices"("ID") NOT VALID;
 <   ALTER TABLE ONLY public."User" DROP CONSTRAINT "fk_Device";
       public          postgres    false    219    3347    235            j           2606    33574    FilesToTasks fk_Files    FK CONSTRAINT        ALTER TABLE ONLY public."FilesToTasks"
    ADD CONSTRAINT "fk_Files" FOREIGN KEY ("ID_Files") REFERENCES public."Files"("ID");
 C   ALTER TABLE ONLY public."FilesToTasks" DROP CONSTRAINT "fk_Files";
       public          postgres    false    264    3402    262            n           2606    49944 .   income_and_expenses fk_Information_on_receipts    FK CONSTRAINT     �   ALTER TABLE ONLY public.income_and_expenses
    ADD CONSTRAINT "fk_Information_on_receipts" FOREIGN KEY ("id_Information_on_receipts") REFERENCES public."Information_on_receipts"("ID");
 Z   ALTER TABLE ONLY public.income_and_expenses DROP CONSTRAINT "fk_Information_on_receipts";
       public          postgres    false    221    3333    268            l           2606    33601    UserToProjects fk_Project    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserToProjects"
    ADD CONSTRAINT "fk_Project" FOREIGN KEY ("ID_Project") REFERENCES public."Project"("ID");
 G   ALTER TABLE ONLY public."UserToProjects" DROP CONSTRAINT "fk_Project";
       public          postgres    false    227    266    3339            T           2606    33166    User fk_Rating    FK CONSTRAINT     �   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "fk_Rating" FOREIGN KEY ("ID_Rating") REFERENCES public."Rating"("ID") NOT VALID;
 <   ALTER TABLE ONLY public."User" DROP CONSTRAINT "fk_Rating";
       public          postgres    false    219    239    3351            k           2606    33569    FilesToTasks fk_Tasks    FK CONSTRAINT        ALTER TABLE ONLY public."FilesToTasks"
    ADD CONSTRAINT "fk_Tasks" FOREIGN KEY ("ID_Tasks") REFERENCES public."Tasks"("ID");
 C   ALTER TABLE ONLY public."FilesToTasks" DROP CONSTRAINT "fk_Tasks";
       public          postgres    false    3400    264    260            i           2606    33579    Files fk_User    FK CONSTRAINT        ALTER TABLE ONLY public."Files"
    ADD CONSTRAINT "fk_User" FOREIGN KEY ("ID_User") REFERENCES public."User"("ID") NOT VALID;
 ;   ALTER TABLE ONLY public."Files" DROP CONSTRAINT "fk_User";
       public          postgres    false    3331    219    262            m           2606    33596    UserToProjects fk_User    FK CONSTRAINT     ~   ALTER TABLE ONLY public."UserToProjects"
    ADD CONSTRAINT "fk_User" FOREIGN KEY ("ID_User") REFERENCES public."User"("ID");
 D   ALTER TABLE ONLY public."UserToProjects" DROP CONSTRAINT "fk_User";
       public          postgres    false    219    266    3331               C  x�mQKN�0]ǧ�HP��QX��p�4EED6H,+n�	5I�\�ś+p�8+����<��'X#��Tr������C2II�B#/8�In�����cjEJng<5�-�
�(Q�*9Ө����XN��z�=e^�I�eA1J8lb�#��q����\$xgT��M��#�{1r~ҷ�;��h��dAj�sîR��_th���QÄ�h��Y���s�\�҉'uH���?�c�<���*e,Y��[{<lO�&����Ȳ�B�TA��FI��p��z��L�%+�'W=�|<Ǌ��-3��2j�gFM��3W�������"�fn��q��M         X   x�3�4�,I-.Q�p����F�Șˈӈ3�8�����.̺�pa���{/컰�jP��|a�ޅ��e�E��H�2F��� �5         +   x�3�t�K)��LQ� ��F��F���@�~uF U\1z\\\ ���            x�3���44�3�466 1,@�=... K�         >   x�3�4����"l�����X��X�Д�����и�81����@�Ȁ����>\�+F��� �$�      -      x������ � �      /      x������ � �            x�3�4���44�36 2�b���� (|�      �      x�3�I-.Q�p�p��qqq 8�	v      
   �   x�3���I-.Q�p���h1202�50�54�44�30༰Y�¬�6\l���¾[�����v�]�|aPf/P�_�Ј�C@����2ѡũETs2��4ҳ���/� 4�&�U���� 8�xM            x�3�4 A.#NC�2�4�4�1z\\\ 3�g            x�3�,A�=... �[             x�3�,A�=... �[      +   '   x�3�I-.Q 	pr���r��q��qqq ��-            x�3�,A�=... �[         M   x�3��Ï���̐��l�,KKKSK3sΒ�Դ��������R�д��*b� ]
ru� 
�)�      1      x������ � �            x������ � �             x������ � �         r  x�]�Mn�0F��)8A5�u�Q�BQ*
�0������
�O����Q�����-۔��<^�(_�J�2|��dZ �v��C������	�jT%��?�s�Ԩ�k.'@�cl�����mIQ��ȸ.YN���U��̓��9z!b�SDP��T" 8.����C� p}jS��8����vpy jڍcX�M�<l�鯖��ݪ
�uu�i��F!�w��ƣ��i�h��I�Ά�� ���EމAτ���z	cY'�R�:դ:���^svD�4�+^;�GZy�H��cJ�~l�v8UZ�t!�LL|ci&,>���D^VD(�Ƕ�?��TN�օ�7�Ћ�"�E7���s��x�Z�A��M      "   �   x�=˻�0@�}
6Bm�r�&&�� �����P���L��$C]��܆{��q�Ni+������5���գ<E��e<��0�<������O��� ꕒG�Ӝ�cZfK�A��ق;�Y���S�Z�z"���U+�Tҏ�V����0-A�8 �`��J0�?W�1�      $      x������ � �      &      x������ � �      (   �  x���MO�@��+,�Z��vf��� UHU�"8Q&Y��`G�AE����lB�bpO�����x�5dH�Pv <n�X!�V�BYƲ��w��}<j��޵����������'�9���(�s7/l���|�f0�,r@�Z!	W(��ε/B�!�
b��P�n���g۬����O,��R�"6���(�PH-W�
�n��q�����rN�Lcl� 8�@�A�
��Ė*�)�B���j溑�_N�[4�T�cq�5\W�Lb�&
�Tq�c]'���Wn�2�5�)g,Dh��qc�T���B�L��@�om���f#����B���=�o���쫦>��n��h�&�{�!s?ˡ�^�\�]�0�W��r O9e�!�@I��/�^�XaiA����S,4�Lqb�I�dbŧ!��R�6��6Z*���H ߶lZ-n�ڏaQA���O� 2��i��*� &��K�3@�H��ݟ1*�Ҕ2>� 4b�Ua�����C| $"��7D��I�7���cfXV������,���d�4��|`�f�e��\qS����a����%���7Ж�5Z�xNo0��k�����L���bU{:�g{!^|͋��G�]�ܹ6\O]�jꮺ^��:v�|Y�n��"-ͧ��d���X���n����O�$l)����4����+Ww���wK�h~����bCY|���p��L&� +�         �   x�UPAr� <��tI��=��`�ڈ8��*�M�I��ew����Lc���k�TB^B΁"����֌W�(��-a~Щ�U��z�������j�Q1Ͳ+��ރCк��M��-�7G��r�\6���|r����צ���*��#��p�ȳMSp�[�G��)E��aH�kN��x�!0-5�b�`Zn~�]>?�i9���Z�zQw���_h�#l��q���>F96|��C4��         �  x���͎� F��S�~�.��������ITl�N��P6UI�6��=����`�n��+�(;�`u_a��"o@~n(n:#��9�J/��@��HJ�J��D$�R�>"X�������fp�F���m��`B։��`Ĝҗ`ݨ�������K4�ͪ��M���w5�J;jԃ�DB�e�(���}0^M�v�SI)���z3v�m�JYQ�3hۿ��\N]����\��¶ `wр
�=3z=�$�ƾ�~{�" ��Pxt��X_�f�*)ہp��R�S��|�޶:8?���W��g����,�H��M9�c����:D"D��&ZI�w�t�"�cx��Z��Ǩɻ���eܑC��M�������G����Y���z���Đ�9VWl|q��`�P~���FU��KP�`qf�c�]�=�N���n�      )   a  x����n�0 ����?���B��u��qS'��$���C9P��oK�{�����]��q���M4�PE5�]i���a*�[T-����۝��P,���c�VIq�($/���������e���B�KZ�~�����HW.��9��]�����ΰ��|�c�.4�W,_����z3�aP��jׇ�)�~��b����X���Y�Oe����]*j���S_�@�r���I����;?S�ؾ���> b!b��������SD���I�jV��,g��BnpX^*'IU�~cQ���&cY����=�o8�u|��M�[x��i� ,W3��ȶ0<b��#0e�aʾ��M'��'�B�k      3   X   x�3��521漰���[/컰E����.�_�za��f�4202�50�5��4��".#N]C� ���r��qqq {0     