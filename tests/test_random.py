import unittest
from chuck_client import ChuckClient

class TestRandom(unittest.TestCase):

  Response = ChuckClient('/jokes/random').get()
  
  def test_random_success(self):
    self.assertEqual(self.Response.json()['type'], 'success')

  def test_random_status_code(self):
    self.assertEqual(self.Response.status_code, 200)
