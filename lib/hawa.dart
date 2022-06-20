                  FutureBuilder<List<Business>>(
                                future: ApiService().getUser(),
                                builder: (context, snap) {
                                  if (snap.hasData) {
                                    final List<Business> data = snap.data!;
                                    return DropdownButtonFormField<Business>(
                                        menuMaxHeight: 400,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            labelText: 'Business Type',
                                            prefixIcon: const Icon(
                                              Icons.email,
                                              color: Colors.orange,
                                            ),
                                            hintText: "Business Type"),
                                        items: [
                                          ...data.map(
                                            (e) => DropdownMenuItem(
                                              value: e,
                                              child: Text(e.businessNepaliname),
                                            ),
                                          )
                                        ],
                                        onChanged: (value) {
                                          businesstypeid.text =
                                              '${value!.indexbusiness}';
                                        });
                                  } else {
                                    return const LinearProgressIndicator();
                                  }
                                },
                              )




                               FutureBuilder<List<Gender>>(
                            future: ApiGender().getData(),
                            builder: (context, snap) {
                              if (snap.hasData) {
                                final List<Gender> data = snap.data!;
                                return DropdownButtonFormField<Gender>(
                                    menuMaxHeight: 400,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        labelText: 'Gender',
                                        prefixIcon: const Icon(
                                          Icons.email,
                                          color: Colors.orange,
                                        ),
                                        hintText: " Gender "),
                                    items: [
                                      ...data.map(
                                        (e) => DropdownMenuItem(
                                          value: e,
                                          child: Text(e.nepalNamegender),
                                        ),
                                      )
                                    ],
                                    onChanged: (value) {
                                      genderPersonal.text =
                                          value!.nepalNamegender;
                                    });
                              } else {
                                return const LinearProgressIndicator();
                              }
                            },
                          ),



                            FutureBuilder<List<BloodGroup>>(
                            future: Apiblood().getData(),
                            builder: (context, snap) {
                              if (snap.hasData) {
                                final List<BloodGroup> data = snap.data!;
                                return DropdownButtonFormField<BloodGroup>(
                                    menuMaxHeight: 400,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        labelText: ' Select Blood Group',
                                        prefixIcon: const Icon(
                                          Icons.email,
                                          color: Colors.orange,
                                        ),
                                        hintText: " Select Blood Group "),
                                    items: [
                                      ...data.map(
                                        (e) => DropdownMenuItem(
                                          value: e,
                                          child: Text(e.bloodname),
                                        ),
                                      )
                                    ],
                                    onChanged: (value) {
                                      genderPersonal.text = '${value!.bloodid}';
                                    });
                              } else {
                                return const LinearProgressIndicator();
                              }
                            },
                          ),