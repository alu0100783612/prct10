require 'spec_helper'
require 'migema.rb'

describe Migema do
  
  before :each do 
    
  @ejemplar = Migema::Migema.new(["Pepe Melao", "Joaquin Sabina","Alberto Vazquez Figueroa"],"La mate por un yogur de coco","no habia de fresa","Yoplait S.L",20,"20 de marzo de 1982",["isbn-20: 23573"],234)
  
  end
  
  
  it 'has a version number' do
    expect(Migema::VERSION).not_to be nil
  end


  
    
end
