<?php

namespace App\Http\Controllers;

use App\Models\ForumPost;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ForumPostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //$posts = ForumPost::all();
        $lg = session()->get('locale');
        if(Auth::check()){
        $posts = ForumPost::selectArticles($lg);
            return  view('forum.index', ['posts' => $posts]);
        }

        return redirect('login')->with('success', 'message');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('forum.create');
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
            'body' => 'required',
        ]);


        $post = ForumPost::create($request->all());
        return view('forum.show', ['post' => $post,
                                        'message' => 'Article ajouté avec succès']);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\ForumPost  $post
     * @return \Illuminate\Http\Response
     */
    public function show(ForumPost $post)
    {
        return view('forum.show', ['post' => $post]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\ForumPost  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(ForumPost $post)
    {
        return view('forum.edit', ['post'=> $post]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\ForumPost  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ForumPost $post)
    {
        $post->update([
            'title' => $request->title,
            'body' => $request->body,
        ]);

        return redirect('forum/' . $post->id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\ForumPost  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(ForumPost $post)
    {
        $post->delete();

        return redirect('/forum');
    }
}
