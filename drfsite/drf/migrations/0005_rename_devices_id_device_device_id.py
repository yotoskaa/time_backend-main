# Generated by Django 4.1.7 on 2023-03-13 11:31

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('drf', '0004_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='device',
            old_name='Devices_ID',
            new_name='Device_ID',
        ),
    ]
