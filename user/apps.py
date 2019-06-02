from django.apps import AppConfig


class BlogConfig(AppConfig):
    name = 'user'

    def ready(self):
        super(BlogConfig,self).ready()
        from . import signals
