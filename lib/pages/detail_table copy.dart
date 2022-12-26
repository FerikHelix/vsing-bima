import 'package:flutter/material.dart';
import 'package:vsing/style/color_constant.dart';

class TableDetails extends StatefulWidget {
  const TableDetails({super.key});

  @override
  State<TableDetails> createState() => _TableDetailsState();
}

class _TableDetailsState extends State<TableDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Remove appbar shadow / elevated effects
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const Center(child: _VsingClubLogo()),
            const Text(
              "Vsing Club",
              style: TextStyle(
                color: Color(primaryColor),
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 5),
              child: Text(
                "Name",
                style: TextStyle(
                  color: Color(primaryColor),
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 40),
              child: _userName(),
            ),
            const _pax(),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: _table(),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40, bottom: 20),
              child: _pickDate(),
            ),
            Container(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Color(primaryColor)),
                ),
                child: const Text(
                  "CONFIRM",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _VsingClubLogo extends StatelessWidget {
  const _VsingClubLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      decoration: const BoxDecoration(
        // [TODO] Add image Vsing image here
        // image: DecorationImage(image: ),
        color: Color(primaryColor),
        shape: BoxShape.circle,
      ),
      // [INFO] For now placeholder user image
      child: const Icon(
        Icons.person,
        color: Colors.white,
        size: 100,
      ),
    );
  }
}

class _userName extends StatelessWidget {
  const _userName({
    super.key,
    this.username = "Agung",
  });
  final String username;
  @override
  Widget build(BuildContext context) {
    return Text(
      username,
      style: const TextStyle(
        color: Color(primaryColor),
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _pax extends StatefulWidget {
  const _pax({super.key});

  @override
  State<_pax> createState() => _paxState();
}

class _paxState extends State<_pax> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Pax",
          style: TextStyle(
            color: Color(primaryColor),
            fontSize: 20,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              count.toString(),
              style: const TextStyle(
                color: Color(primaryColor),
                fontSize: 20,
              ),
            ),
            Column(
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      count += 1;
                    });
                  },
                  child: const Text(
                    "+",
                    style: TextStyle(
                      color: Color(primaryColor),
                      fontSize: 20,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      if (count > 0) {
                        count -= 1;
                      } else {
                        // do nothing
                      }
                    });
                  },
                  child: const Text(
                    "-",
                    style: TextStyle(
                      color: Color(primaryColor),
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}

class _table extends StatefulWidget {
  const _table({super.key});

  @override
  State<_table> createState() => __tableState();
}

class __tableState extends State<_table> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Table",
          style: TextStyle(
            color: Color(primaryColor),
            fontSize: 20,
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: const ButtonStyle(
            backgroundColor:
                MaterialStatePropertyAll<Color>(Color(primaryColor)),
          ),
          child: const Text(
            "CHOOSE TABLE",
          ),
        ),
      ],
    );
  }
}

class _pickDate extends StatefulWidget {
  const _pickDate({super.key});

  @override
  State<_pickDate> createState() => __pickDateState();
}

class __pickDateState extends State<_pickDate> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Choose Date & Time",
          style: TextStyle(
            color: Color(primaryColor),
            fontSize: 20,
          ),
        ),
        Container(
          width: 150,
          // height: 100,
          child: ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll<Color>(Color(primaryColor)),
            ),
            child: 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.date_range),
                Text(
                  "Pick a date",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
