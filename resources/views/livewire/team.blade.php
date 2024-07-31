<div>
  <div class="relative isolate px-6 pt-44 lg:px-8">
    <div class="absolute inset-x-0 -top-40 -z-10 transform-gpu overflow-hidden blur-3xl sm:-top-80" aria-hidden="true">
      <div class="relative left-[calc(50%-11rem)] aspect-[1155/678] w-[36.125rem] -translate-x-1/2 rotate-[30deg] bg-gradient-to-tr from-jaffa to-curious-blue opacity-50 sm:left-[calc(50%-30rem)] sm:w-[72.1875rem]" style="clip-path: polygon(74.1% 44.1%, 100% 61.6%, 97.5% 26.9%, 85.5% 0.1%, 80.7% 2%, 72.5% 32.5%, 60.2% 62.4%, 52.4% 68.1%, 47.5% 58.3%, 45.2% 34.5%, 27.5% 76.7%, 0.1% 64.9%, 17.9% 100%, 27.6% 76.8%, 76.1% 97.7%, 74.1% 44.1%)"></div>
    </div>


   <!-- Team -->
   <div class="max-w-[85rem] px-4 py-10 sm:px-6 lg:px-8 lg:py-14 mx-auto">
    <!-- Title -->
    <div class="max-w-2xl mx-auto text-center mb-10 lg:mb-14">
      <h2 class="text-2xl font-bold md:text-4xl md:leading-tight">Il nostro Team</h2>
    </div>
    <!-- End Title -->

    <!-- Grid -->
    <div class="grid grid-cols-1 md:grid-cols-3 gap-8 md:gap-12">
          
          @foreach ($team as $member)
              <div class="text-center group">
                <img class="rounded-xl bg-curious-blue w-full object-cover sm:size-48 lg:size-60 mx-auto border transition ease-in duration-200 group-hover:scale-[1.03] group-hover:shadow-lg" src="{{asset($member->image)}}" alt="Image Description">
                <div class="relative w-fit mt-2 px-2 mx-auto sm:mt-4 transition ease-in duration-200 group-hover:scale-[1.03] before:absolute before:bottom-0 before:start-0 before:-z-[1] before:w-full before:h-12 before:bg-curious-blue group-hover:text-white before:transition before:origin-left before:scale-x-0 group-hover:before:scale-x-100">
                  <h3 class="text-sm font-medium text-gray-900 sm:text-base lg:text-lg group-hover:text-white">
                    {{$member->name}}
                  </h3>
                  <p class="text-xs text-gray-600 sm:text-sm lg:text-base group-hover:text-white">
                    {{$member->role}}
                  </p>
                </div>
              </div>
          @endforeach
    
        </div>
        <!-- End Grid -->
    </div>
    <!-- End Team -->
    <div class="absolute inset-x-0 top-[calc(100%-13rem)] -z-10 transform-gpu overflow-hidden blur-3xl sm:top-[calc(100%-30rem)]" aria-hidden="true">
      <div class="relative left-[calc(50%+3rem)] aspect-[1155/678] w-[36.125rem] -translate-x-1/2 bg-gradient-to-tr from-jaffa to-curious-blue opacity-30 sm:left-[calc(50%+36rem)] sm:w-[72.1875rem]" style="clip-path: polygon(74.1% 44.1%, 100% 61.6%, 97.5% 26.9%, 85.5% 0.1%, 80.7% 2%, 72.5% 32.5%, 60.2% 62.4%, 52.4% 68.1%, 47.5% 58.3%, 45.2% 34.5%, 27.5% 76.7%, 0.1% 64.9%, 17.9% 100%, 27.6% 76.8%, 76.1% 97.7%, 74.1% 44.1%)"></div>
    </div>
  </div>
</div>

    