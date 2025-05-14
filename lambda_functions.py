import subprocess

def lambda_handler(event, context):
    comando = event.get('comando')
    if comando:
        result = subprocess.run(['python3', comando], capture_output=True, text=True)
        return {
            'stdout': result.stdout,
            'stderr': result.stderr,
            'returncode': result.returncode
        }
    return {'error': 'No comando provided'}