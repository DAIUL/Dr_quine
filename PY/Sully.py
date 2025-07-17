import os
def main():
	i = 5
	if i <= 0:
		return
	code = 'import os\ndef main():\n\ti = %d\n\tif i <= 0:\n\t\treturn\n\tcode = %r\n\twith open(f"Sully_{i-1}.py", "w") as f:\n\t\tf.write(code %% (i-1, code))\n\tos.system(f"python3 Sully_{i-1}.py")\nif __name__ == "__main__":\n\tmain()'
	with open(f"Sully_{i-1}.py", "w") as f:
		f.write(code % (i-1, code))
	os.system(f"python3 Sully_{i-1}.py")
if __name__ == "__main__":
	main()