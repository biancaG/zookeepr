<h1>List person</h1>

<table>

% if len(c.person_collection) > 0:
<tr>
<th>Handle</th>
<th>Email</th>
<th>First Name</th>
<th>Last Name</th>
<th>Phone</th>
<th>Fax</th>
</tr>
% #endif

% for p in c.person_collection:
<tr>
	<td><% h.link_to(p.handle, url=h.url(action='view', id=p.handle)) %></td>
	<td><% p.email_address %></td>
	<td><% p.firstname %></td>
	<td><% p.lastname %></td>
	<td><% p.phone %></td>
	<td><% p.fax %></td>

% 	if c.can_edit:
%		for action in ['edit', 'delete']:
	<td><% h.link_to(action, url=h.url(action=action, id=p.handle)) %></td>
%		# endif
%	 #endfor
</tr>
% #endfor
</table>


<%python>
#if c.person_pages.current.previous:
#    m.write(h.link_to('Previous page', url=h.url(page=c.person_pages.current.previous)) + '  ')
#if c.person_pages.current.next:
#    m.write(h.link_to('Next page', url=h.url(page=c.person_pages.current.next)))

m.write('<br />')
if c.can_edit:
    m.write(h.link_to('New person', url=h.url(action='new')))
</%python>