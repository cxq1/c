from django.db.models.signals import post_save
from django.dispatch import receiver
from django.utils.html import strip_tags
from django.shortcuts import render
from django.conf import settings
from notifications.signals import notify
from .models import Comment

@receiver(post_save,sender=Comment)
def send_notification(sender,instance,**kwargs):
    if instance.reply_to is None:
        #评论
        recipient = instance.content_object.get_user()
        print(instance)
        if instance.content_type.model =='blog':
            blog = instance.content_object
            verb = '{0}评论了你的《{1}》'.format(instance.user.get_nickname_or_username(),blog.title)
        else:
            raise Exception("unknow commnet object_type")

    else:
        #回复
        recipient = instance.reply_to
        verb="{0}回复了你的评论“{1}”".format(
                instance.user.get_nickname_or_username(),
                strip_tags(instance.parent.text)
            )
    notify.send(instance.user,recipient=recipient,verb =verb,action_object=instance)
