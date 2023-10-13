# Generated by Django 4.1.7 on 2023-03-13 11:46

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('drf', '0006_remove_device_device_id_alter_device_push_token'),
    ]

    operations = [
        migrations.AddField(
            model_name='device',
            name='Device_ID',
            field=models.IntegerField(null=True),
        ),
        migrations.CreateModel(
            name='User',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Device_ID', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='drf.device')),
            ],
            options={
                'db_table': 'User',
            },
        ),
    ]