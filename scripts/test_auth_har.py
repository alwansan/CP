import unittest
from analyze_auth_har import summarize

class AuthHarTest(unittest.TestCase):
    def entry(self, url, status=302):
        return {'request': {'url': url, 'headers': [{'name': 'Cookie', 'value': 'SECRET'}],
                            'postData': {'text': 'password=SECRET'}},
                'response': {'status': status, 'content': {'text': 'TOKEN_SECRET'}}}
    def test_browser_cc_error_com_callback(self):
        rows = summarize({'log': {'entries': [
            self.entry('https://account.shabakaty.cc/core/account/externallogin'),
            self.entry('https://accounts.google.com/signin/oauth/error?authError=SECRET', 200),
            self.entry('https://accounts.google.com/o/oauth2/v2/auth?state=SECRET&redirect_uri=https%3A%2F%2Faccount.shabakaty.com%2Fcore%2Fsignin-google'),
            self.entry('https://account.shabakaty.com/core/signin-google?code=SECRET'),
            self.entry('https://account.shabakaty.com/core/', 200)]}})
        self.assertEqual(len(rows), 5)
        self.assertEqual(rows[1]['stage'], 'google_error_page')
        self.assertEqual(rows[2]['callback_host'], 'account.shabakaty.com')
        self.assertEqual(rows[-1]['status'], 200)
        self.assertNotIn('SECRET', str(rows))
    def test_untrusted_hosts_paths_and_redirects_not_logged(self):
        rows = summarize({'log': {'entries': [self.entry(url) for url in [
            'https://account.shabakaty.com.evil.test/core/signin-google',
            'https://account.shabakaty.com/core/SECRET',
            'https://accounts.google.com/o/oauth2/v2/auth?redirect_uri=https://account.shabakaty.com/core/signin-google?code=SECRET',
            'https://other.test/SECRET']]}})
        self.assertEqual(rows, [])
    def test_empty_capture(self):
        self.assertEqual(summarize({}), [])

if __name__ == '__main__':
    unittest.main()
