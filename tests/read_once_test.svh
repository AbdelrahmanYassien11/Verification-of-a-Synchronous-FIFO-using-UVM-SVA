class read_once_test extends base_test;
   `uvm_component_utils(read_once_test);
   
   virtual inf.TEST my_vif;

 

   function new(string name = "read_once_test", uvm_component parent);
      super.new(name, parent);
   endfunction

   function void build_phase(uvm_phase phase);
      base_sequence::type_id::set_type_override(read_once_sequence::type_id::get());
      super.build_phase(phase);
      $display("my_test build phase");
   endfunction

   function void connect_phase(uvm_phase phase);
      super.connect_phase(phase);
      $display("my_test connect phase");
   endfunction
 endclass