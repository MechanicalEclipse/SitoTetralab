{{-- Far si che la scritta si illumina invece che sottolinearsi su hover --}}
<div>
    <!-- Card -->
    <a class="group block" href="{{route('service-route', [$type->slug ,$service->slug])}}">
        <div class="aspect-w-16 aspect-h-12 overflow-hidden bg-gray-100 rounded-2xl">
        <img class="group-hover:scale-105 transition-transform duration-500 ease-in-out object-cover rounded-2xl" src="https://images.unsplash.com/photo-1575052814086-f385e2e2ad1b?q=80&w=3540&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Image Description">
        </div>
    
        <div class="pt-4">
        <h3 class="relative inline-block font-medium text-lg text-black before:absolute before:bottom-0.5 before:start-0 before:-z-[1] before:w-full before:h-1 before:bg-jaffa before:transition before:origin-left before:scale-x-0 group-hover:before:scale-x-100">
            {{$service->title}}
        </h3>
        <p class="mt-1 text-gray-600 truncate">
            {{$service->description}}
        </p>
    
        </div>
    </a>
    <!-- End Card -->
</div>

