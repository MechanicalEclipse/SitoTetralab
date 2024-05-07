<div>
    @livewire('services.type.header', ['type' => $type])
    <div class="max-w-screen-2xl px-4 xl:px-0  lg:pt-20 lg:pb-20 mx-auto">
        <div class="pb-12 grid lg:grid-cols-{{(count($services) % 2) == 0 ? 2:3}} md:grid-cols-3 grid-cols-1 gap-4 sm:gap-6 md:gap-8 lg:gap-12">
            @foreach ($services as $service)
                @livewire('services.type.body', ['service' => $service, 'type' => $type])
            @endforeach
        </div>
    </div>
</div>
