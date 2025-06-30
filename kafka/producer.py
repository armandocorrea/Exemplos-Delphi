from kafka import KafkaProducer

producer = KafkaProducer(bootstrap_servers='localhost:9094')
producer.send('meu-topico', b'Mensagem de teste')
producer.flush()