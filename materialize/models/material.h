#ifndef MATERIAL_H
#define MATERIAL_H
#include <string>

// a material data structure containing multiple properties like map image locations
class Material
{
public:
    Material();

    /// Initialize the material with a base path
    Material(string path);

    /// Set up all maps. An empty string indicates the map is not present.
    void SetMaps(string diffuse, string normal, string reflection, string height, string roughness, string transparancy, string emission);

    // the path (parsed from the master YML file) of the desired material.  This is used to calculate map paths.
    string path;

    // a struct containing the path of each image relative to the base material definition
    struct map {
        string diffuse;
        string normal;
        string reflection;
        string height;
        string roughness;
        string transparancy;
        string emission;
    };
};

#endif // MATERIAL_H
