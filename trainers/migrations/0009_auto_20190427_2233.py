# Generated by Django 2.2 on 2019-04-27 14:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('trainers', '0008_auto_20190427_2218'),
    ]

    operations = [
        migrations.AlterField(
            model_name='trainer',
            name='trainer_photo',
            field=models.ImageField(blank=True, upload_to='trainers/trainer_photos'),
        ),
    ]
