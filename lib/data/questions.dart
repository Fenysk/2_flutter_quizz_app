import 'package:quizz_app/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    text: 'Qu\'est-ce que Flutter ?',
    anwsers: [
      'Un SDK de développement d\'applications mobiles',
      'Un système d\'exploitation mobile',
      'Une bibliothèque JavaScript',
      'Un outil de gestion de base de données',
    ],
  ),
  QuizQuestion(
    text:
        'Quel langage de programmation utilise Flutter pour le développement d\'applications ?',
    anwsers: [
      'Dart',
      'JavaScript',
      'Python',
      'C#',
    ],
  ),
  QuizQuestion(
    text: 'Quelle est l\'utilité des widgets dans Flutter ?',
    anwsers: [
      'Construire l\'interface utilisateur',
      'Gérer les connexions réseau',
      'Stocker des données localement sur le téléphone',
      'Compiler le code en applications natives',
    ],
  ),
  QuizQuestion(
    text:
        'Comment Flutter gère-t-il le rafraîchissement de l\'interface utilisateur pour refléter les changements d\'état ?',
    anwsers: [
      'Programmation réactive',
      'Utilisation de callbacks',
      'Multi-threading',
      'Observateurs d\'événements',
    ],
  ),
  QuizQuestion(
    text:
        'Quel outil Flutter permet de visualiser et de diagnostiquer les problèmes de performance des applications ?',
    anwsers: [
      'DevTools',
      'Flutter Console',
      'Flutter Doctor',
      'Flutter Inspector',
    ],
  ),
];
