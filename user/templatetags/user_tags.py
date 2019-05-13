from urllib.parse import urlencode
from django import template
from django.conf import settings

register = template.Library()

@register.simple_tag
def get_login_qq_url():
    params ={
        'response_type':'code',
        'client_id':settings.QQ_APP_ID, #clent_id 申请QQ登录成功后，分配给应用的appid。
        'redirect_uri':settings.QQ_REDIRECT_URL, #成功授权后的回调地址，必须是注册appid时填写的主域名下的地址，建议设置为网站首页或网站的用户中心。注意需要将url进行URLEncode。
        'state':settings.QQ_STATE,
    }

    return 'https://graph.qq.com/oauth2.0/authorize?' + urlencode(params)