from django.db import models

# Create your models here.


class Task(models.Model):
    title = models.CharField(max_length=2000)
    completed = models.BooleanField(default=False)
    tested = models.BooleanField(default=True, null=False)

    def __str__(self):
        return self.title
