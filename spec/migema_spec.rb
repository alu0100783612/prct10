require 'spec_helper'
require 'migema.rb'

describe Migema do
  
  before :each do 
    
  @ejemplar = Migema::Migema.new(["Pepe Melao", "Joaquin Sabina","Alberto Vazquez Figueroa"],"La mate por un yogur de coco","no habia de fresa","Yoplait S.L",20,"20 de marzo de 1982",["isbn-20: 23573"],234)
  
  end
  
  
  it 'has a version number' do
    expect(Migema::VERSION).not_to be nil
  end


  describe "prueba 1: uno o mas autores" do
  
      it 'lista autores' do
    @ejemplar.get_autores.length.should_not be 0
    
    expect(@ejemplar.autores).to eq(["Pepe Melao", "Joaquin Sabina","Alberto Vazquez Figueroa"])
    
      end
    end
  
  describe "prueba 2: titulo del libro" do
    it 'titulo' do
      expect(@ejemplar.titulo).to eq("La mate por un yogur de coco")
      
    end
  end
  
  describe "prueba 3: serie del libro" do
    it 'serie' do
      expect(@ejemplar.serie).to eq("no habia de fresa")
      
    end
  end
  
  describe "prueba 4: editorial del libro" do
    it 'editorial' do
      expect(@ejemplar.editorial).to eq("Yoplait S.L")
      
    end
  end
  
  describe "prueba 5: edicion del libro" do
    it 'edicion' do
      expect(@ejemplar.edicion).to eq(20)
      
    end
  end
  
  describe "prueba 6: fecha del libro" do
    it 'fecha' do
      expect(@ejemplar.fecha).to eq("20 de marzo de 1982")
      
    end
  end
    
    
    
    describe "prueba 7: isbn del libro" do
    it 'isbn' do
      expect(@ejemplar.isbn).to eq("isbn-20: 23573")
      
    end
  end
  
  
  describe "prueba 8: id del libro" do
    it 'id' do
      expect(@ejemplar.id).to eq(234)
      
    end
  end
  
  
  describe "salida formateada del libro" do
    it 'formato' do
      expect(@ejemplar.formato).to eq("Pepe Melao, Joaquin Sabina,Alberto Vazquez Figueroa\nLa mate por un yogur de coco\nno habia de fresa\nYoplait S.L\n20\n20 de marzo de 1982\nisbn-20: 23573\n234")
      
    end
  end
end
