from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User
from django.urls import reverse

from taggit.managers import TaggableManager


class Post(models.Model):
    STATUS_CHOICES = (
        ('draft', 'Draft'),
        ('published', 'Published'),
    )
    title = models.CharField(max_length=250)
    slug = models.SlugField(max_length=250,
                            unique_for_date='publish')
    author = models.ForeignKey(
        User,
        on_delete=models.CASCADE,
        related_name='blog_posts')
    body = models.TextField()
    publish = models.DateTimeField(default=timezone.now)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    status = models.CharField(
        max_length=10,
        choices=STATUS_CHOICES,
        default='published')
    tags = TaggableManager()

    class Meta:
        ordering = ('publish',)

    def __str__(self):
        return self.title

    def get_url(self):
        return reverse(
            'posts:post_detail',
            args=[
                self.publish.year,
                self.publish.month,
                self.publish.day,
                self.slug
            ]
        )


class Comment(models.Model):
    posts = models.ForeignKey(
        Post,
        on_delete=models.CASCADE,
        related_name='comments'
    )
    username = models.CharField(max_length=120)
    email = models.EmailField(blank=True, null=True)
    body = models.TextField()
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    active = models.BooleanField(default=True)

    class Meta:
        ordering = ('-created',)

    def __str__(self):
        return 'Comment by {} on {}'.format(self.username, self.posts)