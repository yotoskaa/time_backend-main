from django.shortcuts import render
from rest_framework import generics

from .models import User, Project, CategoryCounterparty, Counterparty, Devices, EventType, Events, Graphic, \
    InformationOnReceipts, PriceList, Rating, Rights, Roles, Tasks, TypesOfTasks, Usertoprojects, IncomeAndExpenses
from .serializers import UserSerializer, ProjectSerializer, CategoryCounterpartySerializer, CounterpartySerializer, \
    DevicesSerializer, EventTypeSerializer, EventsSerializer, GraphicSerializer, InformationOnReceiptsSerializer, \
    PriceListSerializer, RatingSerializer, RightsSerializer, RolesSerializer, TasksSerializer, TypesOfTasksSerializer, \
    UsertoprojectsSerializer, IncomeAndExpensesSerializer


# Create your views here.
class DRFAPIView(generics.ListAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer

class PROJECTAPIView(generics.ListAPIView):
    queryset = Project.objects.all()
    serializer_class = ProjectSerializer

class CATEGORYCOUNTERPARTYAPIView(generics.ListAPIView):
    queryset = CategoryCounterparty.objects.all()
    serializer_class = CategoryCounterpartySerializer

class COUNTERPARTYAPIView(generics.ListAPIView):
    queryset = Counterparty.objects.all()
    serializer_class = CounterpartySerializer

class DEVICESAPIView(generics.ListAPIView):
    queryset = Devices.objects.all()
    serializer_class = DevicesSerializer

class EVENTTYPEAPIView(generics.ListAPIView):
    queryset = EventType.objects.all()
    serializer_class = EventTypeSerializer

class EVENTSAPIView(generics.ListAPIView):
    queryset = Events.objects.all()
    serializer_class = EventsSerializer

class GRAPHICAPIView(generics.ListAPIView):
    queryset = Graphic.objects.all()
    serializer_class = GraphicSerializer

class INFORMATIONONRECEIPTS(generics.ListAPIView):
    queryset = InformationOnReceipts.objects.all()
    serializer_class = InformationOnReceiptsSerializer

class PRICELIST(generics.ListAPIView):
    queryset = PriceList.objects.all()
    serializer_class = PriceListSerializer

class RATING(generics.ListAPIView):
    queryset = Rating.objects.all()
    serializer_class = RatingSerializer

class RIGHTS(generics.ListAPIView):
    queryset = Rights.objects.all()
    serializer_class = RightsSerializer

class ROLES(generics.ListAPIView):
    queryset = Roles.objects.all()
    serializer_class = RolesSerializer

class TASKS(generics.ListAPIView):
    queryset = Tasks.objects.all()
    serializer_class = TasksSerializer

class TYPESOFTASKS(generics.ListAPIView):
    queryset = TypesOfTasks.objects.all()
    serializer_class = TypesOfTasksSerializer

class USERTOPROJECTS(generics.ListAPIView):
    queryset = Usertoprojects.objects.all()
    serializer_class = UsertoprojectsSerializer

class INCOMEANDEXPENSES(generics.ListAPIView):
    queryset = IncomeAndExpenses.objects.all()
    serializer_class = IncomeAndExpensesSerializer