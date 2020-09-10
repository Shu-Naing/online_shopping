# Generated by Django 3.1.1 on 2020-09-10 14:22

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Brand',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('brand_name', models.CharField(max_length=30)),
            ],
        ),
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('category_name', models.CharField(max_length=80)),
                ('sub_category', models.CharField(max_length=80)),
            ],
        ),
        migrations.CreateModel(
            name='Customer',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('customer_username', models.CharField(max_length=80)),
                ('customer_firstname', models.CharField(blank=True, max_length=20)),
                ('customer_lastname', models.CharField(blank=True, max_length=20)),
                ('customer_dob', models.DateField(blank=True, null=True)),
                ('customer_gender', models.CharField(max_length=9, null=True)),
                ('customer_mobile', models.BigIntegerField(blank=True, null=True)),
                ('customer_email', models.EmailField(max_length=254)),
                ('customer_password', models.CharField(max_length=150)),
                ('customer_lastlogin', models.DateTimeField()),
            ],
        ),
        migrations.CreateModel(
            name='Product',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('product_name', models.CharField(max_length=80)),
                ('product_price', models.DecimalField(decimal_places=2, max_digits=5)),
                ('product_featureImage', models.ImageField(upload_to='featureImage')),
                ('product_description', models.CharField(max_length=100)),
                ('brand_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.brand')),
                ('category_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.category')),
            ],
        ),
    ]
