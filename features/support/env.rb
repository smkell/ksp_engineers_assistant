require 'aruba/cucumber'
require 'aruba/in_process'
require 'ksp_engineers_assistant/runner'

Aruba::InProcess.main_class = KEA::Runner
Aruba.process = Aruba::InProcess
