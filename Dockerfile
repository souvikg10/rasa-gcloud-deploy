FROM rasa/rasa:latest

COPY . .

# Run the generated shell script.
ENTRYPOINT ["./entrypoint.sh"]
