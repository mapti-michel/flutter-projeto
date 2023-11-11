class GridViewMoonPage extends StatefulWidget {
  const GridViewMoonPage({super.key, required this.title});

  final String title;

  @override
  State<GridViewMoonPage> createState() => _GridViewMoonPageState();
}

class _GridViewMoonPageState extends State<GridViewMoonPage> {

  final List<String> _listImages = [
    "assets/images/luaCheia.png",
    "assets/images/luaCrescenteConcava.png",
    "assets/images/luaMinguanteConcava.png",
    "assets/images/luaMinguanteConvexa.png",
    "assets/images/luaNova.png",
    "assets/images/quartoCrescente.png",
    "assets/images/quartoMinguante.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing:10,
          ),
          itemCount: _listImages.length,
          itemBuilder: (context, index){
            return  Container(
              child: Column(
                children: [
                  Image.asset(_listImages[index]),
                  Text('Fase Lua $index')
                ],
              ),
            );
          }
        ),
      )
    );
  }
}