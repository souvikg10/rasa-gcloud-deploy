FROM rasa/rasa:2.7

COPY . .
EXPOSE 5005
CMD ["rasa", "run", "--port $PORT"]