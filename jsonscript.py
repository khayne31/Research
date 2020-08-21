import json
import argparse



ap = argparse.ArgumentParser()
ap.add_argument("-m", "--message", required = True,
	help = "message to post to the server")
args = vars(ap.parse_args())
data = {"message": args['message']}
with open('data.json', 'w') as outfile:
	json.dump(data, outfile)