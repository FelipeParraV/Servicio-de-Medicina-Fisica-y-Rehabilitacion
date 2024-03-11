import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _numeroPacientes =
          prefs.getStringList('ff_numeroPacientes')?.map(int.parse).toList() ??
              _numeroPacientes;
    });
    _safeInit(() {
      _listaNombres = prefs.getStringList('ff_listaNombres') ?? _listaNombres;
    });
    _safeInit(() {
      _listaApellidos =
          prefs.getStringList('ff_listaApellidos') ?? _listaApellidos;
    });
    _safeInit(() {
      _listaRuts = prefs.getStringList('ff_listaRuts') ?? _listaRuts;
    });
    _safeInit(() {
      _listaFechas = prefs
              .getStringList('ff_listaFechas')
              ?.map((x) => DateTime.fromMillisecondsSinceEpoch(int.parse(x)))
              .toList() ??
          _listaFechas;
    });
    _safeInit(() {
      _listaSexos = prefs.getStringList('ff_listaSexos') ?? _listaSexos;
    });
    _safeInit(() {
      _listaTelefonos =
          prefs.getStringList('ff_listaTelefonos') ?? _listaTelefonos;
    });
    _safeInit(() {
      _listaDirecciones =
          prefs.getStringList('ff_listaDirecciones') ?? _listaDirecciones;
    });
    _safeInit(() {
      _listaBerg =
          prefs.getStringList('ff_listaBerg')?.map(int.parse).toList() ??
              _listaBerg;
    });
    _safeInit(() {
      _listaBarthel =
          prefs.getStringList('ff_listaBarthel')?.map(int.parse).toList() ??
              _listaBarthel;
    });
    _safeInit(() {
      _listaTinetti =
          prefs.getStringList('ff_listaTinetti')?.map(int.parse).toList() ??
              _listaTinetti;
    });
    _safeInit(() {
      _listaFIM = prefs.getStringList('ff_listaFIM')?.map(int.parse).toList() ??
          _listaFIM;
    });
    _safeInit(() {
      _listaSchwab =
          prefs.getStringList('ff_listaSchwab')?.map(int.parse).toList() ??
              _listaSchwab;
    });
    _safeInit(() {
      _borrarRetroceder =
          prefs.getInt('ff_borrarRetroceder') ?? _borrarRetroceder;
    });
    _safeInit(() {
      _puntajeEquilibrio = prefs
              .getStringList('ff_puntajeEquilibrio')
              ?.map(int.parse)
              .toList() ??
          _puntajeEquilibrio;
    });
    _safeInit(() {
      _puntajeMarcha =
          prefs.getStringList('ff_puntajeMarcha')?.map(int.parse).toList() ??
              _puntajeMarcha;
    });
    _safeInit(() {
      _FIMmotor = prefs.getStringList('ff_FIMmotor')?.map(int.parse).toList() ??
          _FIMmotor;
    });
    _safeInit(() {
      _FIMcognitivo =
          prefs.getStringList('ff_FIMcognitivo')?.map(int.parse).toList() ??
              _FIMcognitivo;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _visible = false;
  bool get visible => _visible;
  set visible(bool _value) {
    _visible = _value;
  }

  int _pregunta1 = 0;
  int get pregunta1 => _pregunta1;
  set pregunta1(int _value) {
    _pregunta1 = _value;
  }

  int _pregunta2 = 0;
  int get pregunta2 => _pregunta2;
  set pregunta2(int _value) {
    _pregunta2 = _value;
  }

  int _pregunta3 = 0;
  int get pregunta3 => _pregunta3;
  set pregunta3(int _value) {
    _pregunta3 = _value;
  }

  int _pregunta4 = 0;
  int get pregunta4 => _pregunta4;
  set pregunta4(int _value) {
    _pregunta4 = _value;
  }

  int _pregunta5 = 0;
  int get pregunta5 => _pregunta5;
  set pregunta5(int _value) {
    _pregunta5 = _value;
  }

  int _pregunta6 = 0;
  int get pregunta6 => _pregunta6;
  set pregunta6(int _value) {
    _pregunta6 = _value;
  }

  int _pregunta7 = 0;
  int get pregunta7 => _pregunta7;
  set pregunta7(int _value) {
    _pregunta7 = _value;
  }

  int _pregunta8 = 0;
  int get pregunta8 => _pregunta8;
  set pregunta8(int _value) {
    _pregunta8 = _value;
  }

  int _pregunta9 = 0;
  int get pregunta9 => _pregunta9;
  set pregunta9(int _value) {
    _pregunta9 = _value;
  }

  int _pregunta10 = 0;
  int get pregunta10 => _pregunta10;
  set pregunta10(int _value) {
    _pregunta10 = _value;
  }

  bool _cargandoDatos = false;
  bool get cargandoDatos => _cargandoDatos;
  set cargandoDatos(bool _value) {
    _cargandoDatos = _value;
  }

  bool _cargandoResultados = false;
  bool get cargandoResultados => _cargandoResultados;
  set cargandoResultados(bool _value) {
    _cargandoResultados = _value;
  }

  bool _botonHabilitado1 = false;
  bool get botonHabilitado1 => _botonHabilitado1;
  set botonHabilitado1(bool _value) {
    _botonHabilitado1 = _value;
  }

  bool _botonHabilitado2 = false;
  bool get botonHabilitado2 => _botonHabilitado2;
  set botonHabilitado2(bool _value) {
    _botonHabilitado2 = _value;
  }

  bool _botonHabilitado3 = false;
  bool get botonHabilitado3 => _botonHabilitado3;
  set botonHabilitado3(bool _value) {
    _botonHabilitado3 = _value;
  }

  bool _botonHabilitado4 = false;
  bool get botonHabilitado4 => _botonHabilitado4;
  set botonHabilitado4(bool _value) {
    _botonHabilitado4 = _value;
  }

  bool _botonHabilitado5 = false;
  bool get botonHabilitado5 => _botonHabilitado5;
  set botonHabilitado5(bool _value) {
    _botonHabilitado5 = _value;
  }

  bool _telefonoCheck = false;
  bool get telefonoCheck => _telefonoCheck;
  set telefonoCheck(bool _value) {
    _telefonoCheck = _value;
  }

  bool _direccionCheck = false;
  bool get direccionCheck => _direccionCheck;
  set direccionCheck(bool _value) {
    _direccionCheck = _value;
  }

  bool _bergCheck = false;
  bool get bergCheck => _bergCheck;
  set bergCheck(bool _value) {
    _bergCheck = _value;
  }

  bool _barthelCheck = false;
  bool get barthelCheck => _barthelCheck;
  set barthelCheck(bool _value) {
    _barthelCheck = _value;
  }

  bool _tinettiCheck = false;
  bool get tinettiCheck => _tinettiCheck;
  set tinettiCheck(bool _value) {
    _tinettiCheck = _value;
  }

  bool _FIMCheck = false;
  bool get FIMCheck => _FIMCheck;
  set FIMCheck(bool _value) {
    _FIMCheck = _value;
  }

  bool _schwabCheck = false;
  bool get schwabCheck => _schwabCheck;
  set schwabCheck(bool _value) {
    _schwabCheck = _value;
  }

  bool _equilibrioCheck = false;
  bool get equilibrioCheck => _equilibrioCheck;
  set equilibrioCheck(bool _value) {
    _equilibrioCheck = _value;
  }

  bool _marchaCheck = false;
  bool get marchaCheck => _marchaCheck;
  set marchaCheck(bool _value) {
    _marchaCheck = _value;
  }

  bool _motorCheck = false;
  bool get motorCheck => _motorCheck;
  set motorCheck(bool _value) {
    _motorCheck = _value;
  }

  bool _cognitivoCheck = false;
  bool get cognitivoCheck => _cognitivoCheck;
  set cognitivoCheck(bool _value) {
    _cognitivoCheck = _value;
  }

  Color _colorCheck = Color(4294967295);
  Color get colorCheck => _colorCheck;
  set colorCheck(Color _value) {
    _colorCheck = _value;
  }

  int _menosUno = -1;
  int get menosUno => _menosUno;
  set menosUno(int _value) {
    _menosUno = _value;
  }

  List<int> _numeroPacientes = [];
  List<int> get numeroPacientes => _numeroPacientes;
  set numeroPacientes(List<int> _value) {
    _numeroPacientes = _value;
    prefs.setStringList(
        'ff_numeroPacientes', _value.map((x) => x.toString()).toList());
  }

  void addToNumeroPacientes(int _value) {
    _numeroPacientes.add(_value);
    prefs.setStringList('ff_numeroPacientes',
        _numeroPacientes.map((x) => x.toString()).toList());
  }

  void removeFromNumeroPacientes(int _value) {
    _numeroPacientes.remove(_value);
    prefs.setStringList('ff_numeroPacientes',
        _numeroPacientes.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromNumeroPacientes(int _index) {
    _numeroPacientes.removeAt(_index);
    prefs.setStringList('ff_numeroPacientes',
        _numeroPacientes.map((x) => x.toString()).toList());
  }

  void updateNumeroPacientesAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _numeroPacientes[_index] = updateFn(_numeroPacientes[_index]);
    prefs.setStringList('ff_numeroPacientes',
        _numeroPacientes.map((x) => x.toString()).toList());
  }

  void insertAtIndexInNumeroPacientes(int _index, int _value) {
    _numeroPacientes.insert(_index, _value);
    prefs.setStringList('ff_numeroPacientes',
        _numeroPacientes.map((x) => x.toString()).toList());
  }

  List<String> _listaNombres = [];
  List<String> get listaNombres => _listaNombres;
  set listaNombres(List<String> _value) {
    _listaNombres = _value;
    prefs.setStringList('ff_listaNombres', _value);
  }

  void addToListaNombres(String _value) {
    _listaNombres.add(_value);
    prefs.setStringList('ff_listaNombres', _listaNombres);
  }

  void removeFromListaNombres(String _value) {
    _listaNombres.remove(_value);
    prefs.setStringList('ff_listaNombres', _listaNombres);
  }

  void removeAtIndexFromListaNombres(int _index) {
    _listaNombres.removeAt(_index);
    prefs.setStringList('ff_listaNombres', _listaNombres);
  }

  void updateListaNombresAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _listaNombres[_index] = updateFn(_listaNombres[_index]);
    prefs.setStringList('ff_listaNombres', _listaNombres);
  }

  void insertAtIndexInListaNombres(int _index, String _value) {
    _listaNombres.insert(_index, _value);
    prefs.setStringList('ff_listaNombres', _listaNombres);
  }

  List<String> _listaApellidos = [];
  List<String> get listaApellidos => _listaApellidos;
  set listaApellidos(List<String> _value) {
    _listaApellidos = _value;
    prefs.setStringList('ff_listaApellidos', _value);
  }

  void addToListaApellidos(String _value) {
    _listaApellidos.add(_value);
    prefs.setStringList('ff_listaApellidos', _listaApellidos);
  }

  void removeFromListaApellidos(String _value) {
    _listaApellidos.remove(_value);
    prefs.setStringList('ff_listaApellidos', _listaApellidos);
  }

  void removeAtIndexFromListaApellidos(int _index) {
    _listaApellidos.removeAt(_index);
    prefs.setStringList('ff_listaApellidos', _listaApellidos);
  }

  void updateListaApellidosAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _listaApellidos[_index] = updateFn(_listaApellidos[_index]);
    prefs.setStringList('ff_listaApellidos', _listaApellidos);
  }

  void insertAtIndexInListaApellidos(int _index, String _value) {
    _listaApellidos.insert(_index, _value);
    prefs.setStringList('ff_listaApellidos', _listaApellidos);
  }

  List<String> _listaRuts = [];
  List<String> get listaRuts => _listaRuts;
  set listaRuts(List<String> _value) {
    _listaRuts = _value;
    prefs.setStringList('ff_listaRuts', _value);
  }

  void addToListaRuts(String _value) {
    _listaRuts.add(_value);
    prefs.setStringList('ff_listaRuts', _listaRuts);
  }

  void removeFromListaRuts(String _value) {
    _listaRuts.remove(_value);
    prefs.setStringList('ff_listaRuts', _listaRuts);
  }

  void removeAtIndexFromListaRuts(int _index) {
    _listaRuts.removeAt(_index);
    prefs.setStringList('ff_listaRuts', _listaRuts);
  }

  void updateListaRutsAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _listaRuts[_index] = updateFn(_listaRuts[_index]);
    prefs.setStringList('ff_listaRuts', _listaRuts);
  }

  void insertAtIndexInListaRuts(int _index, String _value) {
    _listaRuts.insert(_index, _value);
    prefs.setStringList('ff_listaRuts', _listaRuts);
  }

  List<DateTime> _listaFechas = [];
  List<DateTime> get listaFechas => _listaFechas;
  set listaFechas(List<DateTime> _value) {
    _listaFechas = _value;
    prefs.setStringList('ff_listaFechas',
        _value.map((x) => x.millisecondsSinceEpoch.toString()).toList());
  }

  void addToListaFechas(DateTime _value) {
    _listaFechas.add(_value);
    prefs.setStringList('ff_listaFechas',
        _listaFechas.map((x) => x.millisecondsSinceEpoch.toString()).toList());
  }

  void removeFromListaFechas(DateTime _value) {
    _listaFechas.remove(_value);
    prefs.setStringList('ff_listaFechas',
        _listaFechas.map((x) => x.millisecondsSinceEpoch.toString()).toList());
  }

  void removeAtIndexFromListaFechas(int _index) {
    _listaFechas.removeAt(_index);
    prefs.setStringList('ff_listaFechas',
        _listaFechas.map((x) => x.millisecondsSinceEpoch.toString()).toList());
  }

  void updateListaFechasAtIndex(
    int _index,
    DateTime Function(DateTime) updateFn,
  ) {
    _listaFechas[_index] = updateFn(_listaFechas[_index]);
    prefs.setStringList('ff_listaFechas',
        _listaFechas.map((x) => x.millisecondsSinceEpoch.toString()).toList());
  }

  void insertAtIndexInListaFechas(int _index, DateTime _value) {
    _listaFechas.insert(_index, _value);
    prefs.setStringList('ff_listaFechas',
        _listaFechas.map((x) => x.millisecondsSinceEpoch.toString()).toList());
  }

  List<String> _listaSexos = [];
  List<String> get listaSexos => _listaSexos;
  set listaSexos(List<String> _value) {
    _listaSexos = _value;
    prefs.setStringList('ff_listaSexos', _value);
  }

  void addToListaSexos(String _value) {
    _listaSexos.add(_value);
    prefs.setStringList('ff_listaSexos', _listaSexos);
  }

  void removeFromListaSexos(String _value) {
    _listaSexos.remove(_value);
    prefs.setStringList('ff_listaSexos', _listaSexos);
  }

  void removeAtIndexFromListaSexos(int _index) {
    _listaSexos.removeAt(_index);
    prefs.setStringList('ff_listaSexos', _listaSexos);
  }

  void updateListaSexosAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _listaSexos[_index] = updateFn(_listaSexos[_index]);
    prefs.setStringList('ff_listaSexos', _listaSexos);
  }

  void insertAtIndexInListaSexos(int _index, String _value) {
    _listaSexos.insert(_index, _value);
    prefs.setStringList('ff_listaSexos', _listaSexos);
  }

  List<String> _listaTelefonos = [];
  List<String> get listaTelefonos => _listaTelefonos;
  set listaTelefonos(List<String> _value) {
    _listaTelefonos = _value;
    prefs.setStringList('ff_listaTelefonos', _value);
  }

  void addToListaTelefonos(String _value) {
    _listaTelefonos.add(_value);
    prefs.setStringList('ff_listaTelefonos', _listaTelefonos);
  }

  void removeFromListaTelefonos(String _value) {
    _listaTelefonos.remove(_value);
    prefs.setStringList('ff_listaTelefonos', _listaTelefonos);
  }

  void removeAtIndexFromListaTelefonos(int _index) {
    _listaTelefonos.removeAt(_index);
    prefs.setStringList('ff_listaTelefonos', _listaTelefonos);
  }

  void updateListaTelefonosAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _listaTelefonos[_index] = updateFn(_listaTelefonos[_index]);
    prefs.setStringList('ff_listaTelefonos', _listaTelefonos);
  }

  void insertAtIndexInListaTelefonos(int _index, String _value) {
    _listaTelefonos.insert(_index, _value);
    prefs.setStringList('ff_listaTelefonos', _listaTelefonos);
  }

  List<String> _listaDirecciones = [];
  List<String> get listaDirecciones => _listaDirecciones;
  set listaDirecciones(List<String> _value) {
    _listaDirecciones = _value;
    prefs.setStringList('ff_listaDirecciones', _value);
  }

  void addToListaDirecciones(String _value) {
    _listaDirecciones.add(_value);
    prefs.setStringList('ff_listaDirecciones', _listaDirecciones);
  }

  void removeFromListaDirecciones(String _value) {
    _listaDirecciones.remove(_value);
    prefs.setStringList('ff_listaDirecciones', _listaDirecciones);
  }

  void removeAtIndexFromListaDirecciones(int _index) {
    _listaDirecciones.removeAt(_index);
    prefs.setStringList('ff_listaDirecciones', _listaDirecciones);
  }

  void updateListaDireccionesAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _listaDirecciones[_index] = updateFn(_listaDirecciones[_index]);
    prefs.setStringList('ff_listaDirecciones', _listaDirecciones);
  }

  void insertAtIndexInListaDirecciones(int _index, String _value) {
    _listaDirecciones.insert(_index, _value);
    prefs.setStringList('ff_listaDirecciones', _listaDirecciones);
  }

  List<int> _listaBerg = [];
  List<int> get listaBerg => _listaBerg;
  set listaBerg(List<int> _value) {
    _listaBerg = _value;
    prefs.setStringList(
        'ff_listaBerg', _value.map((x) => x.toString()).toList());
  }

  void addToListaBerg(int _value) {
    _listaBerg.add(_value);
    prefs.setStringList(
        'ff_listaBerg', _listaBerg.map((x) => x.toString()).toList());
  }

  void removeFromListaBerg(int _value) {
    _listaBerg.remove(_value);
    prefs.setStringList(
        'ff_listaBerg', _listaBerg.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromListaBerg(int _index) {
    _listaBerg.removeAt(_index);
    prefs.setStringList(
        'ff_listaBerg', _listaBerg.map((x) => x.toString()).toList());
  }

  void updateListaBergAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _listaBerg[_index] = updateFn(_listaBerg[_index]);
    prefs.setStringList(
        'ff_listaBerg', _listaBerg.map((x) => x.toString()).toList());
  }

  void insertAtIndexInListaBerg(int _index, int _value) {
    _listaBerg.insert(_index, _value);
    prefs.setStringList(
        'ff_listaBerg', _listaBerg.map((x) => x.toString()).toList());
  }

  List<int> _listaBarthel = [];
  List<int> get listaBarthel => _listaBarthel;
  set listaBarthel(List<int> _value) {
    _listaBarthel = _value;
    prefs.setStringList(
        'ff_listaBarthel', _value.map((x) => x.toString()).toList());
  }

  void addToListaBarthel(int _value) {
    _listaBarthel.add(_value);
    prefs.setStringList(
        'ff_listaBarthel', _listaBarthel.map((x) => x.toString()).toList());
  }

  void removeFromListaBarthel(int _value) {
    _listaBarthel.remove(_value);
    prefs.setStringList(
        'ff_listaBarthel', _listaBarthel.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromListaBarthel(int _index) {
    _listaBarthel.removeAt(_index);
    prefs.setStringList(
        'ff_listaBarthel', _listaBarthel.map((x) => x.toString()).toList());
  }

  void updateListaBarthelAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _listaBarthel[_index] = updateFn(_listaBarthel[_index]);
    prefs.setStringList(
        'ff_listaBarthel', _listaBarthel.map((x) => x.toString()).toList());
  }

  void insertAtIndexInListaBarthel(int _index, int _value) {
    _listaBarthel.insert(_index, _value);
    prefs.setStringList(
        'ff_listaBarthel', _listaBarthel.map((x) => x.toString()).toList());
  }

  List<int> _listaTinetti = [];
  List<int> get listaTinetti => _listaTinetti;
  set listaTinetti(List<int> _value) {
    _listaTinetti = _value;
    prefs.setStringList(
        'ff_listaTinetti', _value.map((x) => x.toString()).toList());
  }

  void addToListaTinetti(int _value) {
    _listaTinetti.add(_value);
    prefs.setStringList(
        'ff_listaTinetti', _listaTinetti.map((x) => x.toString()).toList());
  }

  void removeFromListaTinetti(int _value) {
    _listaTinetti.remove(_value);
    prefs.setStringList(
        'ff_listaTinetti', _listaTinetti.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromListaTinetti(int _index) {
    _listaTinetti.removeAt(_index);
    prefs.setStringList(
        'ff_listaTinetti', _listaTinetti.map((x) => x.toString()).toList());
  }

  void updateListaTinettiAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _listaTinetti[_index] = updateFn(_listaTinetti[_index]);
    prefs.setStringList(
        'ff_listaTinetti', _listaTinetti.map((x) => x.toString()).toList());
  }

  void insertAtIndexInListaTinetti(int _index, int _value) {
    _listaTinetti.insert(_index, _value);
    prefs.setStringList(
        'ff_listaTinetti', _listaTinetti.map((x) => x.toString()).toList());
  }

  List<int> _listaFIM = [];
  List<int> get listaFIM => _listaFIM;
  set listaFIM(List<int> _value) {
    _listaFIM = _value;
    prefs.setStringList(
        'ff_listaFIM', _value.map((x) => x.toString()).toList());
  }

  void addToListaFIM(int _value) {
    _listaFIM.add(_value);
    prefs.setStringList(
        'ff_listaFIM', _listaFIM.map((x) => x.toString()).toList());
  }

  void removeFromListaFIM(int _value) {
    _listaFIM.remove(_value);
    prefs.setStringList(
        'ff_listaFIM', _listaFIM.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromListaFIM(int _index) {
    _listaFIM.removeAt(_index);
    prefs.setStringList(
        'ff_listaFIM', _listaFIM.map((x) => x.toString()).toList());
  }

  void updateListaFIMAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _listaFIM[_index] = updateFn(_listaFIM[_index]);
    prefs.setStringList(
        'ff_listaFIM', _listaFIM.map((x) => x.toString()).toList());
  }

  void insertAtIndexInListaFIM(int _index, int _value) {
    _listaFIM.insert(_index, _value);
    prefs.setStringList(
        'ff_listaFIM', _listaFIM.map((x) => x.toString()).toList());
  }

  List<int> _listaSchwab = [];
  List<int> get listaSchwab => _listaSchwab;
  set listaSchwab(List<int> _value) {
    _listaSchwab = _value;
    prefs.setStringList(
        'ff_listaSchwab', _value.map((x) => x.toString()).toList());
  }

  void addToListaSchwab(int _value) {
    _listaSchwab.add(_value);
    prefs.setStringList(
        'ff_listaSchwab', _listaSchwab.map((x) => x.toString()).toList());
  }

  void removeFromListaSchwab(int _value) {
    _listaSchwab.remove(_value);
    prefs.setStringList(
        'ff_listaSchwab', _listaSchwab.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromListaSchwab(int _index) {
    _listaSchwab.removeAt(_index);
    prefs.setStringList(
        'ff_listaSchwab', _listaSchwab.map((x) => x.toString()).toList());
  }

  void updateListaSchwabAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _listaSchwab[_index] = updateFn(_listaSchwab[_index]);
    prefs.setStringList(
        'ff_listaSchwab', _listaSchwab.map((x) => x.toString()).toList());
  }

  void insertAtIndexInListaSchwab(int _index, int _value) {
    _listaSchwab.insert(_index, _value);
    prefs.setStringList(
        'ff_listaSchwab', _listaSchwab.map((x) => x.toString()).toList());
  }

  int _borrarRetroceder = 0;
  int get borrarRetroceder => _borrarRetroceder;
  set borrarRetroceder(int _value) {
    _borrarRetroceder = _value;
    prefs.setInt('ff_borrarRetroceder', _value);
  }

  List<int> _puntajeEquilibrio = [];
  List<int> get puntajeEquilibrio => _puntajeEquilibrio;
  set puntajeEquilibrio(List<int> _value) {
    _puntajeEquilibrio = _value;
    prefs.setStringList(
        'ff_puntajeEquilibrio', _value.map((x) => x.toString()).toList());
  }

  void addToPuntajeEquilibrio(int _value) {
    _puntajeEquilibrio.add(_value);
    prefs.setStringList('ff_puntajeEquilibrio',
        _puntajeEquilibrio.map((x) => x.toString()).toList());
  }

  void removeFromPuntajeEquilibrio(int _value) {
    _puntajeEquilibrio.remove(_value);
    prefs.setStringList('ff_puntajeEquilibrio',
        _puntajeEquilibrio.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromPuntajeEquilibrio(int _index) {
    _puntajeEquilibrio.removeAt(_index);
    prefs.setStringList('ff_puntajeEquilibrio',
        _puntajeEquilibrio.map((x) => x.toString()).toList());
  }

  void updatePuntajeEquilibrioAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _puntajeEquilibrio[_index] = updateFn(_puntajeEquilibrio[_index]);
    prefs.setStringList('ff_puntajeEquilibrio',
        _puntajeEquilibrio.map((x) => x.toString()).toList());
  }

  void insertAtIndexInPuntajeEquilibrio(int _index, int _value) {
    _puntajeEquilibrio.insert(_index, _value);
    prefs.setStringList('ff_puntajeEquilibrio',
        _puntajeEquilibrio.map((x) => x.toString()).toList());
  }

  List<int> _puntajeMarcha = [];
  List<int> get puntajeMarcha => _puntajeMarcha;
  set puntajeMarcha(List<int> _value) {
    _puntajeMarcha = _value;
    prefs.setStringList(
        'ff_puntajeMarcha', _value.map((x) => x.toString()).toList());
  }

  void addToPuntajeMarcha(int _value) {
    _puntajeMarcha.add(_value);
    prefs.setStringList(
        'ff_puntajeMarcha', _puntajeMarcha.map((x) => x.toString()).toList());
  }

  void removeFromPuntajeMarcha(int _value) {
    _puntajeMarcha.remove(_value);
    prefs.setStringList(
        'ff_puntajeMarcha', _puntajeMarcha.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromPuntajeMarcha(int _index) {
    _puntajeMarcha.removeAt(_index);
    prefs.setStringList(
        'ff_puntajeMarcha', _puntajeMarcha.map((x) => x.toString()).toList());
  }

  void updatePuntajeMarchaAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _puntajeMarcha[_index] = updateFn(_puntajeMarcha[_index]);
    prefs.setStringList(
        'ff_puntajeMarcha', _puntajeMarcha.map((x) => x.toString()).toList());
  }

  void insertAtIndexInPuntajeMarcha(int _index, int _value) {
    _puntajeMarcha.insert(_index, _value);
    prefs.setStringList(
        'ff_puntajeMarcha', _puntajeMarcha.map((x) => x.toString()).toList());
  }

  List<int> _FIMmotor = [];
  List<int> get FIMmotor => _FIMmotor;
  set FIMmotor(List<int> _value) {
    _FIMmotor = _value;
    prefs.setStringList(
        'ff_FIMmotor', _value.map((x) => x.toString()).toList());
  }

  void addToFIMmotor(int _value) {
    _FIMmotor.add(_value);
    prefs.setStringList(
        'ff_FIMmotor', _FIMmotor.map((x) => x.toString()).toList());
  }

  void removeFromFIMmotor(int _value) {
    _FIMmotor.remove(_value);
    prefs.setStringList(
        'ff_FIMmotor', _FIMmotor.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromFIMmotor(int _index) {
    _FIMmotor.removeAt(_index);
    prefs.setStringList(
        'ff_FIMmotor', _FIMmotor.map((x) => x.toString()).toList());
  }

  void updateFIMmotorAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _FIMmotor[_index] = updateFn(_FIMmotor[_index]);
    prefs.setStringList(
        'ff_FIMmotor', _FIMmotor.map((x) => x.toString()).toList());
  }

  void insertAtIndexInFIMmotor(int _index, int _value) {
    _FIMmotor.insert(_index, _value);
    prefs.setStringList(
        'ff_FIMmotor', _FIMmotor.map((x) => x.toString()).toList());
  }

  List<int> _FIMcognitivo = [];
  List<int> get FIMcognitivo => _FIMcognitivo;
  set FIMcognitivo(List<int> _value) {
    _FIMcognitivo = _value;
    prefs.setStringList(
        'ff_FIMcognitivo', _value.map((x) => x.toString()).toList());
  }

  void addToFIMcognitivo(int _value) {
    _FIMcognitivo.add(_value);
    prefs.setStringList(
        'ff_FIMcognitivo', _FIMcognitivo.map((x) => x.toString()).toList());
  }

  void removeFromFIMcognitivo(int _value) {
    _FIMcognitivo.remove(_value);
    prefs.setStringList(
        'ff_FIMcognitivo', _FIMcognitivo.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromFIMcognitivo(int _index) {
    _FIMcognitivo.removeAt(_index);
    prefs.setStringList(
        'ff_FIMcognitivo', _FIMcognitivo.map((x) => x.toString()).toList());
  }

  void updateFIMcognitivoAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _FIMcognitivo[_index] = updateFn(_FIMcognitivo[_index]);
    prefs.setStringList(
        'ff_FIMcognitivo', _FIMcognitivo.map((x) => x.toString()).toList());
  }

  void insertAtIndexInFIMcognitivo(int _index, int _value) {
    _FIMcognitivo.insert(_index, _value);
    prefs.setStringList(
        'ff_FIMcognitivo', _FIMcognitivo.map((x) => x.toString()).toList());
  }

  int _numeroPacientes2 = 0;
  int get numeroPacientes2 => _numeroPacientes2;
  set numeroPacientes2(int _value) {
    _numeroPacientes2 = _value;
  }

  String _listaNombres2 = '';
  String get listaNombres2 => _listaNombres2;
  set listaNombres2(String _value) {
    _listaNombres2 = _value;
  }

  String _listaApellidos2 = '';
  String get listaApellidos2 => _listaApellidos2;
  set listaApellidos2(String _value) {
    _listaApellidos2 = _value;
  }

  String _listaRuts2 = '';
  String get listaRuts2 => _listaRuts2;
  set listaRuts2(String _value) {
    _listaRuts2 = _value;
  }

  DateTime? _listaFechas2 = DateTime.fromMillisecondsSinceEpoch(946738800000);
  DateTime? get listaFechas2 => _listaFechas2;
  set listaFechas2(DateTime? _value) {
    _listaFechas2 = _value;
  }

  String _listaSexos2 = '';
  String get listaSexos2 => _listaSexos2;
  set listaSexos2(String _value) {
    _listaSexos2 = _value;
  }

  String _listaTelefonos2 = '';
  String get listaTelefonos2 => _listaTelefonos2;
  set listaTelefonos2(String _value) {
    _listaTelefonos2 = _value;
  }

  String _listaDirecciones2 = '';
  String get listaDirecciones2 => _listaDirecciones2;
  set listaDirecciones2(String _value) {
    _listaDirecciones2 = _value;
  }

  int _listaBerg2 = -1;
  int get listaBerg2 => _listaBerg2;
  set listaBerg2(int _value) {
    _listaBerg2 = _value;
  }

  int _listaBarthel2 = -1;
  int get listaBarthel2 => _listaBarthel2;
  set listaBarthel2(int _value) {
    _listaBarthel2 = _value;
  }

  int _listaTinetti2 = -1;
  int get listaTinetti2 => _listaTinetti2;
  set listaTinetti2(int _value) {
    _listaTinetti2 = _value;
  }

  int _listaFIM2 = -1;
  int get listaFIM2 => _listaFIM2;
  set listaFIM2(int _value) {
    _listaFIM2 = _value;
  }

  int _listaSchwab2 = -1;
  int get listaSchwab2 => _listaSchwab2;
  set listaSchwab2(int _value) {
    _listaSchwab2 = _value;
  }

  int _puntajeEquilibrio2 = -1;
  int get puntajeEquilibrio2 => _puntajeEquilibrio2;
  set puntajeEquilibrio2(int _value) {
    _puntajeEquilibrio2 = _value;
  }

  int _puntajeMarcha2 = -1;
  int get puntajeMarcha2 => _puntajeMarcha2;
  set puntajeMarcha2(int _value) {
    _puntajeMarcha2 = _value;
  }

  int _FIMmotor2 = -1;
  int get FIMmotor2 => _FIMmotor2;
  set FIMmotor2(int _value) {
    _FIMmotor2 = _value;
  }

  int _FIMcognitivo2 = -1;
  int get FIMcognitivo2 => _FIMcognitivo2;
  set FIMcognitivo2(int _value) {
    _FIMcognitivo2 = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}
