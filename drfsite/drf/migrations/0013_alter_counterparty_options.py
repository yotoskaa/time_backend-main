# Generated by Django 4.1.7 on 2023-03-15 11:01

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('drf', '0012_alter_counterparty_options'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='counterparty',
            options={'managed': False},
        ),
    ]