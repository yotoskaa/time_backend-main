from django.db import models


class CategoryCounterparty(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=25, blank=True, null=True)  # Field name made lowercase.
    description = models.TextField(db_column='Description', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Category_counterparty'


class Counterparty(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    id_category_counterparty = models.ForeignKey(CategoryCounterparty, models.DO_NOTHING, db_column='ID_Category_counterparty', blank=True, null=True)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=25, blank=True, null=True)  # Field name made lowercase.
    address = models.CharField(db_column='Address', max_length=50, blank=True, null=True)  # Field name made lowercase.
    telephone = models.BigIntegerField(db_column='Telephone', blank=True, null=True)  # Field name made lowercase.
    requisites = models.BigIntegerField(db_column='Requisites', blank=True, null=True)  # Field name made lowercase.
    inn = models.BigIntegerField(db_column='INN', blank=True, null=True)  # Field name made lowercase.
    kpp = models.BigIntegerField(db_column='KPP', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Counterparty'



class Devices(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    os = models.CharField(db_column='OS', max_length=25, blank=True, null=True)  # Field name made lowercase.
    push_token = models.BigIntegerField(db_column='Push_token', blank=True, null=True)  # Field name made lowercase.
    device_id = models.BigIntegerField(db_column='Device_ID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Devices'



class EventType(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    id_events = models.ForeignKey('Events', models.DO_NOTHING, db_column='ID_Events', blank=True, null=True)  # Field name made lowercase.
    cash_receipts = models.DecimalField(db_column='Cash_receipts', max_digits=100, decimal_places=5, blank=True, null=True)  # Field name made lowercase.
    money_transfer = models.DecimalField(db_column='Money_transfer', max_digits=100, decimal_places=5, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Event_type'




class Events(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    id_project = models.ForeignKey('Project', models.DO_NOTHING, db_column='ID_Project', blank=True, null=True)  # Field name made lowercase.
    id_user = models.ForeignKey('User', models.DO_NOTHING, db_column='ID_User', blank=True, null=True)  # Field name made lowercase.
    id_event_type = models.ForeignKey(EventType, models.DO_NOTHING, db_column='ID_Event_type', blank=True, null=True)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=25, blank=True, null=True)  # Field name made lowercase.
    date = models.DateField(db_column='Date', blank=True, null=True)  # Field name made lowercase.
    description = models.TextField(db_column='Description', blank=True, null=True)  # Field name made lowercase.
    sum = models.DecimalField(db_column='Sum', max_digits=100, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    approved_by_the_customer = models.CharField(db_column='Approved_by_the_Customer', max_length=50, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Events'



class Graphic(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    task_name = models.CharField(db_column='Task_Name', max_length=50, blank=True, null=True)  # Field name made lowercase.
    date = models.DateField(db_column='Date', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Graphic'


class InformationOnReceipts(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    id_project = models.ForeignKey('Project', models.DO_NOTHING, db_column='ID_Project', blank=True, null=True)  # Field name made lowercase.
    id_price_list = models.ForeignKey('PriceList', models.DO_NOTHING, db_column='ID_Price_list', blank=True, null=True)  # Field name made lowercase.
    price = models.DecimalField(db_column='Price', max_digits=100, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    id_user = models.ForeignKey('User', models.DO_NOTHING, db_column='ID_User', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Information_on_receipts'



class PriceList(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    service = models.CharField(db_column='Service', max_length=25, blank=True, null=True)  # Field name made lowercase.
    price = models.CharField(db_column='Price', max_length=25, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Price_list'


class Project(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    id_counterparty = models.ForeignKey(Counterparty, models.DO_NOTHING, db_column='ID_Counterparty', blank=True, null=True)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=25, blank=True, null=True)  # Field name made lowercase.
    customer = models.CharField(db_column='Customer', max_length=50, blank=True, null=True)  # Field name made lowercase.
    responsible = models.CharField(db_column='Responsible', max_length=50, blank=True, null=True)  # Field name made lowercase.
    deadline = models.DateField(db_column='Deadline', blank=True, null=True)  # Field name made lowercase.
    area = models.DecimalField(db_column='Area', max_digits=100, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    address = models.CharField(db_column='Address', max_length=50, blank=True, null=True)  # Field name made lowercase.
    status = models.TextField(db_column='Status', blank=True, null=True)  # Field name made lowercase.
    id_graphic = models.IntegerField(db_column='ID_Graphic', blank=True, null=True)  # Field name made lowercase.
    isarchived = models.BooleanField(db_column='IsArchived', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Project'



class Rating(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    evaluation = models.BigIntegerField(db_column='Evaluation', blank=True, null=True)  # Field name made lowercase.
    id_user_sender = models.BigIntegerField(db_column='ID_User_sender', blank=True, null=True)  # Field name made lowercase.
    id_user_recipient = models.BigIntegerField(db_column='ID_User_Recipient', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Rating'

class Rights(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    read = models.BooleanField(db_column='Read', blank=True, null=True)  # Field name made lowercase.
    write = models.BooleanField(db_column='Write', blank=True, null=True)  # Field name made lowercase.
    update = models.BooleanField(db_column='Update', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Rights'


class Roles(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    administrator = models.BooleanField(db_column='Administrator', blank=True, null=True)  # Field name made lowercase.
    employee = models.BooleanField(db_column='Employee', blank=True, null=True)  # Field name made lowercase.
    user = models.BooleanField(db_column='User', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Roles'


class Tasks(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    task_name = models.CharField(db_column='Task_name', max_length=50, blank=True, null=True)  # Field name made lowercase.
    id_project = models.ForeignKey(Project, models.DO_NOTHING, db_column='ID_project', blank=True, null=True)  # Field name made lowercase.
    deadline = models.DateField(db_column='Deadline', blank=True, null=True)  # Field name made lowercase.
    id_types_of_tasks = models.ForeignKey('TypesOfTasks', models.DO_NOTHING, db_column='ID_types_of_tasks', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Tasks'


class TypesOfTasks(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    current = models.BooleanField(blank=True, null=True)
    overdue = models.BooleanField(blank=True, null=True)
    completed = models.BooleanField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Types_of_tasks'


class User(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    id_roles = models.ForeignKey(Roles, models.DO_NOTHING, db_column='ID_Roles', blank=True, null=True, related_name = 'права')  # Field name made lowercase.
    id_rights = models.ForeignKey(Rights, models.DO_NOTHING, db_column='ID_Rights', blank=True, null=True)  # Field name made lowercase.
    last_name = models.CharField(db_column='Last_name', max_length=25, blank=True, null=True)  # Field name made lowercase.
    field_first_name_field = models.CharField(db_column=' First_name ', max_length=25, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it started with '_'. Field renamed because it ended with '_'.
    patronymic = models.CharField(db_column='Patronymic', max_length=25, blank=True, null=True)  # Field name made lowercase.
    telephone = models.BigIntegerField(db_column='Telephone', blank=True, null=True)  # Field name made lowercase.
    e_mail = models.CharField(db_column='E_mail', max_length=50, blank=True, null=True)  # Field name made lowercase.
    password = models.CharField(db_column='Password', max_length=25, blank=True, null=True)  # Field name made lowercase.
    id_devices = models.ForeignKey(Devices, models.DO_NOTHING, db_column='ID_Devices', blank=True, null=True)  # Field name made lowercase.
    photo = models.TextField(db_column='Photo', blank=True, null=True)  # Field name made lowercase.
    id_rating = models.ForeignKey(Rating, models.DO_NOTHING, db_column='ID_Rating', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'User'


class Usertoprojects(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    id_user = models.OneToOneField(User, models.DO_NOTHING, db_column='ID_User')  # Field name made lowercase.
    id_projects = models.ForeignKey(Project, models.DO_NOTHING, db_column='ID_Projects', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'UserToProjects'


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.BooleanField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.BooleanField()
    is_active = models.BooleanField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.SmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class IncomeAndExpenses(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    amount = models.IntegerField(db_column='Amount', blank=True, null=True)  # Field name made lowercase.
    purpose = models.CharField(db_column='Purpose', max_length=25, blank=True, null=True)  # Field name made lowercase.
    date = models.DateField(db_column='Date', blank=True, null=True)  # Field name made lowercase.
    id_information_on_receipts = models.ForeignKey(InformationOnReceipts, models.DO_NOTHING, db_column='id_Information_on_receipts', blank=True, null=True)  # Field name made lowercase.
    spend = models.IntegerField(db_column='Spend', blank=True, null=True)  # Field name made lowercase.
    income = models.IntegerField(db_column='Income', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'income_and_expenses'

