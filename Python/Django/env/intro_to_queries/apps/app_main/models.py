from __future__ import unicode_literals
from django.db import models

class Blog(models.Model):
    title      = models.CharField(max_length=255)
    blog       = models.TextField(max_length=1000)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

class Comment(models.Model):
    comment    = models.TextField(max_length=1000)
    blog_id    = models.ForeignKey(Blog)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)