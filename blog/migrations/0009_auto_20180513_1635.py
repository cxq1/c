# Generated by Django 2.0.4 on 2018-05-13 08:35

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0008_auto_20180513_1622'),
    ]

    operations = [
        migrations.RenameField(
            model_name='readnum',
            old_name='get_read_num',
            new_name='read_num',
        ),
    ]
