# Generated by Django 3.1 on 2020-09-01 08:13

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Customer',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('customer_username', models.CharField(max_length=80)),
                ('customer_firstname', models.CharField(max_length=20)),
                ('customer_lastname', models.CharField(max_length=20)),
                ('customer_email', models.EmailField(max_length=254)),
                ('customer_password', models.CharField(max_length=50)),
            ],
        ),
    ]
