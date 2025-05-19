import unittest
from flask import Flask, request, redirect

# Mock controller class for isolated login logic
class MockLoginController:
    def login(self):
        if request.method == 'POST':
            username = request.form.get('username')
            password = request.form.get('password')

            if username == 'homeowner@example.com' and password == 'homeowner123@':
                return redirect('/homeowner_dashboard')
            return 'Could Not Sign in. Please Try Again', 401
        return 'Login Page', 200

class TestUserAdminLogin(unittest.TestCase):
    def setUp(self):
        self.app = Flask(__name__)
        self.app.config['TESTING'] = True
        self.app.secret_key = 'test_key'

        @self.app.route('/login/home_owner', methods=['GET', 'POST'])
        def login_route():
            return MockLoginController().login()

        @self.app.route('/homeowner_dashboard')
        def admin_dashboard():
            return "Home Owner Dashboard"

        self.client = self.app.test_client()

    def test_correct_credentials(self):
        response = self.client.post('/login/home_owner',
                                    data={'username': 'homeowner@example.com', 'password': 'homeowner123@'},
                                    follow_redirects=True)
        self.assertEqual(response.status_code, 200)
        self.assertIn(b'Home Owner Dashboard', response.data)
        print("Passed!")

    def test_wrong_password(self):
        response = self.client.post('/login/home_owner',
                                    data={'username': 'homeowner@example.com', 'password': 'wrong'})
        self.assertEqual(response.status_code, 401)
        self.assertIn(b'Could Not Sign in', response.data)
        print("Passed!")

    def test_wrong_username(self):
        response = self.client.post('/login/home_owner',
                                    data={'username': 'wrong@email.com', 'password': 'homeowner123@'})
        self.assertEqual(response.status_code, 401)
        self.assertIn(b'Could Not Sign in', response.data)
        print("Passed!")

if __name__ == '__main__':
    unittest.main(verbosity=0)
