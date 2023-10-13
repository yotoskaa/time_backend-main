from django.contrib import admin

from .models import CategoryCounterparty, Counterparty, Devices, EventType, Events, Graphic, InformationOnReceipts, \
    PriceList, Project, Rating, Rights, Roles, Tasks, TypesOfTasks, User, Usertoprojects, IncomeAndExpenses

admin.site.register(CategoryCounterparty)
admin.site.register(Counterparty)
admin.site.register(Devices)
admin.site.register(EventType)
admin.site.register(Events)
admin.site.register(Graphic)
admin.site.register(InformationOnReceipts)
admin.site.register(PriceList)
admin.site.register(Project)
admin.site.register(Rating)
admin.site.register(Rights)
admin.site.register(Roles)
admin.site.register(Tasks)
admin.site.register(TypesOfTasks)
admin.site.register(User)
admin.site.register(Usertoprojects)
admin.site.register(IncomeAndExpenses)



