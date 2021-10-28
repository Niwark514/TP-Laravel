<?php

namespace App\Http\Controllers;

use App\Models\FileShare;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\File;
use Illuminate\Support\Facades\Storage;

class FileShareController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //$files = FileShare::all();
        //return view('fileShare.index', ['files' =>$files]);

        $lg = session()->get('locale');
        if(Auth::check()){
            $files = FileShare::selectFiles($lg);
            return  view('fileShare.index', ['files' => $files]);
        }

        return redirect('login')->with('success', 'message');
    }

    public function download(Request $request){

        $path = Storage::path($request->path);

        return response()->download($path);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('fileShare.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|max:255',
            'title_fr' => 'max:255',
            'url' => 'required|mimes:pdf|mimes:zip|mimes:doc',

        ]);

        $newFile = new FileShare;
        $newFile->fill($request->all());
        $newFile->url = Storage::putFile('public', $request->file('url'));
        $newFile->save();

        return redirect('/fileShare');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\FileShare  $file
     * @return \Illuminate\Http\Response
     */
    public function show(FileShare $file)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\FileShare  $file
     * @return \Illuminate\Http\Response
     */
    public function edit(FileShare $file)
    {


        return view('fileShare.edit', ['file'=> $file]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\FileShare  $file
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, FileShare $fileToEdit)
    {
        $request->validate([
            'title' => 'required|max:255',
            'title_fr' => 'max:255',
            'file' => 'required|mimes:pdf,zip,doc',

        ]);

        $fileToEdit->fill($request->all());
        $fileToEdit->url = Storage::putFile('public', $request->file('url'));
        $fileToEdit->save();


        $fileToEdit->update([
            'title' => $request->title,
            'title_fr' => $request->title_fr,
            'url' => $request->url,
        ]);

        return redirect('/fileShare');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\FileShare  $file
     * @return \Illuminate\Http\Response
     */
    public function destroy(FileShare $file)
    {
        $file->delete();

        return redirect('/fileShare');
    }
}
