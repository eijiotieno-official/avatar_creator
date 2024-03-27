import '../models/cloth.dart';

class ClothDatabase {
  static Map<String, String> clothColor = {
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

  static List<Cloth> data = [
    
  ];

  static String generateData({
    required String clothType,
    String clColor = "Black",
  }) {
    String? colorHex = clothColor[clColor];
    Cloth? selectedCloth = data.firstWhere(
      (cloth) => cloth.type == clothType,
      orElse: () => Cloth(type: "", svgPath: ""),
    );

    String svgPath = selectedCloth.svgPath;

    // Here you can manipulate the SVG path based on the colorHex if needed
    // For example, you could replace a placeholder color in the SVG with the actual color
    if (colorHex != null) {
      svgPath = svgPath.replaceAll("#000000", colorHex);
    }

    return svgPath;
  }
}
