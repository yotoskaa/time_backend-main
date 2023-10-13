from rest_framework import serializers

from .models import User, Project, CategoryCounterparty, Counterparty, Devices, EventType, Events, Graphic, \
    InformationOnReceipts, PriceList, Rating, Rights, Roles, Tasks, TypesOfTasks, Usertoprojects, IncomeAndExpenses


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('id','id_roles','id_rights','last_name','field_first_name_field','patronymic','telephone','e_mail','password','id_devices','photo','id_rating')

class ProjectSerializer(serializers.ModelSerializer):
    class Meta:
        model = Project
        fields = ('id','id_counterparty','name','customer','responsible','deadline','area','address','status', 'id_graphic')

class CategoryCounterpartySerializer(serializers.ModelSerializer):
    class Meta:
        model = CategoryCounterparty
        fields = ('id','name','description')

class CounterpartySerializer(serializers.ModelSerializer):
    class Meta:
        model = Counterparty
        fields = ('id',' id_category_counterparty','name','address','telephone','requisites','inn','kpp')

class DevicesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Devices
        fields = ('id','os','push_token','device_id')

class EventTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = EventType
        fields = ('id','id_events','cash_receipts','money_transfer')

class EventsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Events
        fields = ('id','id_project','id_user','id_event_type','name','date','description','sum','approved_by_the_customer')

class GraphicSerializer(serializers.ModelSerializer):
    class Meta:
        model = Graphic
        fields = ('id','task_name','date')

class InformationOnReceiptsSerializer(serializers.ModelSerializer):
    class Meta:
        model = InformationOnReceipts
        fields = ('id','id_project','id_user','id_price_list','price')

class PriceListSerializer(serializers.ModelSerializer):
    class Meta:
        model = PriceList
        fields = ('id','service','price')

class RatingSerializer(serializers.ModelSerializer):
    class Meta:
        model = Rating
        fields = ('id','evaluation','id_user_sender','id_user_recipient')

class RightsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Rights
        fields = ('id','read','write','update')

class RolesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Roles
        fields = ('id','administrator','employee','user')

class TasksSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tasks
        fields = ('id','task_name','id_project','deadline','id_types_of_tasks')

class TypesOfTasksSerializer(serializers.ModelSerializer):
    class Meta:
        model = TypesOfTasks
        fields = ('id','current','overdue','completed')

class UsertoprojectsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Usertoprojects
        fields = ('id','id_user','id_projects')

class IncomeAndExpensesSerializer(serializers.ModelSerializer):
    class Meta:
        model = IncomeAndExpenses
        fields = ('id','amount','purpose','date','id_information_on_receipts','spend','income')