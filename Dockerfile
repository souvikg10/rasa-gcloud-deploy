FROM rasa/rasa:latest

COPY . .
EXPOSE 5005
CMD ["rasa", "run", "--port $PORT"]