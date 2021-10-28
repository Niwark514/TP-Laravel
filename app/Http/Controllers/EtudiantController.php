<?php

namespace App\Http\Controllers;

use App\Models\Etudiant;
use Illuminate\Http\Request;
use App\Models\Ville;



class EtudiantController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $etudiants = Etudiant::all();
        return view('etudiants.index', ['etudiants' =>$etudiants]);
    }

    public function accueil()
    {
        return view('welcome');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $villes= Ville::select('id', 'name')->get();

        return view('etudiants.create', ['villes' => $villes]);
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

            'name' => 'required',
            'adress' => 'required',
            'email' => 'required|email|unique:users',
            'phone' => 'required',
            'birth_date' => 'required',
            'ville_id' => 'required',
        ]);


       $etudiant = Etudiant::create($request->all());
        return view('etudiants.show', ['etudiant' => $etudiant,
                                            'message' => 'Étudiant ajouté avec succès']);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function show(Etudiant $etudiant)
    {
        return view('etudiants.show', ['etudiant' => $etudiant]);
    }




    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function edit(Etudiant $etudiant)
    {
        $villes= Ville::select('id', 'name')->get();
        return view('etudiants.edit', ['villes' => $villes,
                                            'etudiant' => $etudiant]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Etudiant $etudiant)
    {
        $request->validate([

            'name' => 'required',
            'adress' => 'required',
            'email' => 'required|email',
            'phone' => 'required',
            'birth_date' => 'required',
            'ville_id' => 'required',
        ]);

        $etudiant->update($request->all());
        return view('etudiants.show', ['etudiant' => $etudiant,
            'message' => 'Étudiant modifié avec succès']);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function destroy(Etudiant $etudiant)
    {
        $etudiant->delete();

        $etudiants = Etudiant::all();
        return view('etudiants.index', ['etudiants' =>$etudiants]);
    }
}
