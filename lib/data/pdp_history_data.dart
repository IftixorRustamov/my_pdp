// lib/data/pdp_history_data.dart

class PdpHistoryEvent {
  final int year;
  final String title;
  final String description;

  const PdpHistoryEvent({
    required this.year,
    required this.title,
    required this.description,
  });
}

final List<PdpHistoryEvent> pdpHistoryEvents = [
  const PdpHistoryEvent(
    year: 2017,
    title: "PDP was founded in 2017",
    description: "The first educational center was opened with ambitious goals. Personal Development Process is an information technology educational center. The first 300 students successfully graduated.",
  ),
  const PdpHistoryEvent(
    year: 2019,
    title: "New Center in 2019",
    description: "Opening of a new center for 600 people. The first bootcamp courses were introduced to intensively train programmers.",
  ),
  const PdpHistoryEvent(
    year: 2020,
    title: "Online classes opened in 2020",
    description: "First online classes: PDP Online. An opportunity was created for our Uzbek-speaking compatriots from all over the world to learn programming.",
  ),
  const PdpHistoryEvent(
    year: 2021,
    title: "New Opportunities in 2021",
    description: "Opening of a new center with a capacity of up to 3,000. Outsourcing and recruiting companies were opened to provide employment for programmers.",
  ),
  const PdpHistoryEvent(
    year: 2022,
    title: "PDP University in 2022",
    description: "You are here now. PDP University is a full-fledged IT University focused on training advanced professionals.",
  ),
];
