import serial
import os

class mySer():

	baudrate = 9600
	parity = 'N'
	bytesize = 8
	stopbits = 1
	timeout = None
	cwd = os.getcwd()

	def __init__(self):
		pass

	def gen_mem_file(self, mem_size, mem_file_name='mem_file.txt'):
		
		mem_file = mySer.cwd+'/'+mem_file_name
		f = open(mem_file, 'w')
		for i in range(0, mem_size):
			get_bin = lambda x : format(x, 'b').zfill(mySer.bytesize)
			b = get_bin(i)
			f.write(b)
			f.write('\n')
		f.close()

	def open_serial_port(self, port):
		self.ser = serial.Serial(port=port, baudrate=mySer.baudrate, parity=mySer.parity, stopbits=mySer.stopbits, bytesize=mySer.bytesize, timeout=mySer.timeout)


	def transmit_serial(self, data):
		self.ser.write(str.encode(data))

	def receive_serial(self, bytes):
		self.rx_data = self.ser.read(bytes)
		return self.rx_data 

if __name__== "__main__":
	mem_size=256
	s = mySer()
	s.open_serial_port('/dev/ttyUSB1')
	# s.gen_mem_file(mem_size, mem_file_name='mem_file_in.txt')
	# s.transmit_serial(mem_size)
	# b_i = ['11001100', '10101010', '00001111', '00110011', '01010101', '00000001', '00011000', '11100111', '00111100', '11000011']
	# for i in range(0, mem_size):
	# # 	# b_i = ''
	# # 	# get_bin = lambda x : format(x, '08b')
	# # 	# b = get_bin(i)
	# 	b = b_i[i]
		# s.transmit_serial(b)
	r = s.receive_serial((mem_size*8))
	# print(r)

	i = 0
	path = os.getcwd()
	f = open(path+'/rx_in.txt', 'w')
	while(i <= (mem_size)):
		f.write(str(r[i]))
		f.write('\n')
		i += 1
	f.close()