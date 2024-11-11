from django.contrib.auth.models import User
from django.db import models

class Recipe(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True)  # Temporarily nullable
    recipe_name = models.CharField(max_length=255)
    category = models.CharField(max_length=100)
    ingredients = models.TextField()
    description = models.TextField()
    image = models.ImageField(upload_to='')  # Set images to save in media folder
    time = models.IntegerField(help_text="Time required for the recipe in minutes")  # Field for time
    created_at = models.DateTimeField(auto_now_add=True)
