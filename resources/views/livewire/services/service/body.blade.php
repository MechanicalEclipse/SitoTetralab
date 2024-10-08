<div>

    <button type="button" class="group w-full" data-hs-overlay="#hs-vertically-centered-modal-{{$index}}" aria-haspopup="dialog" aria-expanded="false" aria-controls="#hs-vertically-centered-modal-{{$index}}">
        
        <div class="overflow-hidden border rounded-3xl transition ease-in duration-200 group-hover:scale-[1.03]">
            <img src="{{asset($subservice->image)}}" alt="#_" class="object-cover w-full h-80 mx-auto rounded-2xl ">
        </div>
        <div class="mt-4 transition ease-in duration-200 group-hover:scale-[1.03]">
            <p class="relative font-medium mx-auto px-2 w-fit text-gray-900 before:absolute before:bottom-0 before:start-0 before:-z-[1] before:w-full before:h-6 before:bg-curious-blue group-hover:text-white before:transition before:origin-left before:scale-x-0 group-hover:before:scale-x-100">{{$subservice->title}}</p>
        </div>

    </button>
        
    <div id="hs-vertically-centered-modal-{{$index}}" aria-hidden="true" class="hs-overlay hidden size-full fixed top-0 start-0 z-[80] overflow-x-hidden overflow-y-auto pointer-events-none" role="dialog" tabindex="-1" aria-labelledby="hs-vertically-centered-modal-{{$index}}">
        <div class="hs-overlay-open:mt-7 hs-overlay-open:opacity-100 hs-overlay-open:duration-500 mt-0 opacity-0 ease-out transition-all sm:max-w-lg sm:w-full m-3 sm:mx-auto min-h-[calc(100%-3.5rem)] lg:max-w-4xl lg:w-full m-3 lg:mx-auto flex items-center ">
            <div class="w-full flex flex-col bg-white border shadow-sm rounded-xl pointer-events-auto">
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
    </div>

    {{-- <div id="hs-vertically-centered-modal-{{$index}}" class="hs-overlay hidden size-full fixed top-0 start-0 z-[80] overflow-x-hidden overflow-y-auto" role="dialog" tabindex="-1" aria-labelledby="hs-vertically-centered-modal-{{$index}}-label">
        <div class="hs-overlay-open:mt-7 hs-overlay-open:opacity-100 hs-overlay-open:duration-500 mt-0 opacity-0 ease-out transition-all sm:max-w-lg sm:w-full m-3 sm:mx-auto">
          <div class="bg-white border border-gray-200 rounded-xl shadow-sm pointer-events-auto">
            <div class="p-4 sm:p-7">
              <div class="text-center">
                <h3 id="hs-vertically-centered-modal-{{$index}}-label" class="block text-xl sm:text-2xl font-semibold text-gray-800">Advanced features</h3>
                <div class="max-w-sm mx-auto">
                  <p class="mt-2 text-sm text-gray-600">
                    {{$subservice->title}}
                  </p>
                </div>
              </div>
      
              <div class="mt-8 sm:mt-10 divide-y divide-gray-200">
                {{$subservice->description}}
            </div>
          </div>
        </div>
      </div> --}}


</div>



