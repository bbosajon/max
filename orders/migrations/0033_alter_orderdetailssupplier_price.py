# Generated by Django 3.2.14 on 2023-07-09 05:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('orders', '0032_alter_orderdetails_price'),
    ]

    operations = [
        migrations.AlterField(
            model_name='orderdetailssupplier',
            name='price',
            field=models.DecimalField(decimal_places=2, max_digits=10),
        ),
    ]
