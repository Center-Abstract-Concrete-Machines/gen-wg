{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 929.0, 112.0, 1502.0, 1164.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"args" : [ "phys-duration" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-34",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "rtt.sequence.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 338.0, 992.0, 294.0, 105.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 32.101036310195923, 490.927460074424744, 294.0, 105.0 ],
					"varname" : "phys-duration",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 530.860284447669983, 545.293563304347799, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 651.0, 53.0, 106.0, 22.0 ],
					"text" : "gen~ go.ramp2trig"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 651.0, 309.0, 35.0, 22.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 647.0, 152.0, 48.0, 136.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 647.0, 98.796298384666443, 114.0, 22.0 ],
					"text" : "gen~ go.simple.kick"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-22",
					"maxclass" : "number~",
					"mode" : 2,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 314.0, 965.393153431015207, 56.0, 22.0 ],
					"sig" : 0.0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-14",
					"maxclass" : "number~",
					"mode" : 2,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 206.0, 791.893153431015207, 56.0, 22.0 ],
					"sig" : 0.0
				}

			}
, 			{
				"box" : 				{
					"args" : [ "phys-velocity" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-84",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "rtt.sequence.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 258.5, 849.0, 294.0, 105.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 32.101036310195923, 373.0, 294.0, 105.0 ],
					"varname" : "phys-velocity",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bubblesize" : 14,
					"id" : "obj-82",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "preset", "int", "preset", "int", "" ],
					"patching_rect" : [ 718.0, 255.0, 189.0, 76.0 ],
					"pattrstorage" : "phys-storage",
					"presentation" : 1,
					"presentation_rect" : [ 184.0, 99.782608695652243, 105.0, 76.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-75",
					"maxclass" : "number~",
					"mode" : 2,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 225.934377074241638, 648.175762126667451, 56.0, 22.0 ],
					"sig" : 0.0
				}

			}
, 			{
				"box" : 				{
					"args" : [ "scala-phys" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-73",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "rtt.scala.maxpat",
					"numinlets" : 1,
					"numoutlets" : 4,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "signal", "" ],
					"patching_rect" : [ 185.0, 706.0, 143.0, 78.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 33.101036310195923, 621.927460074424744, 143.0, 78.0 ],
					"varname" : "scala-phys",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ "notes-phys" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-72",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "rtt.notes.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "" ],
					"patching_rect" : [ 185.0, 526.0, 294.0, 105.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 32.101036310195923, 260.393153431015207, 294.0, 105.0 ],
					"varname" : "notes-phys",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ "loop-phys" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-71",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "rtt.loop.maxpat",
					"numinlets" : 1,
					"numoutlets" : 6,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "" ],
					"patching_rect" : [ 160.0, 354.0, 144.0, 78.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 32.101036310195923, 99.782608695652243, 144.0, 78.0 ],
					"varname" : "loop-phys",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ "euc-phys" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-68",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "rtt.euclidean.maxpat",
					"numinlets" : 3,
					"numoutlets" : 4,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "signal", "" ],
					"patching_rect" : [ 185.0, 444.0, 257.0, 59.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 32.101036310195923, 187.0, 257.0, 59.0 ],
					"varname" : "euc-phys",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bubbleside" : 2,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 363.434377074241638, 150.314818263053894, 201.0, 20.0 ],
					"text" : "invisible pattr for remote control"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 630.082507908344269, 453.0, 77.0, 22.0 ],
					"text" : "clientwindow"
				}

			}
, 			{
				"box" : 				{
					"autorestore" : "phys-storage.json",
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 630.082507908344269, 481.0, 207.0, 22.0 ],
					"priority" : 					{
						"euc-phys::m::pattern" : -1,
						"euc-phys::m::events" : 1,
						"euc-phys::m::rotate" : 2,
						"notes-phys::m::seq-length" : -1,
						"notes-phys::m::sequence/raw" : 1,
						"phys-velocity::m::sequence/scaled" : -1,
						"phys-velocity::m::seq-length" : -1,
						"phys-velocity::m::sequence/raw" : 1,
						"phys-duration::m::sequence/scaled" : -1,
						"phys-duration::m::seq-length" : -1,
						"phys-duration::m::sequence/raw" : 1
					}
,
					"saved_object_attributes" : 					{
						"client_rect" : [ 311, 215, 857, 1014 ],
						"parameter_enable" : 0,
						"parameter_mappable" : 0,
						"storage_rect" : [ 583, 69, 1034, 197 ]
					}
,
					"text" : "pattrstorage phys-storage @greedy 1",
					"varname" : "phys-storage"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 559.5, 1207.853383839130402, 138.0, 22.0 ],
					"text" : "expr ((($f1 + 1.)/2.)*127)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 8,
					"outlettype" : [ "", "", "", "int", "int", "", "int", "" ],
					"patching_rect" : [ 493.0, 1169.853383839130402, 112.0, 22.0 ],
					"text" : "midiparse @hires 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 559.5, 1240.853383839130402, 52.0, 22.0 ],
					"text" : "bendout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 308.491526365280151, 101.314818263053894, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 308.491526365280151, 129.314818263053894, 123.0, 22.0 ],
					"text" : "port US-2x2-HR MIDI"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 160.0, 70.370370030403137, 87.0, 22.0 ],
					"text" : "loadmess 140."
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-49",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 160.0, 98.796298384666443, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 273.074073612689972, 170.834867894649506, 47.0, 22.0 ],
					"text" : "midiout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "", "int" ],
					"patching_rect" : [ 160.0, 129.314818263053894, 132.074073612689972, 22.0 ],
					"text" : "sync~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 242.5, 1169.853383839130402, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-115",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 63.22020697593689, 175.886011242866516, 34.0, 22.0 ],
									"text" : "pack"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-114",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 133.22020697593689, 176.886011242866516, 50.0, 22.0 ],
									"text" : "53"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-109",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 238.886011242866516, 122.0, 22.0 ],
									"text" : "expr (($i1 / 127.)*10.)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-108",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 63.22020697593689, 199.886011242866516, 53.0, 22.0 ],
									"text" : "route 16"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-107",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 56.22020697593689, 139.886011242866516, 41.0, 22.0 ],
									"text" : "buddy"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-102",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "int", "int" ],
									"patching_rect" : [ 63.22020697593689, 100.0, 40.0, 22.0 ],
									"text" : "ctlin"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-60",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 49.999991975936837, 320.886011242866516, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-107", 0 ],
									"source" : [ "obj-102", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-107", 1 ],
									"source" : [ "obj-102", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-115", 1 ],
									"source" : [ "obj-107", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-115", 0 ],
									"source" : [ "obj-107", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-109", 0 ],
									"order" : 1,
									"source" : [ "obj-108", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-114", 1 ],
									"order" : 0,
									"source" : [ "obj-108", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"source" : [ "obj-109", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-108", 0 ],
									"source" : [ "obj-115", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 718.0, 188.0, 105.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p korgnanokontrol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-97",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 96.253883481025696, 320.621761083602905, 29.5, 22.0 ],
									"text" : "+ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-92",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 96.253883481025696, 399.165802478790283, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-90",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 96.253883481025696, 375.165802478790283, 72.0, 22.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-84",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 50.0, 243.746113657951355, 47.0, 22.0 ],
									"text" : "unpack"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-77",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 96.253883481025696, 349.637305021286011, 57.0, 22.0 ],
									"text" : "pack 0 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 84.5, 272.621761083602905, 149.0, 22.0 ],
									"text" : "expr floor(($i1 / 127.)*$f2)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 213.132120609283447, 296.621761083602905, 47.0, 22.0 ],
									"text" : "unpack"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 134.256476402282715, 320.621761083602905, 93.0, 22.0 ],
									"text" : "expr ($i1 / 127.)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 85.0, 176.0, 34.0, 22.0 ],
									"text" : "pack"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-55",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 78.0, 139.0, 41.0, 22.0 ],
									"text" : "buddy"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 84.5, 206.0, 81.0, 22.0 ],
									"text" : "routepass 1 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 245.821243286132812, 314.81347131729126, 50.0, 22.0 ],
									"text" : "16"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "int", "int" ],
									"patching_rect" : [ 78.0, 100.0, 40.0, 22.0 ],
									"text" : "ctlin"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-52",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 214.499991975936837, 39.999998242866518, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-58",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 90.253897975936866, 483.16579624286652, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"source" : [ "obj-16", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 1 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 1 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"source" : [ "obj-53", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 1 ],
									"source" : [ "obj-55", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 1 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"source" : [ "obj-69", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-97", 0 ],
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-90", 0 ],
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"source" : [ "obj-84", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"order" : 0,
									"source" : [ "obj-90", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-92", 0 ],
									"order" : 1,
									"source" : [ "obj-90", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-92", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 0 ],
									"source" : [ "obj-97", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 714.860284447669983, 218.813471074424797, 89.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p korgnanopad"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 201.5, 170.834867894649506, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 183.0, 1208.853383839130402, 47.0, 22.0 ],
					"text" : "buddy"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 183.0, 1169.853383839130402, 47.0, 22.0 ],
					"text" : "unpack"
				}

			}
, 			{
				"box" : 				{
					"activelinecolor" : [ 0.792156862745098, 0.792156862745098, 0.031372549019608, 1.0 ],
					"id" : "obj-46",
					"maxclass" : "live.scope~",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 273.074073612689972, 269.025138258934021, 184.0, 68.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 32.101036310195923, 19.427460074424744, 184.0, 68.0 ],
					"range" : [ -0.1, 1.1 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 201.5, 196.131164968013763, 29.5, 22.0 ],
					"text" : "4"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.792156862745098, 0.792156862745098, 0.031372549019608, 1.0 ],
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 183.0, 1120.186716735363007, 329.0, 22.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "rtt.makenote~ makenote-phys @duration 500 @velocity 100",
					"varname" : "rnbo~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 160.0, 231.983017086982727, 102.0, 22.0 ],
					"text" : "gen~ go.ramp.div"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 242.5, 1208.853383839130402, 123.0, 22.0 ],
					"text" : "port US-2x2-HR MIDI"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 183.0, 1261.853383839130402, 75.0, 22.0 ],
					"text" : "noteout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 530.860284447669983, 578.893153431015207, 100.0, 50.0 ],
					"restore" : [ 5 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr @bindto euc-phys::m::events @invisible 1",
					"varname" : "u215002817"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 642.5, 578.893153431015207, 100.0, 64.0 ],
					"restore" : [ 5.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr @bindto phys-velocity::m::seq-length @invisible 1",
					"varname" : "u970002821"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 762.5, 578.893153431015207, 100.0, 64.0 ],
					"restore" : [ 6.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr @bindto phys-duration::m::seq-length @invisible 1",
					"varname" : "u268003346"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"order" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"order" : 1,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-11", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 1 ],
					"source" : [ "obj-13", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"order" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"order" : 1,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-17", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"order" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"order" : 1,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"order" : 1,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"order" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-25", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"order" : 2,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"order" : 1,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"order" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 2 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 1 ],
					"source" : [ "obj-50", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"source" : [ "obj-51", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 4 ],
					"source" : [ "obj-68", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"order" : 2,
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"order" : 1,
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"order" : 0,
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-71", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"order" : 1,
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"order" : 0,
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"order" : 0,
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"order" : 1,
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"order" : 0,
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 1 ],
					"order" : 1,
					"source" : [ "obj-84", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-13" : [ "live.gain~", "live.gain~", 0 ],
			"obj-34::obj-18::obj-14" : [ "live.numbox[24]", "live.numbox[19]", 0 ],
			"obj-34::obj-18::obj-2" : [ "live.button[17]", "live.button", 0 ],
			"obj-34::obj-18::obj-38::obj-1" : [ "live.numbox[21]", "live.numbox[19]", 0 ],
			"obj-34::obj-18::obj-38::obj-16" : [ "live.numbox[22]", "live.numbox[19]", 0 ],
			"obj-34::obj-18::obj-38::obj-20" : [ "live.numbox[23]", "live.numbox[19]", 0 ],
			"obj-34::obj-18::obj-38::obj-22" : [ "live.numbox[20]", "live.numbox[19]", 0 ],
			"obj-34::obj-18::obj-9" : [ "live.text[7]", "live.text", 0 ],
			"obj-34::obj-2::obj-25" : [ "live.button[14]", "live.button", 0 ],
			"obj-68::obj-18::obj-12" : [ "trig increment[33]", "trig inc", 0 ],
			"obj-68::obj-18::obj-165" : [ "trig increment[2]", "trig inc", 0 ],
			"obj-68::obj-18::obj-2" : [ "live.button[85]", "live.button", 0 ],
			"obj-68::obj-18::obj-28::obj-236" : [ "sequence viewer[1]", "sequence viewer", 0 ],
			"obj-68::obj-18::obj-28::obj-3::obj-16" : [ "live.menu[12]", "live.menu", 0 ],
			"obj-68::obj-18::obj-28::obj-3::obj-18" : [ "live.menu[10]", "live.menu", 0 ],
			"obj-68::obj-18::obj-28::obj-3::obj-22" : [ "live.menu[11]", "live.menu", 0 ],
			"obj-68::obj-18::obj-29" : [ "sequence length[2]", "steps", 2 ],
			"obj-68::obj-18::obj-33" : [ "sequence trigs[1]", "trigs", 1 ],
			"obj-68::obj-18::obj-34" : [ "sequence rotate[4]", "rotate", 3 ],
			"obj-68::obj-18::obj-7" : [ "trig increment[1]", "trig inc", 0 ],
			"obj-68::obj-18::obj-9" : [ "live.text[50]", "live.text", 0 ],
			"obj-68::obj-2::obj-25" : [ "live.button[16]", "live.button", 0 ],
			"obj-71::obj-6::obj-2" : [ "live.button[8]", "live.button", 0 ],
			"obj-71::obj-6::obj-30" : [ "live.text[9]", "live.text", 0 ],
			"obj-71::obj-6::obj-34::obj-10" : [ "live.numbox[12]", "live.numbox", 0 ],
			"obj-71::obj-6::obj-34::obj-11" : [ "live.menu[2]", "live.menu", 0 ],
			"obj-71::obj-6::obj-34::obj-12" : [ "live.text[3]", "live.text[2]", 0 ],
			"obj-71::obj-6::obj-34::obj-14" : [ "live.numbox[6]", "live.numbox", 0 ],
			"obj-71::obj-6::obj-34::obj-18" : [ "live.numbox[11]", "live.numbox", 0 ],
			"obj-71::obj-6::obj-34::obj-29" : [ "live.text[2]", "live.text", 0 ],
			"obj-71::obj-6::obj-34::obj-8" : [ "live.numbox[7]", "live.numbox", 0 ],
			"obj-71::obj-93::obj-25" : [ "live.button[9]", "live.button", 0 ],
			"obj-72::obj-18::obj-14" : [ "live.numbox[16]", "live.numbox[19]", 0 ],
			"obj-72::obj-18::obj-2" : [ "live.button[7]", "live.button", 0 ],
			"obj-72::obj-18::obj-38::obj-16" : [ "live.numbox[13]", "live.numbox[19]", 0 ],
			"obj-72::obj-18::obj-38::obj-20" : [ "live.numbox[15]", "live.numbox[19]", 0 ],
			"obj-72::obj-18::obj-38::obj-22" : [ "live.numbox[14]", "live.numbox[19]", 0 ],
			"obj-72::obj-18::obj-38::obj-5" : [ "live.text[4]", "live.text[56]", 0 ],
			"obj-72::obj-18::obj-9" : [ "live.text[5]", "live.text", 0 ],
			"obj-72::obj-2::obj-25" : [ "live.button[10]", "live.button", 0 ],
			"obj-73::obj-6::obj-10" : [ "live.text[6]", "live.text[14]", 0 ],
			"obj-73::obj-6::obj-15" : [ "live.numbox[17]", "live.numbox[3]", 0 ],
			"obj-73::obj-6::obj-2" : [ "live.button[12]", "live.button", 0 ],
			"obj-73::obj-6::obj-25" : [ "live.numbox[19]", "live.numbox", 0 ],
			"obj-73::obj-6::obj-27" : [ "live.numbox[18]", "live.numbox[3]", 0 ],
			"obj-73::obj-93::obj-25" : [ "live.button[11]", "live.button", 0 ],
			"obj-84::obj-18::obj-14" : [ "live.numbox[109]", "live.numbox[19]", 0 ],
			"obj-84::obj-18::obj-2" : [ "live.button[51]", "live.button", 0 ],
			"obj-84::obj-18::obj-38::obj-1" : [ "live.numbox[84]", "live.numbox[19]", 0 ],
			"obj-84::obj-18::obj-38::obj-16" : [ "live.numbox[108]", "live.numbox[19]", 0 ],
			"obj-84::obj-18::obj-38::obj-20" : [ "live.numbox[86]", "live.numbox[19]", 0 ],
			"obj-84::obj-18::obj-38::obj-22" : [ "live.numbox[85]", "live.numbox[19]", 0 ],
			"obj-84::obj-18::obj-9" : [ "live.text[13]", "live.text", 0 ],
			"obj-84::obj-2::obj-25" : [ "live.button[13]", "live.button", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"parameter_overrides" : 			{
				"obj-34::obj-18::obj-14" : 				{
					"parameter_longname" : "live.numbox[24]"
				}
,
				"obj-34::obj-18::obj-2" : 				{
					"parameter_longname" : "live.button[17]"
				}
,
				"obj-34::obj-18::obj-38::obj-1" : 				{
					"parameter_longname" : "live.numbox[21]"
				}
,
				"obj-34::obj-18::obj-38::obj-16" : 				{
					"parameter_longname" : "live.numbox[22]"
				}
,
				"obj-34::obj-18::obj-38::obj-20" : 				{
					"parameter_longname" : "live.numbox[23]"
				}
,
				"obj-34::obj-18::obj-38::obj-22" : 				{
					"parameter_longname" : "live.numbox[20]"
				}
,
				"obj-34::obj-18::obj-9" : 				{
					"parameter_longname" : "live.text[7]"
				}
,
				"obj-34::obj-2::obj-25" : 				{
					"parameter_longname" : "live.button[14]"
				}
,
				"obj-71::obj-6::obj-2" : 				{
					"parameter_longname" : "live.button[8]"
				}
,
				"obj-71::obj-6::obj-34::obj-10" : 				{
					"parameter_longname" : "live.numbox[12]"
				}
,
				"obj-71::obj-6::obj-34::obj-12" : 				{
					"parameter_longname" : "live.text[3]"
				}
,
				"obj-71::obj-6::obj-34::obj-18" : 				{
					"parameter_longname" : "live.numbox[11]"
				}
,
				"obj-71::obj-6::obj-34::obj-29" : 				{
					"parameter_longname" : "live.text[2]"
				}
,
				"obj-71::obj-93::obj-25" : 				{
					"parameter_longname" : "live.button[9]"
				}
,
				"obj-72::obj-18::obj-14" : 				{
					"parameter_longname" : "live.numbox[16]"
				}
,
				"obj-72::obj-18::obj-2" : 				{
					"parameter_longname" : "live.button[7]"
				}
,
				"obj-72::obj-18::obj-38::obj-16" : 				{
					"parameter_longname" : "live.numbox[13]"
				}
,
				"obj-72::obj-18::obj-38::obj-20" : 				{
					"parameter_longname" : "live.numbox[15]"
				}
,
				"obj-72::obj-18::obj-38::obj-22" : 				{
					"parameter_longname" : "live.numbox[14]"
				}
,
				"obj-72::obj-18::obj-38::obj-5" : 				{
					"parameter_longname" : "live.text[4]"
				}
,
				"obj-72::obj-18::obj-9" : 				{
					"parameter_longname" : "live.text[5]"
				}
,
				"obj-72::obj-2::obj-25" : 				{
					"parameter_longname" : "live.button[10]"
				}
,
				"obj-73::obj-6::obj-10" : 				{
					"parameter_longname" : "live.text[6]"
				}
,
				"obj-73::obj-6::obj-15" : 				{
					"parameter_longname" : "live.numbox[17]"
				}
,
				"obj-73::obj-6::obj-2" : 				{
					"parameter_longname" : "live.button[12]"
				}
,
				"obj-73::obj-6::obj-25" : 				{
					"parameter_longname" : "live.numbox[19]"
				}
,
				"obj-73::obj-6::obj-27" : 				{
					"parameter_longname" : "live.numbox[18]"
				}
,
				"obj-73::obj-93::obj-25" : 				{
					"parameter_longname" : "live.button[11]"
				}
,
				"obj-84::obj-2::obj-25" : 				{
					"parameter_longname" : "live.button[13]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "go.latchsync.gendsp",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/GeneratingSoundAndOrganizingTime/patchers",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/GeneratingSoundAndOrganizingTime/patchers",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "go.ramp.div.gendsp",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/GeneratingSoundAndOrganizingTime/patchers",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/GeneratingSoundAndOrganizingTime/patchers",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "go.ramp2slope.gendsp",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/GeneratingSoundAndOrganizingTime/patchers",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/GeneratingSoundAndOrganizingTime/patchers",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "go.ramp2trig.gendsp",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/GeneratingSoundAndOrganizingTime/patchers",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/GeneratingSoundAndOrganizingTime/patchers",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "go.simple.kick.gendsp",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/GeneratingSoundAndOrganizingTime/patchers",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/GeneratingSoundAndOrganizingTime/patchers",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "phys-storage.json",
				"bootpath" : "C:/GitHub/resume/gen-wg/glj/drum-sequencer",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rtt.euclidean.maxpat",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/euclidean",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/euclidean",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rtt.euclidean.model.maxpat",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/euclidean",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/euclidean",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rtt.euclidean.presets.xml",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/euclidean",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/euclidean",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "rtt.euclidean.view.maxpat",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/euclidean",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/euclidean",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rtt.euclidean~.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "rtt.loop.maxpat",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/loop",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/loop",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rtt.loop.model.maxpat",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/loop",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/loop",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rtt.loop.presets.xml",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/loop",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/loop",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "rtt.loop.view.maxpat",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/loop",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/loop",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rtt.loop~.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "rtt.makenote~.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "rtt.module.attrchecker.maxpat",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/module-components",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/module-components",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rtt.module.control.js",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/javascript",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "rtt.module.control.maxpat",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/module-components",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/module-components",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rtt.module.patternmodeview.maxpat",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/module-components",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/module-components",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rtt.module.patternview.maxpat",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/module-components",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/module-components",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rtt.module.remote.maxpat",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/module-components",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/module-components",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rtt.module.viewcontrol.maxpat",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/module-components",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/module-components",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rtt.notes.maxpat",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/notes",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/notes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rtt.notes.model.maxpat",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/notes",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/notes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rtt.notes.view.maxpat",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/notes",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/notes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rtt.notes~.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "rtt.scala.maxpat",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/scala",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/scala",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rtt.scala.model.maxpat",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/scala",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/scala",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rtt.scala.parser.maxpat",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/scala",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/scala",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rtt.scala.view.maxpat",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/scala",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/scala",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rtt.scala~.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "rtt.sequence.maxpat",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/sequence",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/sequence",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rtt.sequence.model.maxpat",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/sequence",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/sequence",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rtt.sequence.view.maxpat",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/sequence",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/patchers/modules/sequence",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rtt.sequence~.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "tri-down.svg",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/media/icons",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/media/icons",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "tri-up.svg",
				"bootpath" : "~/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/media/icons",
				"patcherrelativepath" : "../../../../../Users/galajo/OneDrive/Documents/Max 8/Packages/Rhythm and Time Toolkit/media/icons",
				"type" : "svg",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
