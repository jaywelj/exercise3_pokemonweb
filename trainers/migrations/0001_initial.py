# Generated by Django 2.2 on 2019-04-25 11:43

import django.core.validators
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Pokemon',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=32)),
                ('type1', models.CharField(choices=[('BUG', 'BUG'), ('DARK', 'DARK'), ('DRAGON', 'DRAGON'), ('ELECTRIC', 'ELECTRIC'), ('FAIRY', 'FAIRY'), ('FIGHTING', 'FIGHTING'), ('FIRE', 'FIRE'), ('FLYING', 'FLYING'), ('GHOST', 'GHOST'), ('GRASS', 'GRASS'), ('GROUND', 'GROUND'), ('ICE', 'ICE'), ('NORMAL', 'NORMAL'), ('POISON', 'POISON'), ('PSYCHIC', 'PSYCHIC'), ('ROCK', 'ROCK'), ('STEEL', 'STEEL'), ('WATER', 'WATER'), ('???', '???')], max_length=10)),
                ('type2', models.CharField(choices=[('BUG', 'BUG'), ('DARK', 'DARK'), ('DRAGON', 'DRAGON'), ('ELECTRIC', 'ELECTRIC'), ('FAIRY', 'FAIRY'), ('FIGHTING', 'FIGHTING'), ('FIRE', 'FIRE'), ('FLYING', 'FLYING'), ('GHOST', 'GHOST'), ('GRASS', 'GRASS'), ('GROUND', 'GROUND'), ('ICE', 'ICE'), ('NORMAL', 'NORMAL'), ('POISON', 'POISON'), ('PSYCHIC', 'PSYCHIC'), ('ROCK', 'ROCK'), ('STEEL', 'STEEL'), ('WATER', 'WATER'), ('???', '???')], max_length=10)),
            ],
        ),
        migrations.CreateModel(
            name='PokemonOwnership',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nickname', models.CharField(max_length=32)),
                ('level', models.IntegerField(validators=[django.core.validators.MinValueValidator(1), django.core.validators.MaxValueValidator(100)])),
                ('sex', models.CharField(choices=[('F', 'FEMALE'), ('M', 'MALE'), ('G', 'GENDERLESS')], max_length=1)),
                ('shiny', models.BooleanField(choices=[(True, 'YES'), (False, 'NO')])),
                ('pokemon', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='trainers.Pokemon')),
            ],
        ),
        migrations.CreateModel(
            name='Trainer',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=32)),
                ('sex', models.CharField(choices=[('F', 'FEMALE'), ('M', 'MALE')], max_length=1)),
                ('pokemons', models.ManyToManyField(through='trainers.PokemonOwnership', to='trainers.Pokemon')),
            ],
        ),
        migrations.AddField(
            model_name='pokemonownership',
            name='trainer',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='trainers.Trainer'),
        ),
    ]
