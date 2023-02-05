from django.contrib.auth.models import User

annotated = User.objects.annotate()
