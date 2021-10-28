<?php

namespace App\Http\Controllers;

use App\Models\Localization;
use Illuminate\Http\Request;
use App;
use Illuminate\Http\RedirectResponse;

class LocalizationController extends Controller
{

    /**
     * @param $locale
     * @return RedirectResponse
     */
    public function index($locale)
    {
        App::setLocale($locale);
        session()->put('locale', $locale);
        return redirect()->back();
    }



    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Localization  $localization
     * @return \Illuminate\Http\Response
     */
    public function show(Localization $localization)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Localization  $localization
     * @return \Illuminate\Http\Response
     */
    public function edit(Localization $localization)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Localization  $localization
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Localization $localization)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Localization  $localization
     * @return \Illuminate\Http\Response
     */
    public function destroy(Localization $localization)
    {
        //
    }
}
