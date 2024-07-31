<div>
    @php
        $newsubservice = $subservice;
    @endphp
    <button type="button" class="group w-full" data-hs-overlay="#hs-vertically-centered-modal">
        
        <div class="overflow-hidden border rounded-3xl transition ease-in duration-200 group-hover:scale-[1.03]">
            <img src="{{asset($newsubservice->image)}}" alt="#_" class="object-cover w-full h-80 mx-auto rounded-2xl ">
        </div>
        <div class="mt-4 transition ease-in duration-200 group-hover:scale-[1.03]">
            <p class="relative font-medium mx-auto px-2 w-fit text-gray-900 before:absolute before:bottom-0 before:start-0 before:-z-[1] before:w-full before:h-6 before:bg-curious-blue group-hover:text-white before:transition before:origin-left before:scale-x-0 group-hover:before:scale-x-100">{{$newsubservice->title}}</p>
        </div>

    </button>
        
    <div id="hs-vertically-centered-modal" class="hs-overlay hidden size-full fixed top-0 start-0 z-[80] overflow-x-hidden overflow-y-auto pointer-events-none">
        <div class="hs-overlay-open:mt-7 hs-overlay-open:opacity-100 hs-overlay-open:duration-500 mt-0 opacity-0 ease-out transition-all sm:max-w-lg sm:w-full m-3 sm:mx-auto min-h-[calc(100%-3.5rem)] lg:max-w-4xl lg:w-full m-3 lg:mx-auto flex items-center">
            <div class="w-full flex flex-col bg-white border shadow-sm rounded-xl pointer-events-auto ">
                <div class="flex justify-between items-center py-3 px-4 border-b ">
                    <h3 class="font-bold text-gray-800 ">
                        {{$newsubservice}}
                        {{$newsubservice->title}}
                    </h3>
                    <button type="button" class="flex justify-center items-center size-7 text-sm font-semibold rounded-full border border-transparent text-gray-800 hover:bg-gray-100 disabled:opacity-50 disabled:pointer-events-none" data-hs-overlay="#hs-vertically-centered-modal">
                        <i class="fa-solid fa-xmark"></i>
                    </button>
                </div>
                <div class="py-4 px-10 overflow-y-auto">
                    <p class="text-gray-800 ">
                        {{$newsubservice->description}}
                    </p>
                </div>
            </div>
        </div>
    </div>

</div>



