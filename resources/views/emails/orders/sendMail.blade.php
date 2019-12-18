@component('mail::message')
<strong>title: </strong> {{ $data['title']}}
<p>
    {{ $data['body']}}
</p>
@endcomponent
