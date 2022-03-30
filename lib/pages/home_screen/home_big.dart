import 'package:flutter/material.dart';
import 'package:legend_design_core/layout/scaffold/legend_scaffold.dart';
import 'package:legend_design_core/styles/layouts/layout_type.dart';
import 'package:legend_design_core/styles/theming/theme_provider.dart';
import 'package:legend_design_core/typography/legend_text.dart';
import 'package:legend_design_widgets/datadisplay/carousel/legendCarousel.dart';
import 'package:legend_design_widgets/layout/dynamic/items/legendFlexItem.dart';
import 'package:legend_design_widgets/layout/dynamic/items/legendLayoutItem.dart';
import 'package:legend_design_widgets/layout/dynamic/legendCustomLayout.dart';
import 'package:provider/provider.dart';

class HomeBig extends StatelessWidget {
  const HomeBig();

  @override
  Widget build(BuildContext context) {
    ThemeProvider theme = context.watch<ThemeProvider>();
    return LegendScaffold(
      maxContentWidth: 1000,
      disableContentDecoration: true,
      contentBuilder: (context, s) {
        return Column(
          children: [
            LegendCarousel(
              height: MediaQuery.of(context).size.height * (1 / 3),
              items: [
                Image.asset(
                  "assets/images/gasthaus.jpg",
                  fit: BoxFit.cover,
                ),
                Image.asset("assets/images/eingang.jpg", fit: BoxFit.cover),
              ],
            ),
            Card(
              elevation: 4.0,
              margin: EdgeInsets.all(theme.sizing.padding[0]),
              color: theme.colors.foreground[0],
              shape: RoundedRectangleBorder(
                  borderRadius: theme.sizing.borderRadius[0]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: LegendCustomLayout(
               
                  item: LegendLayoutRow(
                    spacing: 20,
                    childrenFlex: [
                      ChildrenFlexValue(2),
                      ChildrenFlexValue(3),
                    ],
                    children: [
                      LegendLayoutColumn(
                        childrenFlex: [
                          ChildrenFlexWidth(48),
                          ChildrenFlexValue(1),
                          ChildrenFlexWidth(48),
                          ChildrenFlexValue(1),
                        ],
                        children: [
                          LegendLayoutWidget(0),
                          LegendLayoutWidget(1),
                          LegendLayoutWidget(2),
                          LegendLayoutWidget(3),
                        ],
                      ),
                      LegendLayoutColumn(
                        children: [
                          LegendLayoutWidget(4),
                          LegendLayoutWidget(5),
                        ],
                      ),
                    ],
                  ),
                  children: [
                    LegendText(text: "Über uns", textStyle: theme.typography.h4),
                    LegendText(
                      overflow: TextOverflow.clip,
                        text: "Der Gasthof Kurath ist ein Familienbetrieb mit Tradition! Egal ob groß und klein bei uns ist jeder Gast König. Die Speisekarte umfasst zahlreiche Kärntner Spezialitäten, dadurch ist es ein Kinderspiel etwas für sich zu finden. " +
                            "Genießen Sie das Kärntnerland von seiner schönsten Seite! Vom Gasthof Kurath aus können Ausflugsziele in ganz Kärnten innerhalb kürzester Zeit erreicht werden. Skaten, Radeln, Biken und Wandern: St.Filippen ist der zentrale Ausgangspunkt für die schönsten Routen.",
                        textStyle: theme.typography.h1),
                    LegendText(
                      text: "Barrierefreihet",
                      textStyle: theme.typography.h4,
                    ),
                    LegendText(
                        textStyle: theme.typography.h1,
                        text:
                            "Der Gasthof Kurath is komplett barrierefrei gestaltet. Dazu zählt die Sanitäreinrichtung, aber genauso der Speißesaal"),
                    Placeholder(
                      fallbackWidth: MediaQuery.of(context).size.width * (1 / 3),
                      color: Colors.red,
                    ),
                    LegendText(
                      text: "Familie Kurath",
                      textStyle: theme.typography.h4,
                    ),
                  ],
                ),
              ),
            ),
            /*  Card(
              elevation: 4.0,
              margin: EdgeInsets.all(theme.sizing.padding[0]),
              color: theme.colors.foreground[0],
              shape: RoundedRectangleBorder(
                  borderRadius: theme.sizing.borderRadius[0]),
              child: Padding(
                padding: EdgeInsets.all(theme.sizing.padding[0]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LegendText(
                        text: "Über uns", textStyle: theme.typography.h5),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LegendText(
                                  overflow: TextOverflow.clip,
                                  text: "Der Gasthof Kurath ist ein Familienbetrieb mit Tradition! Egal ob groß und klein bei uns ist jeder Gast König. Die Speisekarte umfasst zahlreiche Kärntner Spezialitäten, dadurch ist es ein Kinderspiel etwas für sich zu finden. " +
                                      "Genießen Sie das Kärntnerland von seiner schönsten Seite! Vom Gasthof Kurath aus können Ausflugsziele in ganz Kärnten innerhalb kürzester Zeit erreicht werden. Skaten, Radeln, Biken und Wandern: St.Filippen ist der zentrale Ausgangspunkt für die schönsten Routen.",
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  textStyle: theme.typography.h3),
                              LegendText(
                                text: "Barrierefreihet",
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                textStyle: theme.typography.h5,
                              ),
                              LegendText(
                                  textStyle: theme.typography.h3,
                                  text:
                                      "Der Gasthof Kurath is komplett barrierefrei gestaltet. Dazu zählt die Sanitäreinrichtung, aber genauso der Speißesaal")
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              Placeholder(
                                fallbackWidth:
                                    MediaQuery.of(context).size.width * (1 / 3),
                                color: Colors.red,
                              ),
                              LegendText(
                                text: "Familie Kurath",
                                textStyle: theme.typography.h5,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),*/
            Card(
              elevation: 4.0,
              margin: EdgeInsets.all(theme.sizing.padding[0]),
              color: theme.colors.foreground[0],
              shape: RoundedRectangleBorder(
                  borderRadius: theme.sizing.borderRadius[0]),
              child: SizedBox(
                width: s.width,
                child: Padding(
                  padding: EdgeInsets.all(theme.sizing.padding[0]),
                  child: Column(
                    children: [
                      LegendText(
                        text: "Öffnungszeiten",
                        textStyle: theme.typography.h5,
                        textAlign: TextAlign.center,
                        padding: const EdgeInsets.only(bottom: 8.0),
                      ),
                      LegendText(
                        text: "Montag: Ruhetag",
                        textStyle: theme.typography.h3,
                        textAlign: TextAlign.center,
                        padding: const EdgeInsets.only(bottom: 10),
                      ),
                      LegendText(
                        text: "Dienstag: 11:00 - 17:00",
                        textStyle: theme.typography.h3,
                        textAlign: TextAlign.center,
                        padding: const EdgeInsets.only(bottom: 10),
                      ),
                      LegendText(
                        text: "Mittwoch: 11:00 - 17:00",
                        textStyle: theme.typography.h3,
                        textAlign: TextAlign.center,
                        padding: const EdgeInsets.only(bottom: 10),
                      ),
                      LegendText(
                        text: "Donnerstag: 11:00 - 17:00",
                        textStyle: theme.typography.h3,
                        textAlign: TextAlign.center,
                        padding: const EdgeInsets.only(bottom: 10),
                      ),
                      LegendText(
                        text: "Freitag: 11:00 - 17:00",
                        textStyle: theme.typography.h3,
                        textAlign: TextAlign.center,
                        padding: const EdgeInsets.only(bottom: 10),
                      ),
                      LegendText(
                        text: "Samstag: 11:00 - 17:00",
                        textStyle: theme.typography.h3,
                        textAlign: TextAlign.center,
                        padding: const EdgeInsets.only(bottom: 10),
                      ),
                      LegendText(
                        text: "Sonn- und Feiertags durchgehend Geöffnet",
                        textStyle: theme.typography.h3,
                        textAlign: TextAlign.center,
                        padding: const EdgeInsets.only(bottom: 10),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 4.0,
              margin: EdgeInsets.all(theme.sizing.padding[0]),
              color: theme.colors.foreground[0],
              shape: RoundedRectangleBorder(
                  borderRadius: theme.sizing.borderRadius[0]),
              child: SizedBox(
                width: s.width,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      LegendCarousel(
                        padding: EdgeInsets.all(8),
                        height: s.height * 0.6,
                        items: [
                          Image.asset(
                            "assets/images/gast.jpg",
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            "assets/images/gastzimmer.jpg",
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            "assets/images/gastzimmerL.jpg",
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
      layoutType: LayoutType.FixedHeader,
      pageName: "Home",
    );
  }
}
