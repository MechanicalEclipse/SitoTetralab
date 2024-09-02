<div class="relative isolate px-6 pt-4 lg:px-8">
    <div class="absolute inset-x-0 -top-40 -z-10 transform-gpu overflow-hidden blur-3xl sm:-top-80" aria-hidden="true">
      <div class="relative left-[calc(50%-11rem)] aspect-[1155/678] w-[36.125rem] -translate-x-1/2 rotate-[30deg] bg-gradient-to-tr from-jaffa to-curious-blue opacity-50 sm:left-[calc(50%-30rem)] sm:w-[72.1875rem]" style="clip-path: polygon(74.1% 44.1%, 100% 61.6%, 97.5% 26.9%, 85.5% 0.1%, 80.7% 2%, 72.5% 32.5%, 60.2% 62.4%, 52.4% 68.1%, 47.5% 58.3%, 45.2% 34.5%, 27.5% 76.7%, 0.1% 64.9%, 17.9% 100%, 27.6% 76.8%, 76.1% 97.7%, 74.1% 44.1%)"></div>
    </div>
    
    <div class="mx-auto pt-44 max-w-5xl mb-8 lg:mb-14 text-center">
        <h2 class="text-3xl lg:text-4xl text-gray-800 font-bold">
            La nostra storia
        </h2>
        <p class="mt-3 text-gray-800">
            Con oltre 20 anni di solida esperienza maturata e grazie ai valori posseduti, Tetralab si distingue per essere diventata una realtà d’eccellenza, oltre che un riferimento affidabile riconosciuto da molte aziende. Offriamo infatti un servizio completo, accurato e attento alle esigenze delle imprese, consentendo una netta ed evidente riduzione degli impegni che devono affrontare per ottemperare ai vari adempimenti.
        </p>
    </div>

    <div class="grid grid-cols-1 content-center pb-16 pt-16 mx-auto  max-w-5xl mb-8 lg:mb-14 text-center">
        <div class="place-self-center margin-auto space-y-8 relative before:absolute before:inset-0 before:ml-5 before:-translate-x-px md:before:mx-auto md:before:translate-x-0 before:h-full before:w-0.5 before:bg-gradient-to-b before:from-transparent before:via-slate-300 before:to-transparent">
            @foreach ($history as $date)

                <!-- Item -->
                <div class="relative flex items-center justify-between md:justify-normal md:odd:flex-row-reverse group is-active">
                    <!-- Icon -->
                    <div class="flex items-center justify-center w-10 h-10 rounded-full border border-white bg-jaffa group-[.is-active]:even:bg-jaffa  text-slate-500 group-[.is-active]:text-emerald-50 shadow shrink-0 md:order-1 md:group-odd:-translate-x-1/2 md:group-even:translate-x-1/2 transition ease-in duration-200 group-hover:scale-[1.03] group-hover:bg-curious-blue">
                        @if (!$loop->last)
                            <i class="fa-solid fa-flag"></i>
                        @else
                            <i class="fa-solid fa-arrow-down"></i>
                        @endif
                        
                    </div>
                    <!-- Card -->
                    <div class="w-[calc(100%-4rem)] md:w-[calc(50%-2.5rem)] bg-white p-4 rounded-3xl border transition ease-in duration-200 group-hover:scale-[1.03] border-slate-200 shadow">
                        <div class="flex items-center justify-start space-x-2 mb-1 ">
                            <time class="font-caveat font-medium text-curious-blue">{{$date->date}}</time>
                        </div>
                        <div class="text-slate-500">{{$date->description}}</div>
                    </div>
                </div>

            @endforeach
            
        
        </div>
    </div>

    <div class="absolute inset-x-0 top-[calc(100%-13rem)] -z-10 transform-gpu overflow-hidden blur-3xl sm:top-[calc(100%-30rem)]" aria-hidden="true">
        <div class="relative left-[calc(50%+3rem)] aspect-[1155/678] w-[36.125rem] -translate-x-1/2 bg-gradient-to-tr from-jaffa to-curious-blue opacity-30 sm:left-[calc(50%+36rem)] sm:w-[72.1875rem]" style="clip-path: polygon(74.1% 44.1%, 100% 61.6%, 97.5% 26.9%, 85.5% 0.1%, 80.7% 2%, 72.5% 32.5%, 60.2% 62.4%, 52.4% 68.1%, 47.5% 58.3%, 45.2% 34.5%, 27.5% 76.7%, 0.1% 64.9%, 17.9% 100%, 27.6% 76.8%, 76.1% 97.7%, 74.1% 44.1%)"></div>
    </div>
</div>