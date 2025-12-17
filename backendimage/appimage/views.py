from rest_framework.views import APIView
from rest_framework.response import Response
from .models import Image

class ImageAPI(APIView):
    def get(self, request):
        img = Image.objects.last()
        if not img:
            return Response({"image": None})
        return Response({
            "image": request.build_absolute_uri(img.file.url)
        })

class Home(APIView):
    def get(self, request):
        return Response({"status": "backend running"})