require "Fraccion.rb"

describe Fraccion do

	before :each do
	@p1= Fraccion.new(2, 88.0)
	end

	describe " Almacenamiento de numerador y denominador" do
		it "Se almacena el numerador" do
		@p1.num.should eq(2)
		end
		it "Se almacema el denominador" do
		@p1.den.should eq(88.0)
		end
	end

	describe " Devolviendo numerador y denominador" do
		it "Se devuelve el numerador" do
		@p1.num().should eq(2)
		end
		it "Se devuelve el denominador" do
		@p1.den().should eq(88.0)
		end
	end

	describe " Mostrando por la consola la fraccion normal y flotante" do
		it "Se comprueba si se muestra por pantalla de forma normal" do
		@p1.to_s.should eq("2/88.0")
		end
		it "Se comprueba si se muestra por pantalla de forma flotante" do
		@p1.mfloat.should eq("#{@p1.num()/@p1.den()}")
		end
	end

	describe "Comprobando si dos fracciones son iguales" do
		it "comprobando que dos fracciones son iguales" do
		p2 = Fraccion.new(3, 7)
		@p1.==(p2).should eq(false)
		end
	end

	describe "Comprobando el calculo absoluto de una fraccion" do
		it "Calculando valor absoluto" do
		p3 = Fraccion.new(-3,4)
		p3.abs.to_s.should eq("3/4")
		end
	end

	describe "Comprobando el calculo del reciproco" do
		it "Calculando el reciproco" do
		@p1.reciprocal.to_s.should eq("44.0")
		end
	end
	
	describe "Comprobando el calculo del opuesto de una fraccion" do
		it "Opuesto de una fraccion" do
		@p1.-.to_s.should eq("-2/88.0")
		end
	end



	describe "Comprobando que se llega a la forma reducida" do
		it "Forma reducida de la fraccion" do
		@p1.min
		@p1.to_s.should eq("1/44.0")
		end
	end



	describe "Comprobando el resto de la division entre dos fracciones" do
		it "Comprobando el resto" do
		p4 = Fraccion.new(1,4)
		p5 = Fraccion.new(7,3)
		p4.%(p5).should eq(3)
		end
	end



	describe "Comprobando aritmeticas" do
		it "Comprobando suma" do
		p6= Fraccion.new(2, 88)
		p7 = Fraccion.new(2,60)
		p6.+(p7).should eq("37/660")
		end
	

		it "Comprobando resta" do
		p8= Fraccion.new(2, 87)
		p9 = Fraccion.new(2,67)
		p8.-(p9).should eq("-40/5829")
		end


		it "Comprobando multiplicacion" do
		p6= Fraccion.new(2, 88)
		p7 = Fraccion.new(2,60)
		p6.*(p7).min.should eq("1/1320")
		end
	
		it "Comprobando division" do
		p6= Fraccion.new(2, 88)
		p7 = Fraccion.new(2,60)
		p6./(p7).should eq("15/22")
		end
	end

	describe "Comprobando operaciones logicas" do

		it "Comprobando >" do
		p6= Fraccion.new(2, 88)
		p7 = Fraccion.new(2,60)
		p6.>(p7).should eq(false)
		end


		it "Comprobando >=" do
		p6= Fraccion.new(2, 88)
		p7 = Fraccion.new(2,88)
		p6.>=(p7).should eq(true)
		end


		it "Comprobando <=" do
		p6= Fraccion.new(2, 88)
		p7 = Fraccion.new(2,60)
		p6.<=(p7).should eq(true)
		end
	end

	describe "Comprobando operaciones conjuntas" do
		it "Comprobando operacion conjunta" do
		p6= Fraccion.new(1, 2)
		p7 = Fraccion.new(1,2)
		if (p6.%(p7).should eq(0/1))
			p6=p6.-
			p7=p6.*(p7)
			p7.abs.to_s.should eq("1/4")
		end
		end
	end
end

