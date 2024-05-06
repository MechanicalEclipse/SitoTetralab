<div>
    <div class="grid grid-cols-{{(count($subservices) % 2) == 0 ? 2:3}} gap-4 sm:gap-6 md:gap-8 lg:gap-12 justify-items-center">
        @foreach ($subservices as $subservice)
            {{-- <button type="button" class="flex flex-col group bg-white border shadow-sm rounded-xl overflow-hidden hover:shadow-lg transition border border-transparent disabled:opacity-50 disabled:pointer-events-none" data-hs-overlay="#hs-vertically-centered-modal">
                
                <div class="relative bg-white border shadow-sm rounded-xl ">
                    <img class="w-96 h-auto group-hover:scale-105 transition-transform duration-500 ease-in-out rounded-xl" src="https://images.unsplash.com/photo-1680868543815-b8666dba60f7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2532&q=80" alt="Image Description">
                    <div class="absolute top-0 start-0 end-0">
                    <div class="p-4 md:p-5">
                        <h3 class="text-lg font-bold text-gray-800">
                            {{$subservice->title}}
                        </h3>
                    </div>
                    </div>
                </div>

            </button>
            
            <div id="hs-vertically-centered-modal" class="hs-overlay hidden size-full fixed top-0 start-0 z-[80] overflow-x-hidden overflow-y-auto pointer-events-none">
                <div class="hs-overlay-open:mt-7 hs-overlay-open:opacity-100 hs-overlay-open:duration-500 mt-0 opacity-0 ease-out transition-all sm:max-w-lg sm:w-full m-3 sm:mx-auto min-h-[calc(100%-3.5rem)] lg:max-w-4xl lg:w-full m-3 lg:mx-auto flex items-center">
                <div class="w-full flex flex-col bg-white border shadow-sm rounded-xl pointer-events-auto ">
                    <div class="flex justify-between items-center py-3 px-4 border-b ">
                        <h3 class="font-bold text-gray-800 ">
                            {{$subservice->title}}
                        </h3>
                        <button type="button" class="flex justify-center items-center size-7 text-sm font-semibold rounded-full border border-transparent text-gray-800 hover:bg-gray-100 disabled:opacity-50 disabled:pointer-events-none" data-hs-overlay="#hs-vertically-centered-modal">
                            <i class="fa-solid fa-xmark"></i>
                        </button>
                    </div>
                    <div class="py-4 px-10 overflow-y-auto">
                        <p class="text-gray-800 ">
                            {{$subservice->description}}
                        </p>
                    </div>
                </div>
                </div>
            </div> --}}

            <!-- Popover -->
            <div class="hs-tooltip inline-block [--trigger:click]">
                <div class="hs-tooltip-toggle block text-center">
                    <button type="button" class="flex flex-col group bg-white shadow-sm rounded-xl overflow-hidden hover:shadow-lg transition border border-transparent disabled:opacity-50 disabled:pointer-events-none">
                        <div class="relative bg-white border shadow-sm rounded-xl">
                            <div class="group-hover:scale-105 transition-transform duration-500 ease-in-out">
                                <div class="absolute inset-0 bg-gradient-to-b from-gray-900 via-gray-900/40"></div>
                                <img class="w-96 h-auto rounded-xl" src="https://images.unsplash.com/photo-1680868543815-b8666dba60f7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2532&q=80" alt="Image Description">    
                            </div>
                            <div class="absolute top-0 start-0 end-0">
                                <div class="p-4 md:p-5">
                                    <h3 class="text-lg text-white font-bold text-gray-800">
                                        {{$subservice->title}}
                                    </h3>
                                </div>
                            </div>
                        </div>
                    </button>
                    <div class="w-96 hs-tooltip-content hs-tooltip-shown:opacity-100 hs-tooltip-shown:visible hidden opacity-0 transition-opacity absolute invisible z-10 max-w-xl bg-white border border-gray-100 text-start rounded-lg shadow-md" role="tooltip">
                        <span class="pt-3 px-4 block text-lg font-bold text-gray-800">{{$subservice->title}}</span>
                        <div class="py-3 px-4 text-sm text-gray-600">
                        
                        <p>{{$subservice->description}}</p>
                        <dl class="mt-3">
                            <dt class="font-bold pt-3 first:pt-0">Assigned to:</dt>
                            <dd class="text-gray-600">Mark Welson</dd>
                        </dl>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Popover -->
        @endforeach
    </div>
</div>

