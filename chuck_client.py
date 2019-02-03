import requests

class ChuckClient(object):

  BASE_URL='https://api.icndb.com'

  def __init__(self, endpoint='/', params={}):
    self.endpoint = endpoint
    self.params = params

  def get(self):
    "GET request to specified endpoint"
    r = requests.get(self.BASE_URL + self.endpoint, self.params)
    return r