<!-- ========== FOOTER ========== -->
<footer class="mt-auto bg-gray-900 w-full">
    <div class="mt-auto w-full max-w-[85rem] py-10 px-4 sm:px-6 lg:px-8 lg:pt-20 mx-auto">
      <!-- Grid -->
      <div class="grid grid-cols-2 md:grid-cols-4 lg:grid-cols-5 gap-6">
        <div class="col-span-full lg:col-span-1">
          <a class="flex-none text-xl font-semibold text-white" href="#" aria-label="Brand">Tetralab S.R.L.</a>
        </div>
        <!-- End Col -->
  
        <div class="col-span-1">
          <h4 class="font-semibold text-gray-100">Servizi</h4>
  
          <div class="mt-3 grid space-y-3">
            @foreach ($types as $service)
              <p><a class="inline-flex gap-x-2 text-gray-400 hover:text-gray-200" href="{{route("service-type-route", $service->slug)}}">{{$service->title}}</a></p>
            @endforeach
          </div>
        </div>
        <!-- End Col -->
  
        <div class="col-span-1">
          <h4 class="font-semibold text-gray-100">Azienda</h4>
  
          <div class="mt-3 grid space-y-3">
            <p><a class="inline-flex gap-x-2 text-gray-400 hover:text-gray-200" href="{{route("storia")}}">Storia</a></p>
            <p><a class="inline-flex gap-x-2 text-gray-400 hover:text-gray-200" href="{{route("certificazioni")}}">Certificazioni</a></p>
            <p><a class="inline-flex gap-x-2 text-gray-400 hover:text-gray-200" href="{{route("team")}}">Team</a> <span class="inline ms-1 text-xs bg-blue-700 text-white py-1 px-2 rounded-lg">Posizioni aperte!</span></p>
            
          </div>
        </div>
        <!-- End Col -->
  
        <div class="col-span-2">

          {{-- <form>
            <div class="mt-4 flex flex-col items-center gap-2 sm:flex-row sm:gap-3 bg-white rounded-lg p-2">
              <div class="w-full">
                <label for="hero-input" class="sr-only">Search</label>
                <input type="text" id="hero-input" name="hero-input" class="py-3 px-4 block w-full border-transparent rounded-lg text-sm focus:border-blue-500 focus:ring-blue-500 disabled:opacity-50 disabled:pointer-events-none" placeholder="Enter your email">
              </div>
              <a class="w-full sm:w-auto whitespace-nowrap p-3 inline-flex justify-center items-center gap-x-2 text-sm font-semibold rounded-lg border border-transparent bg-blue-600 text-white hover:bg-blue-700 disabled:opacity-50 disabled:pointer-events-none" href="#">
                Subscribe
              </a>
            </div>
            <p class="mt-3 text-sm text-gray-400">
              New UI kits or big discounts. Never spam.
            </p>
          </form> --}}
          <a href="#_" class="relative inline-flex items-center justify-start py-3 pl-4 pr-12 overflow-hidden font-semibold text-white border-2 transition-all duration-150 ease-in-out rounded-xl hover:pl-10 hover:pr-6 group">
            <span class="absolute left-0 pl-2.5 -translate-x-12 group-hover:translate-x-0 ease-out duration-200">
              <i class="fa-solid fa-paper-plane rotate-45"></i>
            </span>
            <span class="absolute right-0 pr-4 duration-200 ease-out group-hover:translate-x-12  ">
              <i class="fa-solid fa-paper-plane rotate-45"></i>
            </span>
            <span class="relative w-full text-left transition-colors duration-200 ease-in-out">Contattaci</span>
          </a>

        </div>
        <!-- End Col -->
      </div>
      <!-- End Grid -->
  
      <div class="mt-5 sm:mt-12 grid gap-y-2 sm:gap-y-0 sm:flex sm:justify-between sm:items-center">
        <div class="flex justify-between items-center">
          <p class="text-sm text-gray-400">© 2024 Tetralab S.R.L. . Tutti i diritti riservati.</p>
        </div>
        <!-- End Col -->
  
        <!-- Social Brands -->
        <div>
          <a class="size-10 inline-flex justify-center items-center gap-x-2 text-sm font-semibold rounded-lg border border-transparent text-white hover:bg-white/10 disabled:opacity-50 disabled:pointer-events-none focus:outline-none focus:ring-1 focus:ring-gray-600" href="#">
            <i class="fa-brands fa-square-facebook"></i>
          </a>
          <a class="size-10 inline-flex justify-center items-center gap-x-2 text-sm font-semibold rounded-lg border border-transparent text-white hover:bg-white/10 disabled:opacity-50 disabled:pointer-events-none focus:outline-none focus:ring-1 focus:ring-gray-600" href="#">
            <i class="fa-brands fa-instagram"></i>
          </a>
          <a class="size-10 inline-flex justify-center items-center gap-x-2 text-sm font-semibold rounded-lg border border-transparent text-white hover:bg-white/10 disabled:opacity-50 disabled:pointer-events-none focus:outline-none focus:ring-1 focus:ring-gray-600" href="#">
            <i class="fa-brands fa-linkedin"></i>
          </a>
          <a class="size-10 inline-flex justify-center items-center gap-x-2 text-sm font-semibold rounded-lg border border-transparent text-white hover:bg-white/10 disabled:opacity-50 disabled:pointer-events-none focus:outline-none focus:ring-1 focus:ring-gray-600" href="#">
            <i class="fa-solid fa-envelope"></i>
          </a>
        </div>
        <!-- End Social Brands -->
      </div>
    </div>
  </footer>
  <!-- ========== END FOOTER ========== -->