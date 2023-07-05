<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Project;



class ProjectController extends Controller
{
    public function index()
    {
        $projects = Project::latest()->with('types')->paginate(5);
        if (!$projects) {
            return response()->json([
                'success' => false,
                'results' => 'Projects not founded'
            ]);
        } else {
            return response()->json(
                [
                    'success' => true,
                    'results' => $projects
                ]
            );
        }
    }

    public function show($slug)
    {
        $project = Project::where('slug', $slug)->with(['types', 'tecnology'])->first();

        if(!$project) {
            return response()->json([
                'success' => false,
                'results' => 'Project not found'
            ]);
        }else {
            return response()->json([
                'success' => true,
                'results' => $project
            ]);
        }

    }

    public function showcase() {
        $projects = Project::where('featured', '1')->get();

        if (!$projects) {
            return response()->json([
                'success' => false,
                'results' => 'Nothing in showcase'
            ]);
    }
    else {
        return response()->json([
            'success' => 'true',
            'results' => $projects
        ]);
    }
    }

}
