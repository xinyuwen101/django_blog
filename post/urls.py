from django.urls import path

from . import views


app_name = 'post'
urlpatterns = [
    path('', views.post_list, name='post_list'),
    path(
        '<int:year>/<int:month>/<int:day>/<str:slug>',
        views.post_detail,
        name='post_detail'
    ),
    path('tag/<str:tag_slug>/', views.post_list, name='post_list_by_tag'),
]
