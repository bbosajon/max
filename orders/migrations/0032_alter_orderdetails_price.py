# Generated by Django 3.2.14 on 2023-07-08 20:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('orders', '0031_auto_20220814_0432'),
    ]

    operations = [
        migrations.AlterField(
            model_name='orderdetails',
            name='price',
            field=models.DecimalField(decimal_places=2, max_digits=10),
        ),
    ]