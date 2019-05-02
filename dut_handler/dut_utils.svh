// class contains different utilities- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
class dut_utils extends uvm_object;
    // `uvm_object_utils(dut_utils)

    //bit eq_vec[$];
    string check_str;
    int check_idx;

    extern function new(string name = "dut_utils", uvm_component parent=null);
    extern function string vec2str(vector vec);  // convert 'vector of int' to string
    extern function string map_flt2str(map_flt map);  // convert 'dict of real' to string
    extern function string map_int2str(map_int map);  // convert 'dict of int' to string
    extern function void reset_check();
    extern function void dispaly_check(bit eq);
    extern function string eol(int i);
endclass
// - - - - - - - - - - -  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


function dut_utils::new(string name = "dut_utils", uvm_component parent=null);
    super.new(name);
    reset_check();
endfunction


function string dut_utils::vec2str(vector vec);
    string s = "";
    foreach (vec[i])
        begin
            s = {s, $sformatf("%4d ", vec[i]), eol(i)};
        end
    return s;
endfunction


function string dut_utils::map_flt2str(map_flt map);
    string s = "";
    int i = 0;
    foreach (map[key])
        begin
            s = {s, $sformatf("%.2f ", map[key]), eol(i)};
            i++;
        end
    return s;
endfunction


function string dut_utils::map_int2str(map_int map);
    string s = "";
    int i = 0;
    foreach (map[key])
        begin
            s = {s, $sformatf("%4d ", map[key]), eol(i)};
            i++;
        end
    return s;
endfunction


function void dut_utils::reset_check();
    check_idx = 0;
    check_str = "";
endfunction


function void dut_utils::dispaly_check(bit eq);
    //eq_vec.push_back(eq);
    check_str = {check_str, (eq) ? "____ " : "XXXX ", eol(check_idx)};
    check_idx++;
endfunction


function string dut_utils::eol(int i);
    return ( ( (0 != p_display_line_size) && ( (p_display_line_size-1) == (i % p_display_line_size) ) ) ? "\n" : "" );
endfunction
// - - - - - - - - - - -  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
