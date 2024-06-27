{{-- Far si che la scritta si illumina invece che sottolinearsi su hover --}}
<div>
    <!-- Card -->
    <a class="group" href="{{route('service-route', [$type->slug ,$service->slug])}}">
        <div class="overflow-hidden border rounded-3xl transition ease-in duration-200 group-hover:scale-[1.03]">
            <img src="{{$type->image}}" alt="#_" class="object-cover w-full h-80 mx-auto rounded-2xl ">
        </div>
        <div class="mt-4 transition ease-in duration-200 group-hover:scale-[1.03]">
            <p class="relative font-medium mx-auto px-2 w-fit text-gray-900 before:absolute before:bottom-0 before:start-0 before:-z-[1] before:w-full before:h-6 before:bg-curious-blue group-hover:text-white before:transition before:origin-left before:scale-x-0 group-hover:before:scale-x-100">{{$service->title}}</p>
            <p class="mt-2 text-sm text-gray-500 line-clamp-6">
                {{$service->description}}
            </p>
        </div>
    </a>
    <!-- End Card -->
</div>
