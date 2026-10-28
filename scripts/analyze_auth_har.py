#!/usr/bin/env python3
"""Offline, allowlist-only summary; never replay requests or output bodies/cookies/query values."""
import json
import sys
from urllib.parse import urlsplit, parse_qs

HOSTS = {'account.shabakaty.cc', 'account.shabakaty.com'}
PATHS = {'/', '/core', '/core/', '/core/account/login', '/core/account/externallogin',
         '/core/signin-google', '/core/connect/token', '/core/connect/google', '/core/connect/userinfo'}

def summarize(document):
    rows = []
    for entry in document.get('log', {}).get('entries', []):
        request = entry.get('request', {})
        url = urlsplit(request.get('url', ''))
        host = url.hostname
        status = entry.get('response', {}).get('status', 0)
        status = status if isinstance(status, int) else 0
        if host in HOSTS and url.path in PATHS:
            rows.append({'host': host, 'path': url.path, 'status': status})
        elif host == 'accounts.google.com' and url.path == '/o/oauth2/v2/auth':
            # Compare only fixed callback URLs; no client_id, code, state, email, or error payloads.
            callback = parse_qs(url.query).get('redirect_uri', [''])[0]
            for allowed_host in sorted(HOSTS):
                if callback == 'https://' + allowed_host + '/core/signin-google':
                    rows.append({'stage': 'google_authorize', 'callback_host': allowed_host, 'status': status})
        elif host == 'accounts.google.com' and url.path == '/signin/oauth/error':
            rows.append({'stage': 'google_error_page', 'status': status})
    return rows

if __name__ == '__main__':
    for filename in sys.argv[1:]:
        with open(filename, encoding='utf-8') as source:
            print(json.dumps(summarize(json.load(source)), ensure_ascii=False, indent=2))
