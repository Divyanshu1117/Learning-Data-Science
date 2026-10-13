# How to use this RAG AI Teaching Assistant on your own data

## Step 1 - Collect your videos
Move all your video files to the `videos/` folder.

## Step 2 - Convert to MP3
Convert all the video files to MP3 by running `video_to_mp3.py`.

## Step 3 - Convert MP3 to JSON
Convert all the MP3 files to JSON by running `mp3_to_json.py`.

## Step 4 - Convert JSON files to vectors
Use `preprocess_json.py` to convert the JSON files into a DataFrame with embeddings and save it as a joblib pickle file.

## Step 5 - Prompt generation and feeding to LLM
Load the joblib file into memory. Then, create a relevant prompt based on the user's query and feed it to the LLM.