from urllib.parse import urlencode
from django import template
from django.conf import settings 

register = template.Library()

@register.simple_tag
def get_login_qq_url():
    params={
        'response_type':'code',
        'client_id':settings.QQ_APP_ID,
        'state':settings.QQ_STATE,
        'redirect_uri':settings.QQ_REDIRECT_URL,
    }

    return 'https://graph.qq.com/oauth2.0/authorize?'+urlencode(params)
