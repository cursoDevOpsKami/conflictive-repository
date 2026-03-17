from http.server import BaseHTTPRequestHandler, HTTPServer

class handler(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header('Content-type','text/plain')
        self.end_headers()
        self.wfile.write(b"Hola desde el BACKEND")

server = HTTPServer(('0.0.0.0', 5000), handler)
server.serve_forever()
