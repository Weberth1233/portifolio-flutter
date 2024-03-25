import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portifolio/src/components/contact_item.dart';
import 'package:portifolio/src/components/icon_button_item.dart';
import 'package:portifolio/src/pages/widgets/menu.dart';
import 'package:portifolio/src/utils/colorhex.dart';
import '../components/card_item.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double sizeScreen = MediaQuery.of(context).size.width;
    double medio = (sizeScreen / 2);

    return Scaffold(
        backgroundColor: ColorHex.colorFromHex("#fafafa"),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              width: sizeScreen < 1200 ? double.infinity : sizeScreen / 1.7,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white70.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 2,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 122, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Center(
                            child:
                                sizeScreen > 1000 ? const Menu() : Container()),
                        const SizedBox(
                          height: 50,
                        ),
                        Wrap(
                          children: [
                            SizedBox(
                              //width: MediaQuery.of(context).size.width / 3,
                              width: sizeScreen < 800
                                  ? double.infinity
                                  : sizeScreen > 1916
                                      ? medio * 0.4
                                      : medio * 0.6,

                              child: Column(
                                children: [
                                  const Text(
                                    "Front-End e mobile developer, e apaixonado por cultura geek",
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Olá, sou o Weberth, desenvolvedor front-end júnior, estou mergulhando com entusiasmo no mundo da programação, ansioso para expandir meus conhecimentos e habilidades. Com uma formação em Sistemas de Informação e um interesse especial em Flutter e React, estou comprometido em aprender e crescer continuamente nesta área emocionante. Estou pronto para enfrentar desafios, colaborar em projetos empolgantes e contribuir para a criação de experiências digitais impactantes. Estou animado para explorar novas oportunidades e fazer parte de equipes dinâmicas que me ajudarão a trilhar meu caminho como um desenvolvedor front-end talentoso e promissor.",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontStyle: FontStyle.italic,
                                        color:
                                            ColorHex.colorFromHex("#909096")),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 100, horizontal: 50),
                              child: SizedBox(
                                //width:
                                // MediaQuery.of(context).size.width < 520 ? 100 : 320,
                                width: sizeScreen < 1000 ? 200 : 400,
                                child: const Image(
                                    image: NetworkImage(
                                        "https://reactfolio.tharindu.dev/homepage.jpg")),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Align(
                          alignment: Alignment.bottomLeft,
                          child: Wrap(
                            spacing: 25,
                            children: [
                              IconButtonItem(
                                  iconData: Icons.facebook,
                                  url: 'https://github.com/Weberth1233'),
                              IconButtonItem(
                                  iconData: Icons.email,
                                  url: 'https://github.com/Weberth1233'),
                              IconButtonItem(
                                  iconData: FontAwesomeIcons.linkedin,
                                  url:
                                      'https://www.linkedin.com/in/weberth-e-949388138/'),
                              IconButtonItem(
                                  iconData: FontAwesomeIcons.instagram,
                                  url: 'https://github.com/Weberth1233'),
                              IconButtonItem(
                                  iconData: FontAwesomeIcons.github,
                                  url: 'https://github.com/Weberth1233'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      "Projetos",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Center(
                      child: SizedBox(
                        width: double.infinity,
                        child: Wrap(
                          runSpacing: 4,
                          spacing:
                              10, // Define o espaçamento entre os filhos do Wrap
                          alignment: WrapAlignment
                              .spaceBetween, // Alinha os itens// Alinha os itens
                          children: [
                            CardItem(
                              title: 'public_ministry_test',
                              subtitile:
                                  "Teste para vaga de desenvolvedor front-end em uma empresa terceiraza. o Teste consistia em fazer um gerenciador de usuários e projetos aplicando alguns validaçõies; Tecnologias utilizadas foram o Flutter/Dart e o Django/Python ",
                              iconData: FontAwesomeIcons.react,
                              viewButton: true,
                            ),
                            CardItem(
                                title: 'Curso React',
                                subtitile:
                                    "Projeto desenvolvido para um curso de React JS - Udemy",
                                iconData: FontAwesomeIcons.react,
                                viewButton: true),
                            CardItem(
                                title: 'TakeYourUmbrellaApp',
                                subtitile:
                                    "Aplicativo desenvolvido em flutter, utilizando uma API para coletar dados meteorologicos e apresenta-los no app",
                                iconData: Icons.flutter_dash_rounded,
                                viewButton: true),
                            CardItem(
                                title: 'project_yourtravel',
                                subtitile:
                                    "I am a backend developer with expertise in Node.js. I have experience in building scalable, secure and reliable web applications using various frameworks and technologies. ",
                                iconData: Icons.flutter_dash_outlined,
                                viewButton: true),
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      "Experiências profissionais",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Center(
                      child: SizedBox(
                        width: double.infinity,
                        child: Wrap(
                          runSpacing: 4,
                          spacing:
                              10, // Define o espaçamento entre os filhos do Wrap
                          alignment: WrapAlignment.spaceBetween,
                          children: [
                            CardItem(
                                title:
                                    'Alpha terceirização - Palmas(TO) - Atualmente',
                                subtitile:
                                    "Desenvolvedor de software Junior -(Presencial) Competências: Flutter - Desenvolvimento WEB - Front-End - Pyhton-Django- API REst - Docker",
                                iconData: Icons.workspace_premium_sharp,
                                viewButton: false),
                            CardItem(
                                title: 'SolarView - Minas Gerais(BH) - 4 mesês',
                                subtitile:
                                    "Desenvolvedor de software Junior -(Remoto) Competências: PHP - MYSQL - Desenvolvimento WEB",
                                iconData: Icons.workspace_premium_sharp,
                                viewButton: false),
                            CardItem(
                                title: 'SolarView - Minas Gerais(BH) - 5 mesês',
                                subtitile:
                                    "Assistente de TI -(Remoto) Competências: Postman - MYSQL - Suporte Tecnico",
                                iconData: Icons.workspace_premium_sharp,
                                viewButton: false),
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      "Experiências acadêmicas",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Center(
                      child: SizedBox(
                        width: double.infinity,
                        child: Wrap(
                          runSpacing: 4,
                          spacing:
                              8, // Define o espaçamento entre os filhos do Wrap
                          alignment: WrapAlignment.spaceBetween,
                          children: [
                            CardItem(
                              title: 'Bacharel em Sistemas de Informação',
                              subtitile:
                                  "Completo em 4 anos de curso(2019- 2023) - UNITINS(Universidade Estadual do Tocantins) ",
                              iconData: Icons.school,
                              viewButton: false,
                            ),
                            CardItem(
                              title: 'Bolsista do NIT',
                              subtitile:
                                  "Desenvolvimento de software, especificação de requisitos, projeto, implementação, validação e manutenção, no âmbito do Programa.",
                              iconData: Icons.school,
                              viewButton: false,
                            ),
                            CardItem(
                              title:
                                  'Estagio(Não obrigatório) - SEFAZ - Palmas(TO) - 1 ano e 9 mesês',
                              subtitile:
                                  "Suporte tecnico de TI- Manutenção de equipamentos de informação e configuração de rede e demais componentes. Testes nos sitemas de informação",
                              iconData: Icons.school,
                              viewButton: false,
                            ),
                            CardItem(
                              title:
                                  'Estagio(Obrigatório) - UNITINS - Palmas(TO) - 6 meses',
                              subtitile:
                                  "Documentação- Requisitos funcionais e não funcionais/Diagramas(Caso de uso - Classes e atividade)/Prototipo",
                              iconData: Icons.school,
                              viewButton: false,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      "Vamos entrar em contato: maneiras de se conectar comigo",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Obrigado pelo seu interesse em entrar em contato comigo. Agradeço seus comentários, perguntas e sugestões. Se você tiver uma pergunta ou comentário específico, sinta-se à vontade para me enviar um e-mail diretamente para wwebertherikanolarsiqueira@gmail.com Faço um esforço para responder a todas as mensagens dentro de 24 horas, embora possa demorar mais durante períodos de maior movimento. Alternativamente, você pode usar o formulário de contato em meu site para entrar em contato. Basta preencher os campos obrigatórios e entrarei em contato com você o mais breve possível. Por fim, se preferir se conectar nas redes sociais, você pode me encontrar em https://instagram.com/. Eu posto atualizações regulares e interajo com meus seguidores lá, então não hesite em entrar em contato. Obrigado novamente pelo seu interesse e estou ansioso para ouvir de você!",
                      style: TextStyle(
                          fontSize: 16,
                          color: ColorHex.colorFromHex("#6f6f77")),
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    const ContactItem(
                      icon: Icons.facebook,
                      text: 'Siga no Facebook',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const ContactItem(
                      icon: Icons.nest_cam_wired_stand_outlined,
                      text: 'Siga no Linkedin',
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 30,
                    ),
                    const ContactItem(
                      icon: Icons.email,
                      text: 'Mande um E-mail',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.black,
          child: const Icon(
            Icons.nightlight,
            color: Colors.white,
          ),
        ));
  }
}
