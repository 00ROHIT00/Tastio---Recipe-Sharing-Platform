# Generated by Django 5.1.2 on 2024-11-19 04:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('MyApp', '0004_savedrecipe'),
    ]

    operations = [
        migrations.AlterField(
            model_name='recipe',
            name='time',
            field=models.CharField(help_text="Time required for the recipe (e.g., '30 minutes')", max_length=100),
        ),
    ]
