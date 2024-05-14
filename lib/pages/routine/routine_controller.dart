import 'package:get/get.dart';
import '../../models/entities/exercise.dart';

class RoutineController extends GetxController {
  RxList<Exercise> exercises = <Exercise>[].obs;
  List<Exercise> exercises2 = [
    Exercise(
        id: 1,
        name: "'LEVACIONES DE PIERNAS ACOSTADAS",
        imageUrl: "ejercicios/abdomen01.png",
        videoUrl: "https://www.youtube.com/watch?v=u51ytLWD15g",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 1),
    Exercise(
        id: 2,
        name: "'ILLA ROMANA",
        imageUrl: "ejercicios/abdomen02.png",
        videoUrl: "https://www.youtube.com/watch?v=u51ytLWD15g",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 1),
    Exercise(
        id: 3,
        name: "'AMINADORA",
        imageUrl: "ejercicios/abdomen03.png",
        videoUrl: "https://www.youtube.com/watch?v=u51ytLWD15g",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 1),
    Exercise(
        id: 4,
        name: "'RESS DECLINADO EN BANCO",
        imageUrl: "ejercicios/abdomen04.png",
        videoUrl: "https://www.youtube.com/watch?v=u51ytLWD15g",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 1),
    Exercise(
        id: 5,
        name: "'LEXIONES DE PIERNAS EN BANCO SENTADO",
        imageUrl: "ejercicios/abdomen05.png",
        videoUrl: "https://www.youtube.com/watch?v=u51ytLWD15g",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 1),
    Exercise(
        id: 6,
        name: "'BDOMINALES EN MÁQUINA",
        imageUrl: "ejercicios/abdomen06.png",
        videoUrl: "https://www.youtube.com/watch?v=u51ytLWD15g",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 1),
    Exercise(
        id: 7,
        name: "'BDOMINALES INVERTIDOS EN BANCO",
        imageUrl: "ejercicios/abdomen07.png",
        videoUrl: "https://www.youtube.com/watch?v=u51ytLWD15g",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 1),
    Exercise(
        id: 8,
        name: "'ENTADILLA",
        imageUrl: "ejercicios/piernas01.png",
        videoUrl: "https://www.youtube.com/watch?v=KrpKmehR",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 2),
    Exercise(
        id: 9,
        name: "'ÁQUINA HACK",
        imageUrl: "ejercicios/piernas02.png",
        videoUrl: "https://www.youtube.com/watch?v=KrpKmehR",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 2),
    Exercise(
        id: 10,
        name: "PRESS DE PIERNA",
        imageUrl: "ejercicios/piernas03.png",
        videoUrl: "https://www.youtube.com/watch?v=KrpKmehR",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 2),
    Exercise(
        id: 11,
        name: "SENTADILLA FRONTAL",
        imageUrl: "ejercicios/piernas04.png",
        videoUrl: "https://www.youtube.com/watch?v=KrpKmehR",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 2),
    Exercise(
        id: 12,
        name: "EXTENSIÓN DE PIERNAS",
        imageUrl: "ejercicios/piernas05.png",
        videoUrl: "https://www.youtube.com/watch?v=KrpKmehR",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 2),
    Exercise(
        id: 13,
        name: "ADUCTORES EN MÁQUINA",
        imageUrl: "ejercicios/piernas06.png",
        videoUrl: "https://www.youtube.com/watch?v=KrpKmehR",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 2),
    Exercise(
        id: 14,
        name: "MÁQUINA SMITH",
        imageUrl: "ejercicios/piernas07.png",
        videoUrl: "https://www.youtube.com/watch?v=KrpKmehR",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 2),
    Exercise(
        id: 15,
        name: "FLEXIONES DE PIERNAS",
        imageUrl: "ejercicios/piernas08.png",
        videoUrl: "https://www.youtube.com/watch?v=KrpKmehR",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 2),
    Exercise(
        id: 16,
        name: "ESTOCADAS LATERALES CON MANCUERNAS",
        imageUrl: "ejercicios/piernas09.png",
        videoUrl: "https://www.youtube.com/watch?v=KrpKmehR",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 2),
    Exercise(
        id: 17,
        name: "LUNGES CON MANCUERNAS",
        imageUrl: "ejercicios/piernas10.png",
        videoUrl: "https://www.youtube.com/watch?v=KrpKmehR",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 2),
    Exercise(
        id: 18,
        name: "PESO MUERTO",
        imageUrl: "ejercicios/piernas11.png",
        videoUrl: "https://www.youtube.com/watch?v=KrpKmehR",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 2),
    Exercise(
        id: 19,
        name: "JALÓN CON POLEA",
        imageUrl: "ejercicios/espalda01.png",
        videoUrl: "https://www.youtube.com/watch?v=D7z3g0Eg9BY",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 5),
    Exercise(
        id: 20,
        name: "PULLOVER DE BANCA SENTADO",
        imageUrl: "ejercicios/espalda02.png",
        videoUrl: "https://www.youtube.com/watch?v=D7z3g0Eg9BY",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 5),
    Exercise(
        id: 21,
        name: "REMO SENTADO",
        imageUrl: "ejercicios/espalda03.png",
        videoUrl: "https://www.youtube.com/watch?v=D7z3g0Eg9BY",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 5),
    Exercise(
        id: 22,
        name: "PESO MUERTO",
        imageUrl: "ejercicios/espalda04.png",
        videoUrl: "https://www.youtube.com/watch?v=D7z3g0Eg9BY",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 5),
    Exercise(
        id: 23,
        name: "DOMINADAS",
        imageUrl: "ejercicios/espalda05.png",
        videoUrl: "https://www.youtube.com/watch?v=D7z3g0Eg9BY",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 5),
    Exercise(
        id: 24,
        name: "HIPEREXTENSIÓN",
        imageUrl: "ejercicios/espalda06.png",
        videoUrl: "https://www.youtube.com/watch?v=D7z3g0Eg9BY",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 5),
    Exercise(
        id: 25,
        name: "COPA SENTADO",
        imageUrl: "ejercicios/espalda07.png",
        videoUrl: "https://www.youtube.com/watch?v=D7z3g0Eg9BY",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 5),
    Exercise(
        id: 26,
        name: "ENCOGIMIENTO DE HOMBROS",
        imageUrl: "ejercicios/espalda08.png",
        videoUrl: "https://www.youtube.com/watch?v=D7z3g0Eg9BY",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 5),
    Exercise(
        id: 27,
        name: "CURL CON BARRA",
        imageUrl: "ejercicios/biceps01.png",
        videoUrl: "https://www.youtube.com/watch?v=ZIm_qrJSOds",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 7),
    Exercise(
        id: 28,
        name: "SCOOT SENTADO",
        imageUrl: "ejercicios/biceps02.png",
        videoUrl: "https://www.youtube.com/watch?v=ZIm_qrJSOds",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 7),
    Exercise(
        id: 29,
        name: "SCOOT POR LADO",
        imageUrl: "ejercicios/biceps03.png",
        videoUrl: "https://www.youtube.com/watch?v=ZIm_qrJSOds",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 7),
    Exercise(
        id: 30,
        name: "CURL ALTERNADO INCLINADO",
        imageUrl: "ejercicios/biceps04.png",
        videoUrl: "https://www.youtube.com/watch?v=ZIm_qrJSOds",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 7),
    Exercise(
        id: 31,
        name: "SCOOT CON MÁQUINA",
        imageUrl: "ejercicios/biceps05.png",
        videoUrl: "https://www.youtube.com/watch?v=ZIm_qrJSOds",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 7),
    Exercise(
        id: 32,
        name: "CURL POLEA CON UN BRAZO",
        imageUrl: "ejercicios/biceps06.png",
        videoUrl: "https://www.youtube.com/watch?v=ZIm_qrJSOds",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 7),
    Exercise(
        id: 33,
        name: "CURL ARTILLO",
        imageUrl: "ejercicios/biceps07.png",
        videoUrl: "https://www.youtube.com/watch?v=ZIm_qrJSOds",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 7),
    Exercise(
        id: 34,
        name: "PANTORRILLA EN MÁQUINA SMITH",
        imageUrl: "ejercicios/pantorrilla01.png",
        videoUrl: "https://www.youtube.com/watch?v=F16IZhxfP3w",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 3),
    Exercise(
        id: 35,
        name: "PANTORRILLA PARADO LIBRE",
        imageUrl: "ejercicios/pantorrilla02.png",
        videoUrl: "https://www.youtube.com/watch?v=F16IZhxfP3w",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 3),
    Exercise(
        id: 36,
        name: "PANTORRILLA PRENSA",
        imageUrl: "ejercicios/pantorrilla03.png",
        videoUrl: "https://www.youtube.com/watch?v=F16IZhxfP3w",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 3),
    Exercise(
        id: 37,
        name: "PANTORRILLA CON MANCUERNAS",
        imageUrl: "ejercicios/pantorrilla04.png",
        videoUrl: "https://www.youtube.com/watch?v=F16IZhxfP3w",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 3),
    Exercise(
        id: 38,
        name: "PANTORRILLA SENTADO",
        imageUrl: "ejercicios/pantorrilla05.png",
        videoUrl: "https://www.youtube.com/watch?v=F16IZhxfP3w",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 3),
    Exercise(
        id: 39,
        name: "PRESS DE BANCA",
        imageUrl: "ejercicios/pectoral01.png",
        videoUrl: "https://www.youtube.com/watch?v=VRMLeECpyYc",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 4),
    Exercise(
        id: 40,
        name: "PRESS DE BANCA DECLINADA",
        imageUrl: "ejercicios/pectoral02.png",
        videoUrl: "https://www.youtube.com/watch?v=VRMLeECpyYc",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 4),
    Exercise(
        id: 41,
        name: "PRESS DE BANCA CON MANCUERNAS INCLINADAS",
        imageUrl: "ejercicios/pectoral03.png",
        videoUrl: "https://www.youtube.com/watch?v=VRMLeECpyYc",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 4),
    Exercise(
        id: 42,
        name: "PRESS DE BANCA CON MANCUERNAS",
        imageUrl: "ejercicios/pectoral04.png",
        videoUrl: "https://www.youtube.com/watch?v=VRMLeECpyYc",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 4),
    Exercise(
        id: 43,
        name: "APERTURAS LATERALES EN BANCO",
        imageUrl: "ejercicios/pectoral05.png",
        videoUrl: "https://www.youtube.com/watch?v=VRMLeECpyYc",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 4),
    Exercise(
        id: 44,
        name: "CRUCE CON CABLES",
        imageUrl: "ejercicios/pectoral06.png",
        videoUrl: "https://www.youtube.com/watch?v=VRMLeECpyYc",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 4),
    Exercise(
        id: 45,
        name: "MÁQUINA PRESS SENTADO",
        imageUrl: "ejercicios/pectoral07.png",
        videoUrl: "https://www.youtube.com/watch?v=VRMLeECpyYc",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 4),
    Exercise(
        id: 46,
        name: "DECK PRESS",
        imageUrl: "ejercicios/pectoral08.png",
        videoUrl: "https://www.youtube.com/watch?v=VRMLeECpyYc",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 4),
    Exercise(
        id: 47,
        name: "PLANCHAS",
        imageUrl: "ejercicios/pectoral09.png",
        videoUrl: "https://www.youtube.com/watch?v=VRMLeECpyYc",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 4),
    Exercise(
        id: 48,
        name: "PRESS FRONTAL",
        imageUrl: "ejercicios/hombros01.png",
        videoUrl: "https://www.youtube.com/watch?v=QcyC8hXLQ40",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 6),
    Exercise(
        id: 49,
        name: "PRESS TRAS LA NUCA CON MÁQUINA",
        imageUrl: "ejercicios/hombros02.png",
        videoUrl: "https://www.youtube.com/watch?v=QcyC8hXLQ40",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 6),
    Exercise(
        id: 50,
        name: "PRESS MILITAR",
        imageUrl: "ejercicios/hombros03.png",
        videoUrl: "https://www.youtube.com/watch?v=QcyC8hXLQ40",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 6),
    Exercise(
        id: 51,
        name: "PRESS MILITAR CON MANCUERNA",
        imageUrl: "ejercicios/hombros04.png",
        videoUrl: "https://www.youtube.com/watch?v=QcyC8hXLQ40",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 6),
    Exercise(
        id: 52,
        name: "FACE PULL",
        imageUrl: "ejercicios/hombros05.png",
        videoUrl: "https://www.youtube.com/watch?v=QcyC8hXLQ40",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 6),
    Exercise(
        id: 53,
        name: "BARRAS EN MÁQUINA",
        imageUrl: "ejercicios/hombros06.png",
        videoUrl: "https://www.youtube.com/watch?v=QcyC8hXLQ40",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        bodyPartId: 6),
    Exercise(
        id: 54,
        name: "ELVACIÓN LATERAL ALTERNA",
        imageUrl: "ejercicios/hombros07.png",
        videoUrl: "https://www.youtube.com/watch?v=QcyC8hXLQ40",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled name: t to make a type specimen book.",
        bodyPartId: 6)
  ];

  RoutineController() {
    print('++++++++++++++++++++ RoutineController ++++++++++++++++++++');
    exercises.addAll(exercises2);
  }
}
