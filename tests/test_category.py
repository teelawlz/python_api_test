import unittest
from .chuck_client import ChuckClient

class TestCategory(unittest.TestCase):

  Response = ChuckClient('/jokes/random', {'limitTo': 'nerdy'}).get()

  def test_random_with_category(self):
    self.assertTrue(
      'nerdy' in self.Response.json()['value']['categories']
    )

  def test_status_code(self):
    self.assertEqual(self.Response.status_code, 200)
