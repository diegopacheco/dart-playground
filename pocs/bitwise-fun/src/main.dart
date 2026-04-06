void main() {
  int a = 0xF0;
  int b = 0x0F;
  print('a = ${a.toRadixString(2).padLeft(8, '0')} (0x${a.toRadixString(16)})');
  print('b = ${b.toRadixString(2).padLeft(8, '0')} (0x${b.toRadixString(16)})');
  print('AND: ${(a & b).toRadixString(2).padLeft(8, '0')}');
  print('OR:  ${(a | b).toRadixString(2).padLeft(8, '0')}');
  print('XOR: ${(a ^ b).toRadixString(2).padLeft(8, '0')}');
  print('NOT a: ${(~a & 0xFF).toRadixString(2).padLeft(8, '0')}');

  int flags = 0;
  const read = 1 << 0;
  const write = 1 << 1;
  const execute = 1 << 2;
  flags = flags | read | write;
  print('Flags: ${flags.toRadixString(2).padLeft(3, '0')}');
  print('Can read? ${(flags & read) != 0}');
  print('Can execute? ${(flags & execute) != 0}');
  flags = flags | execute;
  flags = flags & ~write;
  print('After +exec -write: ${flags.toRadixString(2).padLeft(3, '0')}');

  print('Left shift 1<<4 = ${1 << 4}');
  print('Right shift 64>>2 = ${64 >> 2}');
}
