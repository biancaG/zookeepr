<p><label for="submission.title">Title:</label><br />
<% h.text_field('submission.title', c.submission.title, size=80) %></p>

<p>
<label for="submission.submission_type">Type:</label>
#<span class="fielddesc">What sort of submission is this?</span>
<br />

% for st in c.submission_types:
%	if c.submission.submission_type:
%		czeched = st == c.submission.submission_type
%	else:
%		czeched = False
%	#endif
%	print czeched
%	print h.radio_button('foo', st.id, checked=czeched)

# WHY THE FUCK DOESN'T THIS LINE DO WHAT I WANT?  FUCK FUCK FUCK.
<% h.radio_button('submission.submission_type_id', st.id, checked=czeched) %>

<label for="submission.submission_type_id"><% st.name |h %></label>
<br />
% #endfor

</p>

<p><label for="submission.abstract">Abstract:</label><br />
<% h.text_area('submission.abstract', c.submission.abstract, size="80x10") %></p>

<p><label for="submission.experience">Experience:</label><br />
<% h.text_area('submission.experience', c.submission.experience, size="80x5") %></p>

<p><label for="submission.url">URL:</label><br />
<% h.text_field('submission.url', c.submission.url, size=80) %></p>
