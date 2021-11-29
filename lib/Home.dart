import 'package:plantilla/models/job.dart';
import 'package:plantilla/models/company.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/job_carousel.dart';
import '../components/job_list.dart';

class MainScreen extends StatelessWidget {
//// imagnes de internt ya accseos rapidos
  List<Job> forYouJobs = [
    Job(
      role: 'Elimar sonido de perro',
      company: Company(
        name: 'Perro',
        urlLogo:
            'https://www.google.com.mx/imgres?imgurl=http%3A%2F%2Fc.files.bbci.co.uk%2F48DD%2Fproduction%2F_107435681_perro1.jpg&imgrefurl=https%3A%2F%2Fwww.bbc.com%2Fmundo%2Fnoticias-48676663&tbnid=Ww-3jy6VPgP9FM&vet=12ahUKEwiW896tmr30AhWWgU4HHX6AC8EQMygAegUIARDKAQ..i&docid=-KR5TGOyWQ66VM&w=976&h=549&q=perros&hl=es-419&authuser=0&ved=2ahUKEwiW896tmr30AhWWgU4HHX6AC8EQMygAegUIARDKAQ',
      ),
    ),
    Job(
      role: 'Eliminar sonido de carro',
      company: Company(
        name: 'carro',
        urlLogo:
            'https://www.google.com.mx/imgres?imgurl=https%3A%2F%2Fwww.elcarrocolombiano.com%2Fwp-content%2Fuploads%2F2019%2F01%2F20190122-MPM-ERELIS-AUTO-DEPORTIVO-MAS-BARATO-01.jpg&imgrefurl=https%3A%2F%2Fwww.elcarrocolombiano.com%2Fautos-del-mundo%2Fmpm-erelis-el-carro-deportivo-de-bajo-costo-que-se-vendera-en-europa%2F&tbnid=8QDcphOAOQAGJM&vet=12ahUKEwjdxprAmr30AhVlja0KHVD6CqIQMygBegUIARDNAQ..i&docid=uNdvFZ7_6jKiDM&w=1100&h=550&q=carro&hl=es-419&authuser=0&ved=2ahUKEwjdxprAmr30AhVlja0KHVD6CqIQMygBegUIARDNAQ',
      ),
    ),
    Job(
      role: 'Elimar sonido de pajaro',
      company: Company(
        name: 'pajaro',
        urlLogo:
            'https://www.google.com.mx/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F5%2F55%2FProtonotaria-citrea-002_edit.jpg%2F220px-Protonotaria-citrea-002_edit.jpg&imgrefurl=https%3A%2F%2Fes.wiktionary.org%2Fwiki%2Fp%25C3%25A1jaro&tbnid=fFnfB0raCq_iKM&vet=12ahUKEwjUybOKm730AhUL9awKHdw4DawQMygBegUIARDHAQ..i&docid=DgfbZ7veEJ9_IM&w=220&h=220&q=pajaro&hl=es-419&authuser=0&ved=2ahUKEwjUybOKm730AhUL9awKHdw4DawQMygBegUIARDHAQ',
      ),
    ),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _customAppBar(),
            _textsHeader(context),
            _forYou(context),
            _recent(context),
            SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }
//// iconos de svg.asset
  Widget _customAppBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            iconSize: 40.0,
            icon: SvgPicture.asset('assets/icons/slider.svg'),
            onPressed: () {},
          ),
          Row(
            children: <Widget>[
              IconButton(
                iconSize: 40.0,
                icon: SvgPicture.asset('assets/icons/search.svg'),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 40.0,
                icon: SvgPicture.asset('assets/icons/settings.svg'),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _textsHeader(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Hi Jade',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            'Find your next',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'design job',
            style: Theme.of(context).textTheme.headline2,
          )
        ],
      ),
    );
  }

  Widget _forYou(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Text(
            'For You',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        JobCarousel(this.forYouJobs),
      ],
    );
  }

  Widget _recent(context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 5.0, bottom: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                'Recent',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                'See All',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: JobList(this.recentJobs),
        ),
      ],
    );
  }
}
