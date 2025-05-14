FROM public.ecr.aws/lambda/python:3.11

# Define o diretório de trabalho dentro do contêiner
WORKDIR /var/task

# Copia os arquivos da aplicação
COPY app/index.py ./index.py
COPY lambda_functions.py ./lambda_functions.py

# Define o comando padrão de entrada para o Lambda
CMD ["lambda_functions.lambda_handler"]