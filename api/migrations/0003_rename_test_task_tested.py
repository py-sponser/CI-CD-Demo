# Generated by Django 4.1 on 2023-09-22 12:27

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0002_task_test'),
    ]

    operations = [
        migrations.RenameField(
            model_name='task',
            old_name='test',
            new_name='tested',
        ),
    ]
