# Generated by Django 4.1.7 on 2023-03-14 11:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('drf', '0010_rename_os_device_name_remove_device_push_token_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='AuthGroup',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=150, unique=True)),
            ],
            options={
                'db_table': 'auth_group',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthGroupPermissions',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
            ],
            options={
                'db_table': 'auth_group_permissions',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthPermission',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('codename', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'auth_permission',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthUser',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('password', models.CharField(max_length=128)),
                ('last_login', models.DateTimeField(blank=True, null=True)),
                ('is_superuser', models.BooleanField()),
                ('username', models.CharField(max_length=150, unique=True)),
                ('first_name', models.CharField(max_length=150)),
                ('last_name', models.CharField(max_length=150)),
                ('email', models.CharField(max_length=254)),
                ('is_staff', models.BooleanField()),
                ('is_active', models.BooleanField()),
                ('date_joined', models.DateTimeField()),
            ],
            options={
                'db_table': 'auth_user',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthUserGroups',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
            ],
            options={
                'db_table': 'auth_user_groups',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthUserUserPermissions',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
            ],
            options={
                'db_table': 'auth_user_user_permissions',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='CategoryCounterparty',
            fields=[
                ('id', models.AutoField(db_column='ID', primary_key=True, serialize=False)),
                ('name', models.CharField(blank=True, db_column='Name', max_length=25, null=True)),
                ('description', models.TextField(blank=True, db_column='Description', null=True)),
            ],
            options={
                'db_table': 'Category_counterparty',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Counterparty',
            fields=[
                ('id', models.AutoField(db_column='ID', primary_key=True, serialize=False)),
                ('name', models.CharField(blank=True, db_column='Name', max_length=25, null=True)),
                ('address', models.CharField(blank=True, db_column='Address', max_length=50, null=True)),
                ('telephone', models.DecimalField(blank=True, db_column='Telephone', decimal_places=65535, max_digits=65535, null=True)),
                ('requisites', models.DecimalField(blank=True, db_column='Requisites', decimal_places=65535, max_digits=65535, null=True)),
                ('inn', models.DecimalField(blank=True, db_column='INN', decimal_places=65535, max_digits=65535, null=True)),
                ('kpp', models.DecimalField(blank=True, db_column='KPP', decimal_places=65535, max_digits=65535, null=True)),
            ],
            options={
                'db_table': 'Counterparty',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Devices',
            fields=[
                ('id', models.AutoField(db_column='ID', primary_key=True, serialize=False)),
                ('os', models.CharField(blank=True, db_column='OS', max_length=25, null=True)),
                ('push_token', models.DecimalField(blank=True, db_column='Push_token', decimal_places=65535, max_digits=65535, null=True)),
                ('device_id', models.DecimalField(blank=True, db_column='Device_ID', decimal_places=65535, max_digits=65535, null=True)),
            ],
            options={
                'db_table': 'Devices',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DjangoAdminLog',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('action_time', models.DateTimeField()),
                ('object_id', models.TextField(blank=True, null=True)),
                ('object_repr', models.CharField(max_length=200)),
                ('action_flag', models.SmallIntegerField()),
                ('change_message', models.TextField()),
            ],
            options={
                'db_table': 'django_admin_log',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DjangoContentType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('app_label', models.CharField(max_length=100)),
                ('model', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'django_content_type',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DjangoMigrations',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('app', models.CharField(max_length=255)),
                ('name', models.CharField(max_length=255)),
                ('applied', models.DateTimeField()),
            ],
            options={
                'db_table': 'django_migrations',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DjangoSession',
            fields=[
                ('session_key', models.CharField(max_length=40, primary_key=True, serialize=False)),
                ('session_data', models.TextField()),
                ('expire_date', models.DateTimeField()),
            ],
            options={
                'db_table': 'django_session',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Events',
            fields=[
                ('id', models.AutoField(db_column='ID', primary_key=True, serialize=False)),
                ('name', models.CharField(blank=True, db_column='Name', max_length=25, null=True)),
                ('date', models.DateField(blank=True, db_column='Date', null=True)),
                ('description', models.TextField(blank=True, db_column='Description', null=True)),
                ('sum', models.DecimalField(blank=True, db_column='Sum', decimal_places=65535, max_digits=65535, null=True)),
                ('approved_by_the_customer', models.CharField(blank=True, db_column='Approved_by_the_Customer', max_length=50, null=True)),
            ],
            options={
                'db_table': 'Events',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='EventType',
            fields=[
                ('id', models.AutoField(db_column='ID', primary_key=True, serialize=False)),
                ('cash_receipts', models.DecimalField(blank=True, db_column='Cash_receipts', decimal_places=65535, max_digits=65535, null=True)),
                ('money_transfer', models.DecimalField(blank=True, db_column='Money_transfer', decimal_places=65535, max_digits=65535, null=True)),
            ],
            options={
                'db_table': 'Event_type',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Graphic',
            fields=[
                ('id', models.AutoField(db_column='ID', primary_key=True, serialize=False)),
                ('task_name', models.CharField(blank=True, db_column='Task_Name', max_length=50, null=True)),
                ('date', models.DateField(blank=True, db_column='Date', null=True)),
            ],
            options={
                'db_table': 'Graphic',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='InformationOnReceipts',
            fields=[
                ('id', models.AutoField(db_column='ID', primary_key=True, serialize=False)),
                ('price', models.DecimalField(blank=True, db_column='Price', decimal_places=65535, max_digits=65535, null=True)),
            ],
            options={
                'db_table': 'Information_on_receipts',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='PriceList',
            fields=[
                ('id', models.AutoField(db_column='ID', primary_key=True, serialize=False)),
                ('service', models.CharField(blank=True, db_column='Service', max_length=25, null=True)),
                ('price', models.CharField(blank=True, db_column='Price', max_length=25, null=True)),
            ],
            options={
                'db_table': 'Price_list',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Project',
            fields=[
                ('id', models.AutoField(db_column='ID', primary_key=True, serialize=False)),
                ('name', models.CharField(blank=True, db_column='Name', max_length=25, null=True)),
                ('customer', models.CharField(blank=True, db_column='Customer', max_length=50, null=True)),
                ('responsible', models.CharField(blank=True, db_column='Responsible', max_length=50, null=True)),
                ('deadline', models.DateField(blank=True, db_column='Deadline', null=True)),
                ('area', models.DecimalField(blank=True, db_column='Area', decimal_places=65535, max_digits=65535, null=True)),
                ('address', models.CharField(blank=True, db_column='Address', max_length=50, null=True)),
                ('status', models.TextField(blank=True, db_column='Status', null=True)),
            ],
            options={
                'db_table': 'Project',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Rating',
            fields=[
                ('id', models.AutoField(db_column='ID', primary_key=True, serialize=False)),
                ('evaluation', models.DecimalField(blank=True, db_column='Evaluation', decimal_places=65535, max_digits=65535, null=True)),
                ('id_user_sender', models.DecimalField(blank=True, db_column='ID_User_sender', decimal_places=65535, max_digits=65535, null=True)),
                ('id_user_recipient', models.DecimalField(blank=True, db_column='ID_User_Recipient', decimal_places=65535, max_digits=65535, null=True)),
            ],
            options={
                'db_table': 'Rating',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Rights',
            fields=[
                ('id', models.AutoField(db_column='ID', primary_key=True, serialize=False)),
                ('read', models.BooleanField(blank=True, db_column='Read', null=True)),
                ('write', models.BooleanField(blank=True, db_column='Write', null=True)),
                ('update', models.BooleanField(blank=True, db_column='Update', null=True)),
            ],
            options={
                'db_table': 'Rights',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Roles',
            fields=[
                ('id', models.AutoField(db_column='ID', primary_key=True, serialize=False)),
                ('administrator', models.CharField(blank=True, db_column='Administrator', max_length=10, null=True)),
                ('employee', models.CharField(blank=True, db_column='Employee', max_length=10, null=True)),
                ('user', models.CharField(blank=True, db_column='User', max_length=10, null=True)),
            ],
            options={
                'db_table': 'Roles',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Tasks',
            fields=[
                ('id', models.AutoField(db_column='ID', primary_key=True, serialize=False)),
                ('task_name', models.CharField(blank=True, db_column='Task_name', max_length=1, null=True)),
                ('deadline', models.DateField(blank=True, db_column='Deadline', null=True)),
            ],
            options={
                'db_table': 'Tasks',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='TimeProject',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=255)),
                ('description', models.TextField()),
            ],
            options={
                'db_table': 'Time_project',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='TimeUsers',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'Time_users',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='TypesOfTasks',
            fields=[
                ('id', models.AutoField(db_column='ID', primary_key=True, serialize=False)),
                ('current', models.BooleanField(blank=True, null=True)),
                ('overdue', models.BooleanField(blank=True, null=True)),
                ('completed', models.BooleanField(blank=True, null=True)),
            ],
            options={
                'db_table': 'Types_of_tasks',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='User',
            fields=[
                ('id', models.AutoField(db_column='ID', primary_key=True, serialize=False)),
                ('last_name', models.CharField(blank=True, db_column='Last_name', max_length=25, null=True)),
                ('field_first_name_field', models.CharField(blank=True, db_column=' First_name ', max_length=25, null=True)),
                ('patronymic', models.CharField(blank=True, db_column='Patronymic', max_length=25, null=True)),
                ('telephone', models.DecimalField(blank=True, db_column='Telephone', decimal_places=65535, max_digits=65535, null=True)),
                ('e_mail', models.CharField(blank=True, db_column='E_mail', max_length=50, null=True)),
                ('password', models.CharField(blank=True, db_column='Password', max_length=25, null=True)),
                ('photo', models.TextField(blank=True, db_column='Photo', null=True)),
            ],
            options={
                'db_table': 'User',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Usertoprojects',
            fields=[
                ('id', models.AutoField(db_column='ID', primary_key=True, serialize=False)),
            ],
            options={
                'db_table': 'UserToProjects',
                'managed': False,
            },
        ),
        migrations.DeleteModel(
            name='Device',
        ),
    ]
