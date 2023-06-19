<h1>Ciao Jorge!</h1>
<p>
    Hai ricevuto un nuovo messaggio, guarda i dettagli:<br>
    Nome: {{ $lead->name }}<br>
    Email: {{ $lead->address }}<br>
    Messaggio:<br>
    {{ $lead->body }}
</p>
