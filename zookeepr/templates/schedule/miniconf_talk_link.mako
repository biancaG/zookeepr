<%page args="time, miniconf, title, speaker" />

<p class="talk_title">
    <strong>${ time }</strong>
    <a href="/wiki/index.php?n=${ miniconf }.${ h.wiki_link(title) }">${ title }</a>
% if speaker is not "":
     <i>by</i> <span class="by_speaker">${ speaker |n }</span>
% endif
</p>
