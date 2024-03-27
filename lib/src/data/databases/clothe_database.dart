import '../models/clothe.dart';

class ClotheDatabase {
  static Map<String, String> clotheColor = {
    "Black": "#262E33",
    "Blue01": "#65C9FF",
    "Blue02": "#5199E4",
    "Blue03": "#25557C",
    "Gray01": "#E6E6E6",
    "Gray02": "#929598",
    "Heather": "#3C4F5C",
    "PastelBlue": "#B1E2FF",
    "PastelGreen": "#A7FFC4",
    "PastelOrange": "#FFDEB5",
    "PastelRed": "#FFAFB9",
    "PastelYellow": "#FFFFB1",
    "Pink": "#FF488E",
    "Red": "#FF5C5C",
    "White": "#FFFFFF",
  };

  static List<Clothe> data = [
    Clothe(type: "Blazer + T-Shirt", svgPath: '''
          <g id="Clothing/Blazer-+-Shirt" transform="translate(0.000000, 170.000000)">
            <!-- SVG paths for Blazer + T-Shirt -->
          </g>
        '''),
    Clothe(type: "BlazerSweater", svgPath: '''
          <g id="Clothing/Blazer-+-Sweater" transform="translate(0.000000, 170.000000)">
            <!-- SVG paths for BlazerSweater -->
          </g>
        '''),
    Clothe(type: "CollarSweater", svgPath: '''
          <g id="Clothing/Collar-+-Sweater" transform="translate(0.000000, 170.000000)">
            <!-- SVG paths for CollarSweater -->
          </g>
        '''),
    Clothe(type: "GraphicShirt", svgPath: '''
          <g id="Clothing/Graphic-Shirt" transform="translate(0.000000, 170.000000)">
            <!-- SVG paths for GraphicShirt -->
          </g>
        '''),
    Clothe(type: "Hoodie", svgPath: '''
          <g id="Clothing/Hoodie" transform="translate(0.000000, 170.000000)">
            <!-- SVG paths for Hoodie -->
          </g>
        '''),
    Clothe(type: "Overall", svgPath: '''
          <g id="Clothing/Overall" transform="translate(0.000000, 170.000000)">
            <!-- SVG paths for Overall -->
          </g>
        '''),
    Clothe(type: "Crew Neck Tee", svgPath: '''
          <g id="Clothing/Shirt-Crew-Neck" transform="translate(0.000000, 170.000000)">
            <!-- SVG paths for Crew Neck Tee -->
          </g>
        '''),
    Clothe(type: "Scoop-neck Tee", svgPath: '''
          <g id="Clothing/Shirt-Scoop-Neck" transform="translate(0.000000, 170.000000)">
            <!-- SVG paths for Scoop-neck Tee -->
          </g>
        '''),
  ];

  static String generateData({
    required String clotheType,
    String clColor = "Black",
  }) {
    String? colorHex = clotheColor[clColor];
    Clothe? selectedClothe = data.firstWhere(
      (clothe) => clothe.type == clotheType,
      orElse: () => Clothe(type: "", svgPath: ""),
    );

    String svgPath = selectedClothe.svgPath;

    // Here you can manipulate the SVG path based on the colorHex if needed
    // For example, you could replace a placeholder color in the SVG with the actual color
    if (colorHex != null) {
      svgPath = svgPath.replaceAll("#000000", colorHex);
    }

    return svgPath;
  }
}
