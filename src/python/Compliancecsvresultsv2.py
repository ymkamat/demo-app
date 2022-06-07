import requests

url = "https://api.dome9.com/v2/AssessmentHistoryV2/csv/203203019"
apiKey = "a7c88682-4b11"

# Your API secret
apiSecret ="nxghh3gpmgbaktapj4semxt5"

headers = {
  'Accept': 'application/json',
  'Content-Type': 'application/json'
}

payload = ""
#headers = {
#    'Content-Type': "application/json",
#    'Authorization': "Basic YTdjODg2ODItNGIxMS00NzljLWFlYTAtYzE0OTg2YjliM2ZjOm54Z2hoM2dwbWdiYWt0YXBqNHNlbXh0NQ==",
#    'cache-control': "no-cache",
#   'Postman-Token': "2797a91b-7093-4885-877d-4bfca45e59be"
#   }

response = requests.request("GET", url, data=payload, headers=headers, auth=(apiKey,apiSecret))

print(response.text)
file = open("out.csv", "w")
file.write(response.text)
file.close()
