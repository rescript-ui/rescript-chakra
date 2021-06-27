'use strict';

var Jest = require("@glennsl/bs-jest/src/jest.js");
var Chakra = require("../src/Chakra.js");
var Chakra__MakeProps = require("../src/Interfaces/Chakra__MakeProps.js");

function expect(x) {
  return Jest.Expect.expect(x);
}

function toBe(x, __x) {
  return Jest.Expect.toBe(__x, x);
}

function toEqual(x, __x) {
  return Jest.Expect.toEqual(__x, x);
}

Jest.describe("Test MakeProps", (function (param) {
        var testCasesPseudo_0 = [
          Chakra.pseudo(undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, "teal900", undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined),
          {
            color: "teal.900"
          }
        ];
        var testCasesPseudo = {
          hd: testCasesPseudo_0,
          tl: /* [] */0
        };
        Jest.testAll("Chakra UI Theme Color Variant", {
              hd: [
                "black",
                "black"
              ],
              tl: {
                hd: [
                  "white",
                  "white"
                ],
                tl: {
                  hd: [
                    "gray",
                    "gray"
                  ],
                  tl: {
                    hd: [
                      "gray50",
                      "gray.50"
                    ],
                    tl: {
                      hd: [
                        "gray100",
                        "gray.100"
                      ],
                      tl: {
                        hd: [
                          "gray200",
                          "gray.200"
                        ],
                        tl: {
                          hd: [
                            "gray300",
                            "gray.300"
                          ],
                          tl: {
                            hd: [
                              "gray400",
                              "gray.400"
                            ],
                            tl: {
                              hd: [
                                "gray500",
                                "gray.500"
                              ],
                              tl: {
                                hd: [
                                  "gray600",
                                  "gray.600"
                                ],
                                tl: {
                                  hd: [
                                    "gray700",
                                    "gray.700"
                                  ],
                                  tl: {
                                    hd: [
                                      "gray800",
                                      "gray.800"
                                    ],
                                    tl: {
                                      hd: [
                                        "gray900",
                                        "gray.900"
                                      ],
                                      tl: {
                                        hd: [
                                          "red",
                                          "red"
                                        ],
                                        tl: {
                                          hd: [
                                            "red50",
                                            "red.50"
                                          ],
                                          tl: {
                                            hd: [
                                              "red100",
                                              "red.100"
                                            ],
                                            tl: {
                                              hd: [
                                                "red200",
                                                "red.200"
                                              ],
                                              tl: {
                                                hd: [
                                                  "red300",
                                                  "red.300"
                                                ],
                                                tl: {
                                                  hd: [
                                                    "red400",
                                                    "red.400"
                                                  ],
                                                  tl: {
                                                    hd: [
                                                      "red500",
                                                      "red.500"
                                                    ],
                                                    tl: {
                                                      hd: [
                                                        "red600",
                                                        "red.600"
                                                      ],
                                                      tl: {
                                                        hd: [
                                                          "red700",
                                                          "red.700"
                                                        ],
                                                        tl: {
                                                          hd: [
                                                            "red800",
                                                            "red.800"
                                                          ],
                                                          tl: {
                                                            hd: [
                                                              "red900",
                                                              "red.900"
                                                            ],
                                                            tl: {
                                                              hd: [
                                                                "orange",
                                                                "orange"
                                                              ],
                                                              tl: {
                                                                hd: [
                                                                  "orange50",
                                                                  "orange.50"
                                                                ],
                                                                tl: {
                                                                  hd: [
                                                                    "orange100",
                                                                    "orange.100"
                                                                  ],
                                                                  tl: {
                                                                    hd: [
                                                                      "orange200",
                                                                      "orange.200"
                                                                    ],
                                                                    tl: {
                                                                      hd: [
                                                                        "orange300",
                                                                        "orange.300"
                                                                      ],
                                                                      tl: {
                                                                        hd: [
                                                                          "orange400",
                                                                          "orange.400"
                                                                        ],
                                                                        tl: {
                                                                          hd: [
                                                                            "orange500",
                                                                            "orange.500"
                                                                          ],
                                                                          tl: {
                                                                            hd: [
                                                                              "orange600",
                                                                              "orange.600"
                                                                            ],
                                                                            tl: {
                                                                              hd: [
                                                                                "orange700",
                                                                                "orange.700"
                                                                              ],
                                                                              tl: {
                                                                                hd: [
                                                                                  "orange800",
                                                                                  "orange.800"
                                                                                ],
                                                                                tl: {
                                                                                  hd: [
                                                                                    "orange900",
                                                                                    "orange.900"
                                                                                  ],
                                                                                  tl: {
                                                                                    hd: [
                                                                                      "yellow",
                                                                                      "yellow"
                                                                                    ],
                                                                                    tl: {
                                                                                      hd: [
                                                                                        "yellow50",
                                                                                        "yellow50"
                                                                                      ],
                                                                                      tl: {
                                                                                        hd: [
                                                                                          "yellow100",
                                                                                          "yellow.100"
                                                                                        ],
                                                                                        tl: {
                                                                                          hd: [
                                                                                            "yellow200",
                                                                                            "yellow.200"
                                                                                          ],
                                                                                          tl: {
                                                                                            hd: [
                                                                                              "yellow300",
                                                                                              "yellow.300"
                                                                                            ],
                                                                                            tl: {
                                                                                              hd: [
                                                                                                "yellow400",
                                                                                                "yellow.400"
                                                                                              ],
                                                                                              tl: {
                                                                                                hd: [
                                                                                                  "yellow500",
                                                                                                  "yellow.500"
                                                                                                ],
                                                                                                tl: {
                                                                                                  hd: [
                                                                                                    "yellow600",
                                                                                                    "yellow.600"
                                                                                                  ],
                                                                                                  tl: {
                                                                                                    hd: [
                                                                                                      "yellow700",
                                                                                                      "yellow.700"
                                                                                                    ],
                                                                                                    tl: {
                                                                                                      hd: [
                                                                                                        "yellow800",
                                                                                                        "yellow.800"
                                                                                                      ],
                                                                                                      tl: {
                                                                                                        hd: [
                                                                                                          "yellow900",
                                                                                                          "yellow.900"
                                                                                                        ],
                                                                                                        tl: {
                                                                                                          hd: [
                                                                                                            "green",
                                                                                                            "green"
                                                                                                          ],
                                                                                                          tl: {
                                                                                                            hd: [
                                                                                                              "green50",
                                                                                                              "green.50"
                                                                                                            ],
                                                                                                            tl: {
                                                                                                              hd: [
                                                                                                                "green100",
                                                                                                                "green.100"
                                                                                                              ],
                                                                                                              tl: {
                                                                                                                hd: [
                                                                                                                  "green200",
                                                                                                                  "green.200"
                                                                                                                ],
                                                                                                                tl: {
                                                                                                                  hd: [
                                                                                                                    "green300",
                                                                                                                    "green.300"
                                                                                                                  ],
                                                                                                                  tl: {
                                                                                                                    hd: [
                                                                                                                      "green400",
                                                                                                                      "green.400"
                                                                                                                    ],
                                                                                                                    tl: {
                                                                                                                      hd: [
                                                                                                                        "green500",
                                                                                                                        "green.500"
                                                                                                                      ],
                                                                                                                      tl: {
                                                                                                                        hd: [
                                                                                                                          "green600",
                                                                                                                          "green.600"
                                                                                                                        ],
                                                                                                                        tl: {
                                                                                                                          hd: [
                                                                                                                            "green700",
                                                                                                                            "green.700"
                                                                                                                          ],
                                                                                                                          tl: {
                                                                                                                            hd: [
                                                                                                                              "green800",
                                                                                                                              "green.800"
                                                                                                                            ],
                                                                                                                            tl: {
                                                                                                                              hd: [
                                                                                                                                "green900",
                                                                                                                                "green.900"
                                                                                                                              ],
                                                                                                                              tl: {
                                                                                                                                hd: [
                                                                                                                                  "teal",
                                                                                                                                  "teal"
                                                                                                                                ],
                                                                                                                                tl: {
                                                                                                                                  hd: [
                                                                                                                                    "teal50",
                                                                                                                                    "teal.50"
                                                                                                                                  ],
                                                                                                                                  tl: {
                                                                                                                                    hd: [
                                                                                                                                      "teal100",
                                                                                                                                      "teal.100"
                                                                                                                                    ],
                                                                                                                                    tl: {
                                                                                                                                      hd: [
                                                                                                                                        "teal200",
                                                                                                                                        "teal.200"
                                                                                                                                      ],
                                                                                                                                      tl: {
                                                                                                                                        hd: [
                                                                                                                                          "teal300",
                                                                                                                                          "teal.300"
                                                                                                                                        ],
                                                                                                                                        tl: {
                                                                                                                                          hd: [
                                                                                                                                            "teal400",
                                                                                                                                            "teal.400"
                                                                                                                                          ],
                                                                                                                                          tl: {
                                                                                                                                            hd: [
                                                                                                                                              "teal500",
                                                                                                                                              "teal.500"
                                                                                                                                            ],
                                                                                                                                            tl: {
                                                                                                                                              hd: [
                                                                                                                                                "teal600",
                                                                                                                                                "teal.600"
                                                                                                                                              ],
                                                                                                                                              tl: {
                                                                                                                                                hd: [
                                                                                                                                                  "teal700",
                                                                                                                                                  "teal.700"
                                                                                                                                                ],
                                                                                                                                                tl: {
                                                                                                                                                  hd: [
                                                                                                                                                    "teal800",
                                                                                                                                                    "teal.800"
                                                                                                                                                  ],
                                                                                                                                                  tl: {
                                                                                                                                                    hd: [
                                                                                                                                                      "teal900",
                                                                                                                                                      "teal.900"
                                                                                                                                                    ],
                                                                                                                                                    tl: {
                                                                                                                                                      hd: [
                                                                                                                                                        "blue",
                                                                                                                                                        "blue"
                                                                                                                                                      ],
                                                                                                                                                      tl: {
                                                                                                                                                        hd: [
                                                                                                                                                          "blue50",
                                                                                                                                                          "blue.50"
                                                                                                                                                        ],
                                                                                                                                                        tl: {
                                                                                                                                                          hd: [
                                                                                                                                                            "blue100",
                                                                                                                                                            "blue.100"
                                                                                                                                                          ],
                                                                                                                                                          tl: {
                                                                                                                                                            hd: [
                                                                                                                                                              "blue200",
                                                                                                                                                              "blue.200"
                                                                                                                                                            ],
                                                                                                                                                            tl: {
                                                                                                                                                              hd: [
                                                                                                                                                                "blue300",
                                                                                                                                                                "blue.300"
                                                                                                                                                              ],
                                                                                                                                                              tl: {
                                                                                                                                                                hd: [
                                                                                                                                                                  "blue400",
                                                                                                                                                                  "blue.400"
                                                                                                                                                                ],
                                                                                                                                                                tl: {
                                                                                                                                                                  hd: [
                                                                                                                                                                    "blue500",
                                                                                                                                                                    "blue.500"
                                                                                                                                                                  ],
                                                                                                                                                                  tl: {
                                                                                                                                                                    hd: [
                                                                                                                                                                      "blue600",
                                                                                                                                                                      "blue.600"
                                                                                                                                                                    ],
                                                                                                                                                                    tl: {
                                                                                                                                                                      hd: [
                                                                                                                                                                        "blue700",
                                                                                                                                                                        "blue.700"
                                                                                                                                                                      ],
                                                                                                                                                                      tl: {
                                                                                                                                                                        hd: [
                                                                                                                                                                          "blue800",
                                                                                                                                                                          "blue.800"
                                                                                                                                                                        ],
                                                                                                                                                                        tl: {
                                                                                                                                                                          hd: [
                                                                                                                                                                            "blue900",
                                                                                                                                                                            "blue.900"
                                                                                                                                                                          ],
                                                                                                                                                                          tl: {
                                                                                                                                                                            hd: [
                                                                                                                                                                              "cyan",
                                                                                                                                                                              "cyan"
                                                                                                                                                                            ],
                                                                                                                                                                            tl: {
                                                                                                                                                                              hd: [
                                                                                                                                                                                "cyan50",
                                                                                                                                                                                "cyan.50"
                                                                                                                                                                              ],
                                                                                                                                                                              tl: {
                                                                                                                                                                                hd: [
                                                                                                                                                                                  "cyan100",
                                                                                                                                                                                  "cyan.100"
                                                                                                                                                                                ],
                                                                                                                                                                                tl: {
                                                                                                                                                                                  hd: [
                                                                                                                                                                                    "cyan200",
                                                                                                                                                                                    "cyan.200"
                                                                                                                                                                                  ],
                                                                                                                                                                                  tl: {
                                                                                                                                                                                    hd: [
                                                                                                                                                                                      "cyan300",
                                                                                                                                                                                      "cyan.300"
                                                                                                                                                                                    ],
                                                                                                                                                                                    tl: {
                                                                                                                                                                                      hd: [
                                                                                                                                                                                        "cyan400",
                                                                                                                                                                                        "cyan.400"
                                                                                                                                                                                      ],
                                                                                                                                                                                      tl: {
                                                                                                                                                                                        hd: [
                                                                                                                                                                                          "cyan500",
                                                                                                                                                                                          "cyan.500"
                                                                                                                                                                                        ],
                                                                                                                                                                                        tl: {
                                                                                                                                                                                          hd: [
                                                                                                                                                                                            "cyan600",
                                                                                                                                                                                            "cyan.600"
                                                                                                                                                                                          ],
                                                                                                                                                                                          tl: {
                                                                                                                                                                                            hd: [
                                                                                                                                                                                              "cyan700",
                                                                                                                                                                                              "cyan.700"
                                                                                                                                                                                            ],
                                                                                                                                                                                            tl: {
                                                                                                                                                                                              hd: [
                                                                                                                                                                                                "cyan800",
                                                                                                                                                                                                "cyan.800"
                                                                                                                                                                                              ],
                                                                                                                                                                                              tl: {
                                                                                                                                                                                                hd: [
                                                                                                                                                                                                  "cyan900",
                                                                                                                                                                                                  "cyan.900"
                                                                                                                                                                                                ],
                                                                                                                                                                                                tl: {
                                                                                                                                                                                                  hd: [
                                                                                                                                                                                                    "purple",
                                                                                                                                                                                                    "purple"
                                                                                                                                                                                                  ],
                                                                                                                                                                                                  tl: {
                                                                                                                                                                                                    hd: [
                                                                                                                                                                                                      "purple50",
                                                                                                                                                                                                      "purple.50"
                                                                                                                                                                                                    ],
                                                                                                                                                                                                    tl: {
                                                                                                                                                                                                      hd: [
                                                                                                                                                                                                        "purple100",
                                                                                                                                                                                                        "purple.100"
                                                                                                                                                                                                      ],
                                                                                                                                                                                                      tl: {
                                                                                                                                                                                                        hd: [
                                                                                                                                                                                                          "purple200",
                                                                                                                                                                                                          "purple.200"
                                                                                                                                                                                                        ],
                                                                                                                                                                                                        tl: {
                                                                                                                                                                                                          hd: [
                                                                                                                                                                                                            "purple300",
                                                                                                                                                                                                            "purple.300"
                                                                                                                                                                                                          ],
                                                                                                                                                                                                          tl: {
                                                                                                                                                                                                            hd: [
                                                                                                                                                                                                              "purple400",
                                                                                                                                                                                                              "purple.400"
                                                                                                                                                                                                            ],
                                                                                                                                                                                                            tl: {
                                                                                                                                                                                                              hd: [
                                                                                                                                                                                                                "purple500",
                                                                                                                                                                                                                "purple.500"
                                                                                                                                                                                                              ],
                                                                                                                                                                                                              tl: {
                                                                                                                                                                                                                hd: [
                                                                                                                                                                                                                  "purple600",
                                                                                                                                                                                                                  "purple.600"
                                                                                                                                                                                                                ],
                                                                                                                                                                                                                tl: {
                                                                                                                                                                                                                  hd: [
                                                                                                                                                                                                                    "purple700",
                                                                                                                                                                                                                    "purple.700"
                                                                                                                                                                                                                  ],
                                                                                                                                                                                                                  tl: {
                                                                                                                                                                                                                    hd: [
                                                                                                                                                                                                                      "purple800",
                                                                                                                                                                                                                      "purple.800"
                                                                                                                                                                                                                    ],
                                                                                                                                                                                                                    tl: {
                                                                                                                                                                                                                      hd: [
                                                                                                                                                                                                                        "purple900",
                                                                                                                                                                                                                        "purple.900"
                                                                                                                                                                                                                      ],
                                                                                                                                                                                                                      tl: {
                                                                                                                                                                                                                        hd: [
                                                                                                                                                                                                                          "pink",
                                                                                                                                                                                                                          "pink"
                                                                                                                                                                                                                        ],
                                                                                                                                                                                                                        tl: {
                                                                                                                                                                                                                          hd: [
                                                                                                                                                                                                                            "pink50",
                                                                                                                                                                                                                            "pink.50"
                                                                                                                                                                                                                          ],
                                                                                                                                                                                                                          tl: {
                                                                                                                                                                                                                            hd: [
                                                                                                                                                                                                                              "pink100",
                                                                                                                                                                                                                              "pink.100"
                                                                                                                                                                                                                            ],
                                                                                                                                                                                                                            tl: {
                                                                                                                                                                                                                              hd: [
                                                                                                                                                                                                                                "pink200",
                                                                                                                                                                                                                                "pink.200"
                                                                                                                                                                                                                              ],
                                                                                                                                                                                                                              tl: {
                                                                                                                                                                                                                                hd: [
                                                                                                                                                                                                                                  "pink300",
                                                                                                                                                                                                                                  "pink.300"
                                                                                                                                                                                                                                ],
                                                                                                                                                                                                                                tl: {
                                                                                                                                                                                                                                  hd: [
                                                                                                                                                                                                                                    "pink400",
                                                                                                                                                                                                                                    "pink.400"
                                                                                                                                                                                                                                  ],
                                                                                                                                                                                                                                  tl: {
                                                                                                                                                                                                                                    hd: [
                                                                                                                                                                                                                                      "pink500",
                                                                                                                                                                                                                                      "pink.500"
                                                                                                                                                                                                                                    ],
                                                                                                                                                                                                                                    tl: {
                                                                                                                                                                                                                                      hd: [
                                                                                                                                                                                                                                        "pink600",
                                                                                                                                                                                                                                        "pink.600"
                                                                                                                                                                                                                                      ],
                                                                                                                                                                                                                                      tl: {
                                                                                                                                                                                                                                        hd: [
                                                                                                                                                                                                                                          "pink700",
                                                                                                                                                                                                                                          "pink.700"
                                                                                                                                                                                                                                        ],
                                                                                                                                                                                                                                        tl: {
                                                                                                                                                                                                                                          hd: [
                                                                                                                                                                                                                                            "pink800",
                                                                                                                                                                                                                                            "pink.800"
                                                                                                                                                                                                                                          ],
                                                                                                                                                                                                                                          tl: {
                                                                                                                                                                                                                                            hd: [
                                                                                                                                                                                                                                              "pink900",
                                                                                                                                                                                                                                              "pink.900"
                                                                                                                                                                                                                                            ],
                                                                                                                                                                                                                                            tl: /* [] */0
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                            }
                                                                                                                                                                                                                          }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                      }
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                }
                                                                                                                                                                                                              }
                                                                                                                                                                                                            }
                                                                                                                                                                                                          }
                                                                                                                                                                                                        }
                                                                                                                                                                                                      }
                                                                                                                                                                                                    }
                                                                                                                                                                                                  }
                                                                                                                                                                                                }
                                                                                                                                                                                              }
                                                                                                                                                                                            }
                                                                                                                                                                                          }
                                                                                                                                                                                        }
                                                                                                                                                                                      }
                                                                                                                                                                                    }
                                                                                                                                                                                  }
                                                                                                                                                                                }
                                                                                                                                                                              }
                                                                                                                                                                            }
                                                                                                                                                                          }
                                                                                                                                                                        }
                                                                                                                                                                      }
                                                                                                                                                                    }
                                                                                                                                                                  }
                                                                                                                                                                }
                                                                                                                                                              }
                                                                                                                                                            }
                                                                                                                                                          }
                                                                                                                                                        }
                                                                                                                                                      }
                                                                                                                                                    }
                                                                                                                                                  }
                                                                                                                                                }
                                                                                                                                              }
                                                                                                                                            }
                                                                                                                                          }
                                                                                                                                        }
                                                                                                                                      }
                                                                                                                                    }
                                                                                                                                  }
                                                                                                                                }
                                                                                                                              }
                                                                                                                            }
                                                                                                                          }
                                                                                                                        }
                                                                                                                      }
                                                                                                                    }
                                                                                                                  }
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }, (function (param) {
                var result = Chakra__MakeProps.Color.identity(param[0]);
                var x = Jest.Expect.expect(result);
                return Jest.Expect.toBe(param[1], x);
              }));
        return Jest.testAll("Pseudo Creation", testCasesPseudo, (function (param) {
                      var x = Jest.Expect.expect(param[0]);
                      return Jest.Expect.toEqual(param[1], x);
                    }));
      }));

var pseudo = Chakra.pseudo;

exports.expect = expect;
exports.toBe = toBe;
exports.toEqual = toEqual;
exports.pseudo = pseudo;
/*  Not a pure module */
