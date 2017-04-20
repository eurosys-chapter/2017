---
layout: default
title: Conference program
permalink: /program/
published: true
---

# Conference Program

Conference program is available below.

The program is now also available in our <a href="https://whova.com/portal/euros_201704" target="_blank">EuroSys2017 App</a> powered by Whova.

**Note that, with the exception of the banquet dinner on Tuesday evening, all events take place in the conference hotel - Crowne Plaza Belgrade.**

{::options parse_block_html="true" /}

<link rel='stylesheet' href='//cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.2.0/fullcalendar.min.css' />
<link rel='stylesheet' href='//cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.2.0/fullcalendar.print.css' media='print' />

<script type='text/javascript' src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.17.1/moment.min.js"></script>
<script type='text/javascript' src="//cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.2.0/fullcalendar.min.js"></script>
<script type='text/javascript' src="//cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.2.0/locale-all.js"></script>
<script type='text/javascript' src="//cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.2.0/gcal.js"></script>

<script type='text/javascript'>

$(document).ready(function() {
	$('#calendar').fullCalendar({
		height: 'auto',
		googleCalendarApiKey: 'AIzaSyA0YUe8y8mnQyVLu1Ppzq2MfIGHk-m8uCo',
		events: {
			googleCalendarId: 'nvbflrhq1mj927bg0eujft8sec@group.calendar.google.com'
		},
		defaultDate: '2017-04-23',
		locale: 'en-ie',
		columnFormat: 'ddd D MMMM',
		views: {
			agendaFourDay: {
				type: 'agenda',
				duration: { days: 4 }
			}
		},
		defaultView: 'agendaFourDay',
		header: {
			left: '',
			center: '',
			right: ''
		},
		firstDay: 1,
		allDaySlot: false,
		minTime: '08:00',
		maxTime: '23:00',
                eventRender: function (event, element) {
                        if (event.title.search("Coffee break|Lunch")!=-1) {
                            element.css('background-color', "#6175A2");

                        } else if (event.title.search("Registration|Opening|Closing|Assembly")!=-1) {
                            element.css('background-color', "#bb4a62");

                        } else if (event.title.search("Banquet|Poster|Reception")!=-1) {
                            element.css('background-color', "#6bb046");

                        } else if (event.title.search("Workshop")!=-1) {
                            element.css('background-color', "#caa250");
                        } else
                            element.css('background-color', "#3e5487");
                },
		eventClick: function(event) {
			window.location.hash = event.id;
			return false;
		}
	});

    $('#calendar-list').fullCalendar({
        googleCalendarApiKey: 'AIzaSyA0YUe8y8mnQyVLu1Ppzq2MfIGHk-m8uCo',
        events: {
            googleCalendarId: 'nvbflrhq1mj927bg0eujft8sec@group.calendar.google.com'
        },
        defaultDate: '2017-04-23',
		locale: 'en-ie',
		listDayFormat: 'dddd, D MMMM',
        views: {
            agendaFourList: {
                type: 'list',
                duration: { days: 4 }
            }
        },
        defaultView: 'agendaFourList',
        header: {
            left: '',
            center: '',
            right: ''
        },
        eventRender: function (event, element) {
            event.url = null;
            element.removeClass('fc-has-url')
            element.find('.fc-list-item-time').wrapInner("<h3></h3>");
            element.find('.fc-list-item-marker').remove();
            
            element.find('.fc-list-item-title').empty();
            element.find('.fc-list-item-title').append("<h3 id=\""+event.id+"\">"+event.title+"</h3>");

            if (typeof(event.description) != 'undefined') {
                element.find('.fc-list-item-title').append("<div>"+event.description+"</div>");
            }
        }
	});
});

</script>

# Conference at a Glance

<div id='calendar'></div>

Download:
[iCal](https://calendar.google.com/calendar/ical/nvbflrhq1mj927bg0eujft8sec%40group.calendar.google.com/public/basic.ics){:.label.label-success target="_blank"}
[HTML](https://calendar.google.com/calendar/embed?src=nvbflrhq1mj927bg0eujft8sec%40group.calendar.google.com&ctz=Europe/Zurich){:.label.label-info target="_blank"}

<div id='calendar-list'></div>
