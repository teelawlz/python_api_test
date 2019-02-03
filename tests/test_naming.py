import unittest
from .chuck_client import ChuckClient

class TestNaming(unittest.TestCase):

  Response = ChuckClient('/jokes/random', {'firstName': 'Duck', 'lastName': 'Borris'}).get()
  
  def test_random_with_name(self):
    joke = self.Response.json()['value']['joke']
    self.assertTrue('Duck Borris' in joke)
    self.assertFalse('Chuck Norris' in joke)

  def test_status_code(self):
    self.assertEqual(self.Response.status_code, 200)
