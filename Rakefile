task :default => :tu

desc "Pruebas unitarias de la clase NumFraccion"
task :tu do
  sh "ruby -I. test/testNunfraccionarios.rb"
end

desc "Ejecutar solo las pruebas simples"
task :simple do
  sh "ruby -I. test/testNunfraccionarios.rb -n /simple/"
end