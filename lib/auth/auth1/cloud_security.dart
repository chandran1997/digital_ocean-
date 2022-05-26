import 'dart:ui';

import 'package:flutter/material.dart';

class CloudSecurityPage extends StatefulWidget {
  const CloudSecurityPage({Key? key}) : super(key: key);

  @override
  State<CloudSecurityPage> createState() => _CloudSecurityPageState();
}

class _CloudSecurityPageState extends State<CloudSecurityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff292e42),
        actions: const [
          Icon(Icons.logout),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Cloud Security",
                    style: TextStyle(
                      color: Color(0xff292e42),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(top: 10),
              width: double.maxFinite,
              height: 200,
              decoration: BoxDecoration(
                // color: Colors.red,
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage("assets/digital/cloud_security.png"),
                ),
              ),
            ),
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Accelerate cloud-first resilience",
                style: TextStyle(
                  color: Color(0xff292e42),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Container(
                  width: MediaQuery.of(context).size.width * 2 - 180,
                  height: 220,
                  child: Row(
                    children: [
                      ManageDatabase(
                        title: "Fast",
                        discription:
                            "With cloud service provider (CSP)-native accelerators that enable security capabilities and controls to be deployed in minutes or hours, rather than months.",
                      ),
                      const SizedBox(width: 20),
                      ManageDatabase(
                        title: "Frictionless",
                        discription:
                            "With security embedded in existing solutions, business processes, and operational teams",
                      ),
                      const SizedBox(width: 20),
                      ManageDatabase(
                        title: "Scalable",
                        discription:
                            "With automation and self-healing processes applied to reduce manual steps and break the resourcing model of adding headcount to enable organizations to scale.",
                      ),
                      const SizedBox(width: 20),
                      ManageDatabase(
                        title: "Proactive",
                        discription:
                            "With pre-emptive controls established to block accidental or malicious security incidents from happening in the first place.",
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Capabilities",
                style: TextStyle(
                  color: Color(0xff292e42),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 480,
              child: Stack(
                children: [
                  capabilities(
                    discription:
                        'Rapidly identify gaps and establish a risk-aligned architecture and roadmap for baseline cloud security that optimizes current technology investments.',
                    title: 'Know your security posture',
                  ),
                  Positioned(
                    right: 10,
                    child: capabilities(
                      discription:
                          'Get faster time to value and automate deployment of security guardrails for cloud native services including AWS, Microsoft Azure and Google Cloud.',
                      title: 'Automate native security',
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: capabilities(
                      discription:
                          'Optimize detection and streamline cloud security operations. Mitigate risk with cloud service providers (CSPs) to align with regulatory requirements.',
                      title: 'Be proactive with compliance',
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 10,
                    child: capabilities(
                      discription:
                          'Monitor public cloud cost effectively and at scale using security tools and use cases to address evolving threats and complex regulatory requirements.',
                      title: 'Employ security monitoring and response',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}

class capabilities extends StatelessWidget {
  String title;
  String discription;
  capabilities({
    Key? key,
    required this.title,
    required this.discription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 10, top: 20),
      child: Container(
        width: 180,
        height: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4,
            )
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 10,
              right: 10,
              bottom: 10,
              child: Text(
                title,
                style: const TextStyle(
                  // color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 55,
              left: 10,
              right: 10,
              bottom: 10,
              child: Text(
                discription,
                style: const TextStyle(
                  // color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ManageDatabase extends StatelessWidget {
  String title;
  String discription;
  ManageDatabase({
    Key? key,
    required this.title,
    required this.discription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 220,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            offset: const Offset(0, 2),
            color: Colors.blueGrey.withOpacity(0.4),
          )
        ],
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              discription,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
