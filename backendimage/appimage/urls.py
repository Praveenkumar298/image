from django.urls import path
from .views import ImageAPI, Home

urlpatterns = [
    path("", Home.as_view()),
    path("image/", ImageAPI.as_view()),
]

