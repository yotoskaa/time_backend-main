# Generated by Django 4.1.7 on 2023-03-13 11:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('drf', '0005_rename_devices_id_device_device_id'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='device',
            name='Device_ID',
        ),
        migrations.AlterField(
            model_name='device',
            name='Push_token',
            field=models.IntegerField(),
        ),
    ]
