module RAM_pantalla (clk, rst, d_in, addr_wr, wr, d_out, addr_rd, rd);
/*			   _____________
	clk	-------->|	    RAM |	
	rst	-------->|		|
			 |  		|
	d_in	-------->|		|				/
	addr_wr   ------>|   pantalla	|				/Variables de escritura
	wr	 ------->|		|				/
		         |  		|
	addr_rd -------->|	   	|-------->	d_out		/Variables de lectura
	rd	-------->|______________|				/
*/

/*
	addr_wr 	[r5 r4 r3 r2 r1 r0 c6 c5 c4 c3 c2 c1 c0]
			6-bit para la fila	7-bit para la columna
			
	addr_rd		[p2 p1 p0 c6 c5 c4 c3 c2 c1 c0]	
			3-bit para la pagina	7-bit para la columna	
*/

	input clk, rst;
	
  	input d_in;				//Valor a escribir
  	input [12:0] addr_wr;			//Dirección en la cual se va a escribir
  	input wr;				//Orden al modulo de escribir

  	output reg [7:0] d_out;			//Valor leido
  	input [9:0] addr_rd;			//Dirección en la que se leyó
  	input rd;				//Orden al modulo de leer
  	
  	// Se declara la memoria RAM, se trata de un arreglo 1024*8 = (128*64) bits de pantalla
  	// y en cada posición de este hay un registro de 8bits
  	reg [0:7] ram [0:7]; // 8-bit x 8-bit RAM
  	
  	initial begin
  		$readmemh("default_RAM.list", ram);
  	end
  	
  	always @(negedge clk) begin
		if (rst == 1'b1) begin
			d_out <= 8'd0;
		end 
		else begin
			if(wr) begin	//Escritura en la memoria
				ram [addr_wr[6:0]] [addr_wr[12:7]] <= d_in;		
			end 		 
			
			if (rd) begin	//Lectura de la memoria
				d_out <= ram [addr_rd[3:0]]; 				
			end 
		end
	end

endmodule
