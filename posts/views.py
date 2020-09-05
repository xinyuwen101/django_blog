from django.shortcuts import render, redirect
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from taggit.models import Tag

from .models import Post
from .forms import CommentForm


def post_list(request, tag_slug=None):
    if tag_slug:
        tag = Tag.objects.filter(slug=tag_slug).first()
        all_posts = Post.objects.filter(tags__in=[tag])
    else:
        all_posts = Post.objects.all()
    tag_list = Tag.objects.all()
    paginator = Paginator(all_posts, 4)
    page = request.GET.get('page')
    try:
        posts = paginator.page(page)
    except PageNotAnInteger:
        posts = paginator.page(1)
    except EmptyPage:
        posts = paginator.page(paginator.num_pages)

    return render(
        request,
        'posts/list.html',
        {
            'posts': posts,
            'tag_list': tag_list
        }
    )


def post_detail(request, year, month, day, slug):
    posts = Post.objects.filter(
        publish__year=year,
        publish__month=month,
        publish__day=day,
        slug=slug
    ).first()
    comments = posts.comments.filter(active=True)
    new_comment = None

    if request.method == 'POST':
        comment_form = CommentForm(data=request.POST)
        if comment_form.is_valid():
            new_comment = comment_form.save(commit=False)
            new_comment.posts = posts
            new_comment.save()
            return redirect('posts:post_detail', year=year, month=month, day=day, slug=slug)
    else:
        comment_form = CommentForm()
    tag_list = Tag.objects.all()

    return render(
        request,
        'posts/detail.html',
        {
            'posts': posts,
            'comments': comments,
            'new_comment': new_comment,
            'comment_form': comment_form,
            'tag_list': tag_list,
        }
    )
