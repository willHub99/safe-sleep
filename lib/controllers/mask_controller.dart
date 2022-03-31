import 'package:mask_input_formatter/mask_input_formatter.dart';

class MaskController {
  MaskInputFormatter phoneFormatter =
      MaskInputFormatter(mask: '+## (##) ####-####');
  MaskInputFormatter CepFormatter = MaskInputFormatter(mask: '#####-###');
  MaskInputFormatter CpfFormatter = MaskInputFormatter(mask: '###.###.###-##');
}
