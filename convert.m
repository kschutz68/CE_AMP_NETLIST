subcircuit2ssc('CE_subcir.cir','+ce_amp_ckt');
ssc_build ce_amp_ckt;

% add this to generated .ssc file to customize port placement
% annotations
%         in_1 : Side = left;
%         out  : Side = right;
%         vcc  : Side = top;
%         gnd  : Side = bottom; 
%         UILayout = [
%             UIGroup('Parasitic elements', ...
%                     specifyParasiticValues, capacitorSeriesResistance)
%                    ]
% end
