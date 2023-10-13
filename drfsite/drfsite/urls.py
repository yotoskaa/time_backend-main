"""drfsite URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path

from drf.views import DRFAPIView, PROJECTAPIView, CATEGORYCOUNTERPARTYAPIView, COUNTERPARTYAPIView, DEVICESAPIView, \
    EVENTTYPEAPIView, EVENTSAPIView, GRAPHICAPIView, INFORMATIONONRECEIPTS, PRICELIST, RATING, RIGHTS, ROLES, TASKS, \
    TYPESOFTASKS, USERTOPROJECTS, INCOMEANDEXPENSES

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/v1/userlist/', DRFAPIView.as_view()),
    path('api/v1/projectlist/', PROJECTAPIView.as_view()),
    path('api/v1/categorycounterpartylist/', CATEGORYCOUNTERPARTYAPIView.as_view()),
    path('api/v1/counterpartylist/', COUNTERPARTYAPIView.as_view()),
    path('api/v1/deviceslist/', DEVICESAPIView.as_view()),
    path('api/v1/eventtypelist/', EVENTTYPEAPIView.as_view()),
    path('api/v1/eventslist/', EVENTSAPIView.as_view()),
    path('api/v1/graphiclist/', GRAPHICAPIView.as_view()),
    path('api/v1/informationonreceiptslist/', INFORMATIONONRECEIPTS.as_view()),
    path('api/v1/pricelistlist/', PRICELIST.as_view()),
    path('api/v1/ratinglist/', RATING.as_view()),
    path('api/v1/rightslist/', RIGHTS.as_view()),
    path('api/v1/roleslist/', ROLES.as_view()),
    path('api/v1/taskslist/', TASKS.as_view()),
    path('api/v1/typesoftaskslist/', TYPESOFTASKS.as_view()),
    path('api/v1/usertoprojectslist/', USERTOPROJECTS.as_view()),
    path('api/v1/incomeandexpenseslist/', INCOMEANDEXPENSES.as_view()),
]
